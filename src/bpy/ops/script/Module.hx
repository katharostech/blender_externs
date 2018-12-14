package bpy.ops.script;
/**
	Script Operators
**/
@:pythonImport("bpy.ops.script") extern class Module {
	/**
		Execute a preset
		@param filepath filepath — string, (optional, never None)
		@param menu_idname Menu ID Name, ID name of the menu this was called from — string, (optional, never None)
	**/
	static function execute_preset(filepath:String, menu_idname:String):Void;
	/**
		Run Python file
		@param filepath Path — string, (optional, never None)
	**/
	static function python_file_run(filepath:String):Void;
	/**
		Reload Scripts
	**/
	static function reload():Void;
}