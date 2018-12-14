package bpy.types.armatureconstrainttargets;
/**
	Collection of target bones and weights
**/
@:pythonImport("bpy.types.ArmatureConstraintTargets") extern class ArmatureConstraintTargets {
	/**
		Add a new target to the constraint
		
		@returns ConstraintTargetBone
	**/
	function new():bpy.types.constrainttargetbone.ConstraintTargetBone;
	/**
		Delete target from the constraint
		@param target Target to remove — ConstraintTargetBone, (never None)
	**/
	function remove(target:bpy.types.constrainttargetbone.ConstraintTargetBone):Void;
	/**
		Delete all targets from object
	**/
	function clear():Void;
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