package bpy.types.transformconstraint;
@:enum abstract Enum1(String) from String to String {
	var LOCATION : String = "LOCATION";
	var ROTATION : String = "ROTATION";
	var SCALE : String = "SCALE";
}@:enum abstract Enum2(String) from String to String {
	var LOCATION : String = "LOCATION";
	var ROTATION : String = "ROTATION";
	var SCALE : String = "SCALE";
}@:enum abstract Enum3(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum4(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum5(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}/**
	Map transformations of the target to the object
**/
@:native("bpy.types.TransformConstraint") extern class TransformConstraint {
	/**
		Top range of X axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_max_x : Float;
	/**
		Top range of X axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_max_x_rot : Float;
	/**
		Top range of X axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_max_x_scale : Float;
	/**
		Top range of Y axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_max_y : Float;
	/**
		Top range of Y axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_max_y_rot : Float;
	/**
		Top range of Y axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_max_y_scale : Float;
	/**
		Top range of Z axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_max_z : Float;
	/**
		Top range of Z axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_max_z_rot : Float;
	/**
		Top range of Z axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_max_z_scale : Float;
	/**
		Bottom range of X axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_min_x : Float;
	/**
		Bottom range of X axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_min_x_rot : Float;
	/**
		Bottom range of X axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_min_x_scale : Float;
	/**
		Bottom range of Y axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_min_y : Float;
	/**
		Bottom range of Y axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_min_y_rot : Float;
	/**
		Bottom range of Y axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_min_y_scale : Float;
	/**
		Bottom range of Z axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_min_z : Float;
	/**
		Bottom range of Z axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_min_z_rot : Float;
	/**
		Bottom range of Z axis source motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var from_min_z_scale : Float;
	/**
		The transformation type to use from the target
		
		Type: enum in [‘LOCATION’, ‘ROTATION’, ‘SCALE’], default ‘LOCATION’
	**/
	var map_from : bpy.types.transformconstraint.TransformConstraint.Enum1;
	/**
		The transformation type to affect of the constrained object
		
		Type: enum in [‘LOCATION’, ‘ROTATION’, ‘SCALE’], default ‘LOCATION’
	**/
	var map_to : bpy.types.transformconstraint.TransformConstraint.Enum2;
	/**
		The source axis constrained object’s X axis uses
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var map_to_x_from : bpy.types.transformconstraint.TransformConstraint.Enum3;
	/**
		The source axis constrained object’s Y axis uses
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var map_to_y_from : bpy.types.transformconstraint.TransformConstraint.Enum4;
	/**
		The source axis constrained object’s Z axis uses
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var map_to_z_from : bpy.types.transformconstraint.TransformConstraint.Enum5;
	/**
		Armature bone, mesh or lattice vertex group, …
		
		Type: string, default “”, (never None)
	**/
	var subtarget : String;
	/**
		Target object
		
		Type: Object
	**/
	var target : bpy.types.object.Object;
	/**
		Top range of X axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_max_x : Float;
	/**
		Top range of X axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_max_x_rot : Float;
	/**
		Top range of X axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_max_x_scale : Float;
	/**
		Top range of Y axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_max_y : Float;
	/**
		Top range of Y axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_max_y_rot : Float;
	/**
		Top range of Y axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_max_y_scale : Float;
	/**
		Top range of Z axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_max_z : Float;
	/**
		Top range of Z axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_max_z_rot : Float;
	/**
		Top range of Z axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_max_z_scale : Float;
	/**
		Bottom range of X axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_min_x : Float;
	/**
		Bottom range of X axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_min_x_rot : Float;
	/**
		Bottom range of X axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_min_x_scale : Float;
	/**
		Bottom range of Y axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_min_y : Float;
	/**
		Bottom range of Y axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_min_y_rot : Float;
	/**
		Bottom range of Y axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_min_y_scale : Float;
	/**
		Bottom range of Z axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_min_z : Float;
	/**
		Bottom range of Z axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_min_z_rot : Float;
	/**
		Bottom range of Z axis destination motion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var to_min_z_scale : Float;
	/**
		Extrapolate ranges
		
		Type: boolean, default False
	**/
	var use_motion_extrapolate : Bool;
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