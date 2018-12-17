package bpy.types.armatureeditbones;
/**
	Collection of armature edit bones
**/
@:native("bpy.types.ArmatureEditBones") extern class ArmatureEditBones {
	/**
		Armatures active edit bone
		
		Type: EditBone
	**/
	var active : bpy.types.editbone.EditBone;
	/**
		Add a new bone
		@param name New name for the bone — string, (never None)
		
		@returns EditBone
	**/
	function pyNew(name:String):bpy.types.editbone.EditBone;
	/**
		Remove an existing bone from the armature
		@param bone EditBone to remove — EditBone, (never None)
	**/
	function remove(bone:bpy.types.editbone.EditBone):Void;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:String):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:String):Dynamic;
}