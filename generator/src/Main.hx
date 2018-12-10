package;

import haxe.Unserializer;
import haxe.Serializer;
import haxe.xml.Fast;
import sys.FileSystem;
import sys.io.File;
import haxe.xml.Parser;
import haxe.macro.Printer;
import haxe.macro.Expr;

enum Error {
	ClassNotCached;
}

class Main {
	static final nullPos: Position = cast { min: 0, max: 0, file: "" };
	static final printer: Printer = new Printer();
	static final capitalize: String -> String = (text: String) -> {
		return text.charAt(0).toUpperCase() + text.substring(1);
	}
	static final outputDir = "haxe";
	static final cacheDir = ".cache";

	static var unhandledDescTypes:Array<String> = [];

	static function main() {
		// Clear cache
		deleteDirectoryRecursive(cacheDir);
		// Clear output dir
		deleteDirectoryRecursive(outputDir);
		// Create cache dir
		FileSystem.createDirectory(cacheDir);
		// Grab file paths.
		var filePaths = FileSystem.readDirectory('xml');
		// Sort paths alphabetically
		filePaths.sort((a, b) -> {
			if (a < b) {
				return -1;
			} else if (a > b) {
				return 1;
			} else {
				return 0;
			}
		});

		// Parse all classes
		for (fileName in filePaths) {
			parseFile('xml/$fileName');
		};

		trace('Unhandled desc types: $unhandledDescTypes');
	}

	//
	// PARSER FUNCTIONS
	//

	static function parseFile(fileName:String) {
			// Get file data and parse.
			var file = File.getContent(fileName);
			var xml = new Fast(Parser.parse(file));

		// Parse section
		var section = xml.node.document.node.section;

		for (desc in section.nodes.desc) {
			switch(desc.att.desctype) {
			case "class":
				parseClass(desc, section, fileName);
			default:
				trace('unhandled desc type for file $fileName: ${desc.att.desctype}');
				unhandledDescTypes.push(desc.att.desctype);
			}
		}
	}

	/**
	 * Load a parsed `TypeDefinition` for a class. This will parse the XML
	 * doc for the class if necessary and will cache the class for future
	 * reference. If the class has already been parsed it will be loaded from
	 * cache.
	 * @param classPath The full name of the class including its package
	 * @param isRecursion Used by function internally. Don't set.
	 */
	static function loadClass(classPath:String, isRecursion = false):TypeDefinition {
		var def = null;
		try {
			// trace('Attempting to load $classPath from cache');
			def = loadClassDefFromCache(classPath);
		} catch (e:Error) {
			if (e != Error.ClassNotCached) { throw e; }

			// Couldn't load class at all :(
			if (isRecursion) { return null; }

			// Parse file, then load class
			// trace('Can\'t load $classPath from cache parsing file');
			parseFile('xml/$classPath.xml');
			def = loadClass(classPath, true);
		}

		return def;
	}

	/**
	 * Parse files that have been postponed because of un-parsed
	 * dependencies.
	 */
	// static function parsePostponedFiles() {
	// 	var fileNames = postponedFiles.copy();
	// 	postponedFiles = [];

	// 	for (fileName in fileNames) {
	// 		// Get file data and parse.
	// 		var file = File.getContent('xml/${fileName}');
	// 		var xml = new Fast(Parser.parse(file));

	// 		// Parse section
	// 		var parentSection = xml.node.document.node.section;
	// 		parseSection(parentSection, fileName);
	// 	}
	// }

