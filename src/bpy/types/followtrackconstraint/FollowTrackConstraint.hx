package bpy.types.followtrackconstraint;
@:enum abstract Enum1(String) from String to String {
	var STRETCH : String = "STRETCH";
	var FIT : String = "FIT";
	var CROP : String = "CROP";
}/**
	Lock motion to the target motion track
**/
@:pythonImport("bpy.types.FollowTrackConstraint") extern class FollowTrackConstraint {
	/**
		Camera to which motion is parented (if empty active scene camera is used)
		
		Type: Object
	**/
	var camera : bpy.types.object.Object;
	/**
		Movie Clip to get tracking data from
		
		Type: MovieClip
	**/
	var clip : bpy.types.movieclip.MovieClip;
	/**
		Object used to define depth in camera space by projecting onto surface of this object
		
		Type: Object
	**/
	var depth_object : bpy.types.object.Object;
	/**
		How the footage fits in the camera frame
		
		Type: enum in [‘STRETCH’, ‘FIT’, ‘CROP’], default ‘STRETCH’
	**/
	var frame_method : bpy.types.followtrackconstraint.FollowTrackConstraint.Enum1;
	/**
		Movie tracking object to follow (if empty, camera object is used)
		
		Type: string, default “”, (never None)
	**/
	var object : String;
	/**
		Movie tracking track to follow
		
		Type: string, default “”, (never None)
	**/
	var track : String;
	/**
		Use 3D position of track to parent to
		
		Type: boolean, default False
	**/
	var use_3d_position : Bool;
	/**
		Use active clip defined in scene
		
		Type: boolean, default False
	**/
	var use_active_clip : Bool;
	/**
		Parent to undistorted position of 2D track
		
		Type: boolean, default False
	**/
	var use_undistorted_position : Bool;
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