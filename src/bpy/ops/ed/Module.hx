package bpy.ops.ed;
/**
	Ed Operators
**/
@:pythonImport("bpy.ops.ed") extern class Module {
	/**
		Flush edit data from active editing modes
	**/
	static function flush_edits():Void;
	/**
		Redo previous action
	**/
	static function redo():Void;
	/**
		Undo previous action
	**/
	static function undo():Void;
	/**
		Redo specific action in history
		@param item Item — int in [0, inf], (optional)
	**/
	static function undo_history(item:Int):Void;
	/**
		Add an undo state (internal use only)
		@param message Undo Message — string, (optional, never None)
	**/
	static function undo_push(message:String):Void;
	/**
		Undo and redo previous action
	**/
	static function undo_redo():Void;
}