package bpy.types.actiongroups;
/**
	Collection of action groups
**/
@:pythonImport("bpy.types.ActionGroups") extern class ActionGroups {
	/**
		Create a new action group and add it to the action
		@param name New name for the action group — string, (never None)
		
		@returns ActionGroup
	**/
	function new(name:String):bpy.types.actiongroup.ActionGroup;
	/**
		Remove action group
		@param action_group Action group to remove — ActionGroup, (never None)
	**/
	function remove(action_group:bpy.types.actiongroup.ActionGroup):Void;
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