package bpy.types.constraint;
@:enum abstract Enum1(String) from String to String {
	var WORLD : String = "WORLD";
	var POSE : String = "POSE";
	var LOCAL_WITH_PARENT : String = "LOCAL_WITH_PARENT";
	var LOCAL : String = "LOCAL";
}@:enum abstract Enum2(String) from String to String {
	var WORLD : String = "WORLD";
	var POSE : String = "POSE";
	var LOCAL_WITH_PARENT : String = "LOCAL_WITH_PARENT";
	var LOCAL : String = "LOCAL";
}@:enum abstract Enum3(String) from String to String {
	var CAMERA_SOLVER : String = "CAMERA_SOLVER";
	var FOLLOW_TRACK : String = "FOLLOW_TRACK";
	var OBJECT_SOLVER : String = "OBJECT_SOLVER";
	var COPY_LOCATION : String = "COPY_LOCATION";
	var COPY_ROTATION : String = "COPY_ROTATION";
	var COPY_SCALE : String = "COPY_SCALE";
	var COPY_TRANSFORMS : String = "COPY_TRANSFORMS";
	var LIMIT_DISTANCE : String = "LIMIT_DISTANCE";
	var LIMIT_LOCATION : String = "LIMIT_LOCATION";
	var LIMIT_ROTATION : String = "LIMIT_ROTATION";
	var LIMIT_SCALE : String = "LIMIT_SCALE";
	var MAINTAIN_VOLUME : String = "MAINTAIN_VOLUME";
	var TRANSFORM : String = "TRANSFORM";
	var TRANSFORM_CACHE : String = "TRANSFORM_CACHE";
	var CLAMP_TO : String = "CLAMP_TO";
	var DAMPED_TRACK : String = "DAMPED_TRACK";
	var IK : String = "IK";
	var LOCKED_TRACK : String = "LOCKED_TRACK";
	var SPLINE_IK : String = "SPLINE_IK";
	var STRETCH_TO : String = "STRETCH_TO";
	var TRACK_TO : String = "TRACK_TO";
	var ACTION : String = "ACTION";
	var CHILD_OF : String = "CHILD_OF";
	var FLOOR : String = "FLOOR";
	var FOLLOW_PATH : String = "FOLLOW_PATH";
	var PIVOT : String = "PIVOT";
	var SHRINKWRAP : String = "SHRINKWRAP";
	var ARMATURE : String = "ARMATURE";
}/**
	Constraint modifying the transformation of objects and bones
**/
@:pythonImport("bpy.types.Constraint") extern class Constraint {
	/**
		Constraint is the one being edited
		
		Type: boolean, default False
	**/
	var active : Bool;
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
	/**
		Amount of influence constraint will have on the final solution
		
		Type: float in [0, 1], default 0.0
	**/
	var influence : Float;
	/**
		Constraint was added in this proxy instance (i.e. did not belong to source Armature)
		
		Type: boolean, default False
	**/
	var is_proxy_local : Bool;
	/**
		Constraint has valid settings and can be evaluated
		
		Type: boolean, default False, (readonly)
	**/
	var is_valid(default, never) : Bool;
	/**
		Enable/Disable Constraint
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		Constraint name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Space that owner is evaluated in
		
		Type: enum in [‘WORLD’, ‘POSE’, ‘LOCAL_WITH_PARENT’, ‘LOCAL’], default ‘WORLD’
	**/
	var owner_space : bpy.types.constraint.Constraint.Enum1;
	/**
		Constraint’s panel is expanded in UI
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Space that target is evaluated in
		
		Type: enum in [‘WORLD’, ‘POSE’, ‘LOCAL_WITH_PARENT’, ‘LOCAL’], default ‘WORLD’
	**/
	var target_space : bpy.types.constraint.Constraint.Enum2;
	/**
		
		
		Type: enum in [‘CAMERA_SOLVER’, ‘FOLLOW_TRACK’, ‘OBJECT_SOLVER’, ‘COPY_LOCATION’, ‘COPY_ROTATION’, ‘COPY_SCALE’, ‘COPY_TRANSFORMS’, ‘LIMIT_DISTANCE’, ‘LIMIT_LOCATION’, ‘LIMIT_ROTATION’, ‘LIMIT_SCALE’, ‘MAINTAIN_VOLUME’, ‘TRANSFORM’, ‘TRANSFORM_CACHE’, ‘CLAMP_TO’, ‘DAMPED_TRACK’, ‘IK’, ‘LOCKED_TRACK’, ‘SPLINE_IK’, ‘STRETCH_TO’, ‘TRACK_TO’, ‘ACTION’, ‘CHILD_OF’, ‘FLOOR’, ‘FOLLOW_PATH’, ‘PIVOT’, ‘SHRINKWRAP’, ‘ARMATURE’], default ‘CAMERA_SOLVER’, (readonly)
	**/
	var type(default, never) : bpy.types.constraint.Constraint.Enum3;
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