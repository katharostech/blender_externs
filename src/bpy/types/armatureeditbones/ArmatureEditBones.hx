package bpy.types.armatureeditbones;
/**
	Collection of armature edit bones
**/
@:pythonImport("bpy.types.ArmatureEditBones") extern class ArmatureEditBones {
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
	function new(name:String):bpy.types.editbone.EditBone;
	/**
		Remove an existing bone from the armature
		@param bone EditBone to remove — EditBone, (never None)
	**/
	function remove(bone:bpy.types.editbone.EditBone):Void;
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