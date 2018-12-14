package bpy.ops.workspace;
/**
	Workspace Operators
**/
@:pythonImport("bpy.ops.workspace") extern class Module {
	/**
		Add a new workspace by duplicating the current one or appending one from the user configuration
	**/
	static function add():Void;
	/**
		Append a workspace and make it the active one in the current window
		@param idname Identifier, Name of the workspace to append and activate — string, (optional, never None)
		@param filepath Filepath, Path to the library — string, (optional, never None)
	**/
	static function append_activate(idname:String, filepath:String):Void;
	/**
		Delete the active workspace
	**/
	static function delete():Void;
	/**
		Add a new workspace
	**/
	static function duplicate():Void;
	/**
		Reorder workspace to be first in the list
	**/
	static function reorder_to_back():Void;
	/**
		Reorder workspace to be first in the list
	**/
	static function reorder_to_front():Void;
}