	/**
	 * Parse a class description
	 * 
	 * @param desc The XML class description
	 * @param section The Section that the desc is in in the XML doc
	 */
	static function parseClass(desc:Fast, section:Fast, fileName:String) {
		var desc_signature = desc.node.desc_signature;
		var pack = desc_signature.att.module;
		var name = desc_signature.att.fullname;
		var fileDir = pack.split(".").join("/");
		var filePath = fileDir + "/" + name + ".hx";
		trace(filePath);
		
		// Create class definition
		var moduleClass:TypeDefinition = {
			pack: [pack],
			name: name,
			doc: createDocString(desc.node.desc_content.nodes.paragraph),
			pos: cast {min:0, max:0, file: filePath},
			meta: [
				{
					name: ":pythonImport",
					params: [
						cast {
							expr: EConst(CString(desc_signature.att.ids)),
							pos: nullPos
						}
					],
					pos: nullPos
				}
			],
			params: null,
			isExtern: true,
			kind: TDClass(null, null, false),
			fields: [],
		}

		var currentClassDef:TypeDefinition = null;
		var currentClassPath:String = "";

		// Check for inherited properties/functions
		for (i in 0...section.nodes.rubric.length) {
			var rubric = section.nodes.rubric[i];
			if (rubric.innerData == "Inherited Properties" ||
					rubric.innerData == "Inherited Functions") {
				var refs:Array<String> = collectRefsFromHlist(section.nodes.hlist[i]);
				for (ref in refs) {
					var refSplit = ref.split(".");
					var fieldName = refSplit.pop();
					var classPath = refSplit.join(".");

					// If it is a different reference than last time
					if (currentClassPath != ref) {
						// Load class
						// trace('loading class $classPath');
						var classDef = loadClass(classPath);
						// If there was a failure to load the class
						if (classDef == null) { continue; }

						currentClassDef = classDef;
						currentClassPath = ref;
					}

					// Search class fields for the one we inherit
					for (field in currentClassDef.fields) {
						if (field.name == fieldName) {
							// Add inherited field to class
							// trace('adding inherited field: $fieldName');
							moduleClass.fields.push(field);
						}
					}
				}
			}
		}

		// Parse class members
		for (field in desc.node.desc_content.nodes.desc) {
			switch(field.att.desctype) {
			case "attribute":
				moduleClass.fields.push(parseClassAttribute(field));
			case "data":
				moduleClass.fields.push(parseClassAttribute(field));
			case "method":
				moduleClass.fields.push(parseClassMethod(field));
			case "classmethod":
				moduleClass.fields.push(parseClassMethod(field));
			default:
				trace('Unhandled field type: ${field.att.desctype}');
			}
		}

		// Cache class for future reference ( i.e. inherited fields )
		File.saveContent(
			cacheDir + "/" + pack + "." + name + ".hxserialize",
			Serializer.run(moduleClass)
		);

		// Save Haxe extern
		FileSystem.createDirectory(outputDir + "/" + fileDir);
		File.saveContent(outputDir + "/" + filePath, printer.printTypeDefinition(moduleClass));
	}

	/**
	 * Parse a class attribute description
	 * @param desc The XML description of class attribute
	 * @return Field The parsed class field
	 */
	static function parseClassAttribute(desc:Fast):Field {
		var name = desc.node.desc_signature.node.desc_name.innerData;
		var kind:FieldType = null;
		if (desc.att.desctype == "data") {
			kind = FProp("default", "never", macro:Dynamic);
		} else {
			kind = FVar(macro:Dynamic);
		}
		return cast {
			name: name,
			doc: createDocString(desc.node.desc_content.nodes.paragraph),
			// TODO: Update pos
			pos: nullPos,
			kind: kind
		}
	}

	/**
	 * Parse a method description
	 * @param desc XML description of a method
	 * @return Field The parsed method
	 */
	static function parseClassMethod(desc:Fast):Field {
		var name = desc.node.desc_signature.node.desc_name.innerData;
		var access:Array<Access> = [];
		if (desc.att.desctype == "classmethod") {
			access.push(AStatic);
		}
		return cast {
			name: name,
			doc: createDocString(desc.node.desc_content.nodes.paragraph),
			// TODO: Update pos
			pos: nullPos,
			kind: FFun(cast {
				ret: macro:Dynamic,
				args: []
			}),
			access: access
		}
	}

	//
	// HELPER FUNCTIONS
	//

	/**
	 * Load a class definition from the class cache.
	 * @param classPath The full class name including the package ( i.e. `bpy.types.Node` )
	 */
	static function loadClassDefFromCache(classPath:String) {
		var fileData:String;
		try {
			fileData = File.getContent(cacheDir + "/" + classPath + ".hxserialize");
			return Unserializer.run(fileData);
		} catch (e:Dynamic) {
			throw Error.ClassNotCached;
		}
	}

	static function collectRefsFromHlist(hlist:Fast) {
		var refs:Array<String> = [];
		for (hlistcol in hlist.nodes.hlistcol) {
			for (list_item in hlistcol.node.bullet_list.nodes.list_item) {
				try {
					refs.push(list_item.node.paragraph.node.reference.att.reftitle);
				} catch (e:Dynamic) {
					// Isn't a valid reference to another class
					// trace('Error getting reference from: ${list_item.innerHTML}');
				}
			}
		}

		return refs;
	}

	/**
	 * Put together doc strings from an array of paragraphs.
	 * @param paragraphs XML parragraphs to be parsed and combined
	 * @returns The combined paragraphs with extra whitespace stripped and
	 * newlines inserted where appropriate
	 */
	static function createDocString(paragraphs:Array<Fast>) {
		return paragraphs.map((p) -> {
			return p.innerHTML.split("\n").map(s -> StringTools.ltrim(s)).join("\n");
		}).join("\n\n");
	}

	static function deleteDirectoryRecursive(dirPath:String) {
		if (! FileSystem.exists(dirPath) ||
				! FileSystem.isDirectory(dirPath)) { return; }
		for (file in FileSystem.readDirectory(dirPath)) {
			var fileName = dirPath + "/" + file;
			if (FileSystem.isDirectory(fileName)) {
				trace('Delete recursive: $fileName');
				deleteDirectoryRecursive(fileName);
				FileSystem.deleteDirectory(fileName);
			} else {
				FileSystem.deleteFile(fileName);
			}
		}
	}
}
