package bpy.types.armaturebones;
/**
	Collection of armature bones
**/
@:pythonImport("bpy.types.ArmatureBones") extern class ArmatureBones {
	/**
		Armature’s active bone
		
		Type: Bone
	**/
	var active : bpy.types.bone.Bone;
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