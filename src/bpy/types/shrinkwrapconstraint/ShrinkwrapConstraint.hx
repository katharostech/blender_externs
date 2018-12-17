package bpy.types.shrinkwrapconstraint;
@:enum abstract Enum1(String) from String to String {
	var OFF : String = "OFF";
	var FRONT : String = "FRONT";
	var BACK : String = "BACK";
}@:enum abstract Enum2(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}@:enum abstract Enum3(String) from String to String {
	var WORLD : String = "WORLD";
	var POSE : String = "POSE";
	var LOCAL_WITH_PARENT : String = "LOCAL_WITH_PARENT";
	var LOCAL : String = "LOCAL";
}@:enum abstract Enum4(String) from String to String {
	var NEAREST_SURFACE : String = "NEAREST_SURFACE";
	var PROJECT : String = "PROJECT";
	var NEAREST_VERTEX : String = "NEAREST_VERTEX";
	var TARGET_PROJECT : String = "TARGET_PROJECT";
}@:enum abstract Enum5(String) from String to String {
	var TRACK_X : String = "TRACK_X";
	var TRACK_Y : String = "TRACK_Y";
	var TRACK_Z : String = "TRACK_Z";
	var TRACK_NEGATIVE_X : String = "TRACK_NEGATIVE_X";
	var TRACK_NEGATIVE_Y : String = "TRACK_NEGATIVE_Y";
	var TRACK_NEGATIVE_Z : String = "TRACK_NEGATIVE_Z";
}@:enum abstract Enum6(String) from String to String {
	var ON_SURFACE : String = "ON_SURFACE";
	var INSIDE : String = "INSIDE";
	var OUTSIDE : String = "OUTSIDE";
	var OUTSIDE_SURFACE : String = "OUTSIDE_SURFACE";
	var ABOVE_SURFACE : String = "ABOVE_SURFACE";
}/**
	Create constraint-based shrinkwrap relationship
**/
@:native("bpy.types.ShrinkwrapConstraint") extern class ShrinkwrapConstraint {
	/**
		Stop vertices from projecting to a face on the target when facing towards/away
		
		Type: enum in [‘OFF’, ‘FRONT’, ‘BACK’], default ‘OFF’
	**/
	var cull_face : bpy.types.shrinkwrapconstraint.ShrinkwrapConstraint.Enum1;
	/**
		Distance to Target
		
		Type: float in [0, inf], default 0.0
	**/
	var distance : Float;
	/**
		Axis constrain to
		
		Type: enum in [‘POS_X’, ‘POS_Y’, ‘POS_Z’, ‘NEG_X’, ‘NEG_Y’, ‘NEG_Z’], default ‘POS_X’
	**/
	var project_axis : bpy.types.shrinkwrapconstraint.ShrinkwrapConstraint.Enum2;
	/**
		Space for the projection axis
		
		Type: enum in [‘WORLD’, ‘POSE’, ‘LOCAL_WITH_PARENT’, ‘LOCAL’], default ‘WORLD’
	**/
	var project_axis_space : bpy.types.shrinkwrapconstraint.ShrinkwrapConstraint.Enum3;
	/**
		Limit the distance used for projection (zero disables)
		
		Type: float in [0, inf], default 0.0
	**/
	var project_limit : Float;
	/**
		Select type of shrinkwrap algorithm for target position
		
		Type: enum in [‘NEAREST_SURFACE’, ‘PROJECT’, ‘NEAREST_VERTEX’, ‘TARGET_PROJECT’], default ‘NEAREST_SURFACE’
	**/
	var shrinkwrap_type : bpy.types.shrinkwrapconstraint.ShrinkwrapConstraint.Enum4;
	/**
		Target Mesh object
		
		Type: Object
	**/
	var target : bpy.types.object.Object;
	/**
		Axis that is aligned to the normal
		
		Type: enum in [‘TRACK_X’, ‘TRACK_Y’, ‘TRACK_Z’, ‘TRACK_NEGATIVE_X’, ‘TRACK_NEGATIVE_Y’, ‘TRACK_NEGATIVE_Z’], default ‘TRACK_X’
	**/
	var track_axis : bpy.types.shrinkwrapconstraint.ShrinkwrapConstraint.Enum5;
	/**
		When projecting in the opposite direction invert the face cull mode
		
		Type: boolean, default False
	**/
	var use_invert_cull : Bool;
	/**
		Project in both specified and opposite directions
		
		Type: boolean, default False
	**/
	var use_project_opposite : Bool;
	/**
		Align the specified axis to the surface normal
		
		Type: boolean, default False
	**/
	var use_track_normal : Bool;
	/**
		Select how to constrain the object to the target surface
		
		Type: enum in [‘ON_SURFACE’, ‘INSIDE’, ‘OUTSIDE’, ‘OUTSIDE_SURFACE’, ‘ABOVE_SURFACE’], default ‘ON_SURFACE’
	**/
	var wrap_mode : bpy.types.shrinkwrapconstraint.ShrinkwrapConstraint.Enum6;
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