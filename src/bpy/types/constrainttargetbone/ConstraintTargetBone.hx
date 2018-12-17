package bpy.types.constrainttargetbone;
/**
	Target bone for multi-target constraints
**/
@:native("bpy.types.ConstraintTargetBone") extern class ConstraintTargetBone {
	/**
		Target armature bone
		
		Type: string, default “”, (never None)
	**/
	var subtarget : String;
	/**
		Target armature
		
		Type: Object
	**/
	var target : bpy.types.object.Object;
	/**
		Blending weight of this bone
		
		Type: float in [0, 1], default 0.0
	**/
	var weight : Float;
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