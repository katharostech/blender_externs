package blendertools;

import haxe.macro.Compiler;
import haxe.macro.Expr;
import haxe.macro.Context;
using haxe.macro.ExprTools;

import sys.io.File;

class BuildPlugin {

	/**
	 * Build the plugin class.
	 * 
	 * This class-building function has two functions: to auto-add a blank
	 * `main()` function to the Blender plugin class so that Haxe has an
	 * entrypoint, and to add the bl_info and register/unregister functions
	 * to the global scope of the generated Blender plugin.
	 */
	 public static function build() {
		var className = Context.getLocalClass().get().name;
		var fields:Array<Field> = Context.getBuildFields();

		// Add bl_info to generated file
		#if add_bl_info
		var bl_info:String = null;
		var hasRegister = false;
		var hasUnregister = false;

		// Loop through fields and check that the required ones exist
		for (field in fields) {
			// Get bl_info
			if (field.name == "bl_info") {
				switch(field.kind) {
					case FVar(type, expr):
						bl_info = expr.getValue();
					default:
				}

			// Check for `register` function
			} else if (field.name == "register" && 
					field.kind.match(FFun(_)) &&
					field.access != null && field.access.indexOf(AStatic) != -1) {
				hasRegister = true;

			// Check for `unregister` function
			} else if (field.name == "unregister" && 
					field.kind.match(FFun(_)) &&
					field.access != null && field.access.indexOf(AStatic) != -1) {
				hasUnregister = true;
			}
		}

		// Check for required fields
		if (bl_info == null) {
			Context.fatalError('Error: $className is missing `bl_info`.', Context.currentPos());
		}
		if (hasRegister == false) {
			Context.fatalError('Error: $className is missing `register` function.', Context.currentPos());
		}
		if (hasUnregister == false) {
			Context.fatalError('Error: $className is missing `unregister` function.', Context.currentPos());
		}

		// Add bl_info to output
		addBlInfo(bl_info, className);
		#end

		// Create a blank main function
		var exts = macro class ExtensionFields {
			public static function main() {}
		}

		// Add a blank main function to the plugin class
		fields.push(exts.fields[0]);

		return fields;
	}

	/**
	 * Append the bl_info and set the `register()` and `unregister()` functions.
	 * @param bl_info The bl_info string
	 * @param pluginClassName The name of the class with the `register()` and
	 * `unregister()` functions.
	 */
	public static function addBlInfo(bl_info:String, pluginClassName:String) {
		var outFile = Compiler.getOutput();
		var preFileContent = "import bpy\n";
		var postFileContent = '
# Global Data
$bl_info
register = ${pluginClassName}.register
unregister = ${pluginClassName}.unregister\n';
		
		var content = File.getContent(outFile);
		// If the content has not already been added
		if (content.indexOf("# Global Data") == -1) {
			// Add the additional assignments
			File.saveContent(outFile, preFileContent + content + postFileContent);
		}
	}
}
