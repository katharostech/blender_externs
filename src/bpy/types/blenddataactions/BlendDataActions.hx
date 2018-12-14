package bpy.types.blenddataactions;
/**
	Collection of actions
**/
@:pythonImport("bpy.types.BlendDataActions") extern class BlendDataActions {
	/**
		Add a new action to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns Action
	**/
	function new(name:String):bpy.types.action.Action;
	/**
		Remove a action from the current blendfile
		@param action Action to remove — Action, (never None)
		@param do_unlink Unlink all usages of this action before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this action — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this action — boolean, (optional)
	**/
	function remove(action:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Dynamic):Void;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:Dynamic):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:Dynamic):Dynamic;
}