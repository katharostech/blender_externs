package bpy.types.pivotconstraint;
@:enum abstract Enum1(String) from String to String {
	var ALWAYS_ACTIVE : String = "ALWAYS_ACTIVE";
	var NX : String = "NX";
	var NY : String = "NY";
	var NZ : String = "NZ";
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}/**
	Rotate around a different point
**/
@:native("bpy.types.PivotConstraint") extern class PivotConstraint {
	/**
		Target along length of bone: Head=0, Tail=1
		
		Type: float in [0, 1], default 0.0
	**/
	var head_tail : Float;
	/**
		Offset of pivot from target (when set), or from owner’s location (when Fixed Position is off), or the absolute pivot point
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var offset : Array<Float>;
	/**
		Rotation range on which pivoting should occur
		
		Type: enum in [‘ALWAYS_ACTIVE’, ‘NX’, ‘NY’, ‘NZ’, ‘X’, ‘Y’, ‘Z’], default ‘NX’
	**/
	var rotation_range : bpy.types.pivotconstraint.PivotConstraint.Enum1;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var subtarget : String;
	/**
		Target Object, defining the position of the pivot when defined
		
		Type: Object
	**/
	var target : bpy.types.object.Object;
	/**
		Follow shape of B-Bone segments when calculating Head/Tail position
		
		Type: boolean, default False
	**/
	var use_bbone_shape : Bool;
	/**
		Offset will be an absolute point in space instead of relative to the target
		
		Type: boolean, default False
	**/
	var use_relative_location : Bool;
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
	/**
		Constraint name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘CAMERA_SOLVER’, ‘FOLLOW_TRACK’, ‘OBJECT_SOLVER’, ‘COPY_LOCATION’, ‘COPY_ROTATION’, ‘COPY_SCALE’, ‘COPY_TRANSFORMS’, ‘LIMIT_DISTANCE’, ‘LIMIT_LOCATION’, ‘LIMIT_ROTATION’, ‘LIMIT_SCALE’, ‘MAINTAIN_VOLUME’, ‘TRANSFORM’, ‘TRANSFORM_CACHE’, ‘CLAMP_TO’, ‘DAMPED_TRACK’, ‘IK’, ‘LOCKED_TRACK’, ‘SPLINE_IK’, ‘STRETCH_TO’, ‘TRACK_TO’, ‘ACTION’, ‘CHILD_OF’, ‘FLOOR’, ‘FOLLOW_PATH’, ‘PIVOT’, ‘SHRINKWRAP’, ‘ARMATURE’], default ‘CAMERA_SOLVER’, (readonly)
	**/
	var type(default, never) : bpy.types.constraint.Constraint.Enum3;
	/**
		Space that owner is evaluated in
		
		Type: enum in [‘WORLD’, ‘POSE’, ‘LOCAL_WITH_PARENT’, ‘LOCAL’], default ‘WORLD’
	**/
	var owner_space : bpy.types.constraint.Constraint.Enum1;
	/**
		Space that target is evaluated in
		
		Type: enum in [‘WORLD’, ‘POSE’, ‘LOCAL_WITH_PARENT’, ‘LOCAL’], default ‘WORLD’
	**/
	var target_space : bpy.types.constraint.Constraint.Enum2;
	/**
		Enable/Disable Constraint
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		Constraint’s panel is expanded in UI
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Constraint has valid settings and can be evaluated
		
		Type: boolean, default False, (readonly)
	**/
	var is_valid(default, never) : Bool;
	/**
		Constraint is the one being edited
		
		Type: boolean, default False
	**/
	var active : Bool;
	/**
		Constraint was added in this proxy instance (i.e. did not belong to source Armature)
		
		Type: boolean, default False
	**/
	var is_proxy_local : Bool;
	/**
		Amount of influence constraint will have on the final solution
		
		Type: float in [0, 1], default 0.0
	**/
	var influence : Float;
	/**
		Amount of residual error in Blender space unit for constraints that work on position
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var error_location(default, never) : Float;
	/**
		Amount of residual error in radians for constraints that work on orientation
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var error_rotation(default, never) : Float;
}