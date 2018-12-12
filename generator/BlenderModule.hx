package;

import haxe.macro.Printer;
import sys.io.File;
import haxe.xml.Parser;
import haxe.xml.Fast;

import haxe.macro.Expr;

using StringTools;

/**
 * A python Module defined by an XML definition file from Blender's Sphinx
 * documentation.
 */
class BlenderModule {
	/**The name of the module, i.e. `bpy.types.Node`, determined from the file name**/
	public var moduleName(default, null):String;
	/**Description of the module loaded from the module title and the first
	 * paragraph from the module doc**/
	public var moduleDescription(default, null):String;
	/**The XML file defining the module**/
	public var defFile(default, null):String;
	/**Classes defined in the module**/
	public var classDefs(default, null):Array<TypeDefinition> = [];
	/**Functions defined in the module**/
	public var moduleDefs(default, null):Array<Field> = [];
	/**Whether or not the module has been parsed yet**/
	public var isParsed = false;
	/**The generator that is handling the `BlenderModule`**/
	private var generator:BlenderExternGenerator;
	/**Haxe type printer**/
	private var printer:Printer;
	/**A counter for enums that are generated for parameters**/
	private var enumCounter = 0;
	private static final nullPos:Position = cast { file: "", min: 0, max: 0};
	private static final dynamicType:ComplexType = TPath({name: "Dynamic", pack: []});

	public function new(defFile:String, generator:BlenderExternGenerator) {
		this.defFile = defFile;
		this.generator = generator;
		this.printer = new Printer();

		// Set name
		var pathSplit = defFile.split("/"); // Split by dir
		var fileName = pathSplit[pathSplit.length - 1]; // Extract filename
		var nameSplit = fileName.split("."); // Split by dots
		nameSplit.pop(); // Remove file extension
		this.moduleName = nameSplit.join("."); // Set name
	}

	/**
	 * Parse module definition file. The results are parsed into the
	 * `classDefs` and `funcDefs` properties of the `BlenderModule`.
	 */
	public function parseData() {
		// Get file data and parse.
		var file = File.getContent(defFile);
		var xml = new Fast(Parser.parse(file));

		// For each section
		var firstSection = true;
		for (section in xml.node.document.nodes.section) { 
			// Set module description
			if (firstSection) {
				var paragraphs = [];
				if (section.hasNode.title) { paragraphs.push(section.node.title.innerHTML); }
				for (paragraph in section.nodes.paragraph) {
					paragraphs.push(paragraph.innerHTML);
				}
				moduleDescription = paragraphs.join("\n\n");
				firstSection = false;
			}

			// Loop through descriptions
			for (desc in section.nodes.desc) {
				switch(desc.att.desctype) {
				case "attribute":
					moduleDefs.push(parseAttribute(desc));
				case "data":
					moduleDefs.push(parseAttribute(desc));
				case "function":
					moduleDefs.push(parseFunction(desc));
				case "method":
					moduleDefs.push(parseFunction(desc));
				case "class":
					parseClass(desc, section);
				default:
					generator.addWarning('Found unhandled description type while parsing $moduleName: ${desc.att.desctype}');
				}
			}
		}

		isParsed = true;
	}

	/**
	 * Get the class externs as a Haxe file.
	 * 
	 * Each `BlenderModule` will render two Haxe files: the class externs and the
	 * module externs. The class externs are the externs for classes defined in
	 * the module and the module externs are the module functions that are
	 * created under a "Module" class in the module package.
	 */
	public function getClassExterns():String {
		var externs = "";

		var firstClass = true;
		for (classDef in classDefs) {
			externs += printer.printTypeDefinition(classDef, firstClass);
			firstClass = false;
		}
		return externs;
	}

