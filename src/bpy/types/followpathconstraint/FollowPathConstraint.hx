package bpy.types.followpathconstraint;
@:enum abstract Enum1(String) from String to String {
	var FORWARD_X : String = "FORWARD_X";
	var FORWARD_Y : String = "FORWARD_Y";
	var FORWARD_Z : String = "FORWARD_Z";
	var TRACK_NEGATIVE_X : String = "TRACK_NEGATIVE_X";
	var TRACK_NEGATIVE_Y : String = "TRACK_NEGATIVE_Y";
	var TRACK_NEGATIVE_Z : String = "TRACK_NEGATIVE_Z";
}@:enum abstract Enum2(String) from String to String {
	var UP_X : String = "UP_X";
	var UP_Y : String = "UP_Y";
	var UP_Z : String = "UP_Z";
}/**
	Lock motion to the target path
**/
@:native("bpy.types.FollowPathConstraint") extern class FollowPathConstraint {
	/**
		Axis that points forward along the path
		
		Type: enum in [‘FORWARD_X’, ‘FORWARD_Y’, ‘FORWARD_Z’, ‘TRACK_NEGATIVE_X’, ‘TRACK_NEGATIVE_Y’, ‘TRACK_NEGATIVE_Z’], default ‘FORWARD_X’
	**/
	var forward_axis : bpy.types.followpathconstraint.FollowPathConstraint.Enum1;
	/**
		Offset from the position corresponding to the time frame
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0
	**/
	var offset : Float;
	/**
		Percentage value defining target position along length of curve
		
		Type: float in [0, 1], default 0.0
	**/
	var offset_factor : Float;
	/**
		Target Curve object
		
		Type: Object
	**/
	var target : bpy.types.object.Object;
	/**
		Axis that points upward
		
		Type: enum in [‘UP_X’, ‘UP_Y’, ‘UP_Z’], default ‘UP_X’
	**/
	var up_axis : bpy.types.followpathconstraint.FollowPathConstraint.Enum2;
	/**
		Object will follow the heading and banking of the curve
		
		Type: boolean, default False
	**/
	var use_curve_follow : Bool;
	/**
		Object is scaled by the curve radius
		
		Type: boolean, default False
	**/
	var use_curve_radius : Bool;
	/**
		Object will stay locked to a single point somewhere along the length of the curve regardless of time
		
		Type: boolean, default False
	**/
	var use_fixed_location : Bool;
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