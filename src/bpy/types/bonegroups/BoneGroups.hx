package bpy.types.bonegroups;
/**
	Collection of bone groups
**/
@:pythonImport("bpy.types.BoneGroups") extern class BoneGroups {
	/**
		Active bone group for this pose
		
		Type: BoneGroup
	**/
	var active : bpy.types.bonegroup.BoneGroup;
	/**
		Active index in bone groups array
		
		Type: int in [0, inf], default 0
	**/
	var active_index : Int;
	/**
		Add a new bone group to the object
		@param name Name of the new group — string, (optional, never None)
		
		@returns BoneGroup
	**/
	function new(name:String):bpy.types.bonegroup.BoneGroup;
	/**
		Remove a bone group from this object
		@param group Removed bone group — BoneGroup, (never None)
	**/
	function remove(group:bpy.types.bonegroup.BoneGroup):Void;
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