	/**
	 * Get the module externs as a Haxe file.
	 * 
	 * Each `BlenderModule` will render two Haxe files: the class externs and the
	 * module externs. The class externs are the externs for classes defined in
	 * the module and the module externs are the module functions that are
	 * created under a "Module" class in the module package.
	 */
	public function getModuleExterns():String {
		if (moduleDefs.length < 1) { return ""; }
		// Create a class to hold module functions
		var pack = moduleName.toLowerCase();
		var fileDir = pack.split(".").join("/");
		var filePath = '$fileDir/Module.hx';

		var classDef:TypeDefinition = {
			pack: [pack],
			name: "Module",
			doc: moduleDescription,
			pos: nullPos,
			meta: [
				{
					name: ":pythonImport",
					params: [
						{
							expr: EConst(CString(moduleName)),
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

		// Add module functions
		for (func in moduleDefs) {
			classDef.fields.push(func);
		}

		return printer.printTypeDefinition(classDef);
	}

	//
	// PARSER FUNCTIONS
	//

	/**
	 * Parse a class description.
	 * @param desc The class descriptions as a `Fast`
	 * @param section The section containing the class description
	 */
	private function parseClass(desc:Fast, section:Fast) {
		var desc_signature = desc.node.desc_signature;
		var name = capitalize(desc_signature.att.fullname);
		var pack = moduleName.toLowerCase();
		
		// Create class definition
		var classDef:TypeDefinition = {
			pack: [pack],
			name: name,
			doc: createDocString(desc.node.desc_content.nodes.paragraph),
			pos: nullPos,
			meta: [
				{
					name: ":pythonImport",
					params: [
						{
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

		// Parse class members
		for (field in desc.node.desc_content.nodes.desc) {
			switch(field.att.desctype) {
			case "attribute":
				classDef.fields.push(parseAttribute(field));
			case "data":
				classDef.fields.push(parseAttribute(field));
			case "method":
				classDef.fields.push(parseFunction(field));
			case "function":
				classDef.fields.push(parseFunction(field));
			case "staticmethod":
				classDef.fields.push(parseFunction(field));
			case "classmethod":
				classDef.fields.push(parseFunction(field));
			default:
				generator.addWarning('Found unhanded field type while parsing $pack.$name: ${field.att.desctype}');
			}
		}

		// Check for inherited properties/functions
		for (i in 0...section.nodes.rubric.length) {
			var rubric = section.nodes.rubric[i];
			if (rubric.innerData == "Inherited Properties" ||
					rubric.innerData == "Inherited Functions") {
				var refs:Array<String> = collectRefsFromHlist(section.nodes.hlist[i]);
				for (ref in refs) {
					// Parse ref name
					var refSplit = ref.split(".");
					var fieldName = refSplit.pop();
					var className = refSplit[refSplit.length - 1];
					var moduleName = refSplit.join(".");

					// Get the referenced module
					var inheritedModule = generator.getParsedModule(moduleName);

					// Find inherited field and add it to this class definition
					for (def in inheritedModule.classDefs) {
						if (def.name == className) {
							for (field in def.fields) {
								if (field.name == fieldName) {
									classDef.fields.push(field);
								}
							}
						}
					}
				}
			}
		}

		// Add class definition to the list
		classDefs.push(classDef);
	}

	/**
	 * Parse a class attribute description
	 * @param desc The XML description of class attribute
	 * @return Field The parsed class field
	 */
	 private function parseAttribute(desc:Fast):Field {
		var name = desc.node.desc_signature.node.desc_name.innerData;
		var kind:FieldType = null;
		var doc = createDocString(desc.node.desc_content.nodes.paragraph);
		// The default type is `Dynamic`
		var type:ComplexType = dynamicType;

		// Parse type
		try {
			for (field in desc.node.desc_content.node.field_list.nodes.field) {
				if (field.node.field_name.innerData != "Type") { continue; }

				var typeDesc = field.node.field_body.node.paragraph;
				type = parseParamType(typeDesc);

				// Add type info to doc string
				doc += '\n\nType: ${typeDesc.innerHTML}';
				break;
			}
		// This will catch any XML parsing exceptions in which case we
		// just leave the type set to dynamic.
		} catch (e:Dynamic) { }


		// Create field
		if (desc.att.desctype == "data") {
			kind = FProp("default", "never", type);
		} else {
			kind = FVar(type);
		}

		return {
			name: name,
			doc: doc,
			pos: nullPos,
			kind: kind
		}
	}

	/**
	 * Parse a method description
	 * @param desc XML description of a method
	 * @return Field The parsed method
	 */
	static function parseFunction(desc:Fast):Field {
		var name = desc.node.desc_signature.node.desc_name.innerData;
		var access:Array<Access> = [];
		if (desc.att.desctype == "function" ||
		    desc.att.desctype == "classmethod" ||
				desc.att.desctype == "staticmethod") {
			access.push(AStatic);
		}
		return {
			name: name,
			doc: createDocString(desc.node.desc_content.nodes.paragraph),
			pos: nullPos,
			kind: FFun({
				ret: dynamicType,
				args: [],
				expr: null
			}),
			access: access
		}
	}

	/**
	 * Parse a type description for an attribute or function
	 */
	private function parseParamType(paramTypeDesc:Fast):ComplexType {
		// The default type is `Dynamic`
		var type:ComplexType = dynamicType;
		var typeString = paramTypeDesc.innerHTML;
		var isArray = typeString.indexOf("array") != -1;

		// Try to match on basic type name
		var typeNameReg = ~/^([a-zA-Z]*)[, ]/gm;
		if (typeNameReg.match(typeString)) {
			var typeName = typeNameReg.matched(1);

			switch (typeName){
			case "boolean":
				// Bool type has different name in docs
				typeName = "Bool";
			case "enum":
				var valueReg = ~/enum in \[(.*)\]/gm;
				if (valueReg.match(typeString)) {
					// Enum values
					var enumValues = valueReg.matched(1).split(",");
					for (i in 0...enumValues.length) {
						// Strip quotes
						var reg = ~/[A-Z0-9_]+/m;
						if (reg.match(enumValues[i])) {
							enumValues[i] = reg.matched(0);
						}
					}

					enumCounter++;
					// Create new abstract enum and add it the classDefs
					var enumClassName = "Enum" + Std.string(enumCounter);
					var enumClass:TypeDefinition = {
						pack: [this.moduleName.toLowerCase()],
						name: enumClassName,
						pos: nullPos,
						kind: TDAbstract(
							TPath({ name: "String", pack: []}),
							[TPath({ name: "String", pack: []})],
							[TPath({ name: "String", pack: []})]
						),
						meta: [
							{
								name: ":enum",
								pos: nullPos
							}
						],
						fields: []
					};

					// Add all enum values
					for (value in enumValues) {
						enumClass.fields.push({
							name: value,
							pos: nullPos,
							kind: FVar(
								TPath({name: "String", pack: [] }),
								{
									expr: EConst(CString(value)),
									pos: nullPos
								}
							)
						});
					}

					classDefs.push(enumClass);

					typeName = enumClassName;
				}
			default:
				typeName = capitalize(typeName);
			}

			// Set type
			type = TPath({
				name: typeName,
				pack: []
			});
			
			if (isArray) {
				// Make array
				type = TPath({
					name: "Array",
					pack: [],
					params: [TPType(type)]
				});
			}

		// Try to parse class reference
		} else if (paramTypeDesc.hasNode.reference) {
			var ref = paramTypeDesc.node.reference.att.reftitle;
			var pack = ref.toLowerCase();
			var refSplit = ref.split(".");
			var className = capitalize(refSplit[refSplit.length - 1]);

			type = TPath({
				name: className,
				pack: [pack]
			});
		}

		return type;
	}

	//
	// HELPER FUNCTIONS
	//

	/**
	 * Capitalize the first letter of a string
	 * @param text The string to capitalize
	 */
	private static function capitalize(text:String) {
		return text.charAt(0).toUpperCase() + text.substring(1);
	}

	/**
	 * Put together doc strings from an array of paragraphs.
	 * @param paragraphs XML parragraphs to be parsed and combined
	 * @returns The combined paragraphs with extra whitespace stripped and
	 * newlines inserted where appropriate
	 */
	private static function createDocString(paragraphs:Array<Fast>) {
		return paragraphs.map((p) -> {
			return p.innerHTML.split("\n").map(s -> StringTools.ltrim(s)).join("\n");
		}).join("\n\n");
	}

	/**
	 * Parse references to other modules from an hlist
	 * @param hlist The Fast for the hlist to parse references from
	 * @return An array of module names that are referenced
	 */
	private function collectRefsFromHlist(hlist:Fast):Array<String> {
		var refs:Array<String> = [];
		for (hlistcol in hlist.nodes.hlistcol) {
			for (list_item in hlistcol.node.bullet_list.nodes.list_item) {
				try {
					refs.push(list_item.node.paragraph.node.reference.att.reftitle);
				} catch (e:Dynamic) {
					// There are many references to inherited properties that don't
					// have the full class path for a cross-reference. Hopefully this
					// doesn't cause issues.
				}
			}
		}

		return refs;
	}
}
