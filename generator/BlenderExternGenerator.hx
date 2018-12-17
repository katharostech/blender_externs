package;

import sys.io.File;
import sys.FileSystem;

class BlenderExternGenerator {
	public var modules:Map<String, BlenderModule> = new Map<String, BlenderModule>();
	public var inputDir:String;
	public var outputDir:String;
	public var warnings:Array<String> = [];

	public function new(inputDir:String, outputDir:String) {
		this.inputDir = inputDir;
		this.outputDir = outputDir;
	}

	public function generate() {
		// Clear output dir
		deleteDirectoryRecursive(outputDir);
		// Grab file paths.
		var filePaths = FileSystem.readDirectory(inputDir);
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

		trace('============== PARSING API DATA ==============');

		var moduleCount = 0;
		// Instantiate modules
		for (filePath in filePaths) {
			var module = new BlenderModule('$inputDir/$filePath', this);
			modules.set(module.moduleName, module);
			moduleCount++;
		}

		// Parse modules
		var completedCount = 0;
		for (module in modules) {
			if (module.isParsed == false) {
				trace('[${Math.round(completedCount/moduleCount*100)}%] ${module.moduleName}');
				// if (module.moduleName == "bpy.types.UILayout") {
				module.parseData();
				// }
			}
			
			// Write data
			var nameSplit = module.moduleName.split(".");
			var className = capitalize(nameSplit[nameSplit.length - 1] + ".hx");
			var dir = outputDir + "/" + nameSplit.join("/").toLowerCase();

			var classExterns = module.getClassExterns();
			var hasClassExterns = classExterns != "";
			var moduleExterns = module.getModuleExterns();
			var hasModuleExterns = moduleExterns != "";

			if (hasClassExterns || hasModuleExterns) { FileSystem.createDirectory(dir); }

			if (hasClassExterns) {
				File.saveContent('$dir/$className', classExterns);
			}
			if (hasModuleExterns) {
				File.saveContent('$dir/Module.hx', moduleExterns);
			}

			completedCount++;
		}

		// Print warning messages
		trace('==================== DONE ====================');
		if (warnings.length > 0) {
			trace('There were ${warnings.length} warnings while parsing API:');	
			for (warning in warnings) { trace(warning); }	
		}
	}

	public function getParsedModule(moduleName:String):BlenderModule {
		var module = modules.get(moduleName);
		if (module == null) { trace('could not find module: $moduleName'); return null; }
		if (module.isParsed == false) { module.parseData(); }
		return module;
	}

	@:allow(BlenderModule)
	private function addWarning(warningMessage:String) {
		var message = "WARNING: " + warningMessage;
		trace(message);
		warnings.push(message);
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
	 * Recursively delete a directory.
	 */
	private static function deleteDirectoryRecursive(dirPath:String) {
		if (! FileSystem.exists(dirPath) ||
				! FileSystem.isDirectory(dirPath)) { return; }
		for (file in FileSystem.readDirectory(dirPath)) {
			var fileName = dirPath + "/" + file;
			if (FileSystem.isDirectory(fileName)) {
				deleteDirectoryRecursive(fileName);
				FileSystem.deleteDirectory(fileName);
			} else {
				FileSystem.deleteFile(fileName);
			}
		}
	}
}
