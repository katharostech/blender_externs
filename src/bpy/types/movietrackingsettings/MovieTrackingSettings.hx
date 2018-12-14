package bpy.types.movietrackingsettings;
@:enum abstract Enum1(String) from String to String {
	var SELECT : String = "SELECT";
	var DELETE_TRACK : String = "DELETE_TRACK";
	var DELETE_SEGMENTS : String = "DELETE_SEGMENTS";
}@:enum abstract Enum2(String) from String to String {
	var P : String = "P";
	var A : String = "A";
	var L : String = "L";
	var L : String = "L";
	var L : String = "L";
	var L : String = "L";
}@:enum abstract Enum3(String) from String to String {
	var KEYFRAME : String = "KEYFRAME";
	var PREV_FRAME : String = "PREV_FRAME";
}@:enum abstract Enum4(String) from String to String {
	var NONE : String = "NONE";
	var FOCAL_LENGTH : String = "FOCAL_LENGTH";
	var FOCAL_LENGTH_RADIAL_K1 : String = "FOCAL_LENGTH_RADIAL_K1";
	var FOCAL_LENGTH_RADIAL_K1_K2 : String = "FOCAL_LENGTH_RADIAL_K1_K2";
	var FOCAL_LENGTH_PRINCIPAL_POINT_RADIAL_K1_K2 : String = "FOCAL_LENGTH_PRINCIPAL_POINT_RADIAL_K1_K2";
	var FOCAL_LENGTH_PRINCIPAL_POINT : String = "FOCAL_LENGTH_PRINCIPAL_POINT";
	var RADIAL_K1_K2 : String = "RADIAL_K1_K2";
}@:enum abstract Enum5(String) from String to String {
	var FASTEST : String = "FASTEST";
	var DOUBLE : String = "DOUBLE";
	var REALTIME : String = "REALTIME";
	var HALF : String = "HALF";
	var QUARTER : String = "QUARTER";
}/**
	Match moving settings
**/
@:pythonImport("bpy.types.MovieTrackingSettings") extern class MovieTrackingSettings {
	/**
		Cleanup action to execute
		
		Type: enum in [‘SELECT’, ‘DELETE_TRACK’, ‘DELETE_SEGMENTS’], default ‘SELECT’
	**/
	var clean_action : bpy.types.movietrackingsettings.MovieTrackingSettings.Enum1;
	/**
		Effect on tracks which have a larger re-projection error
		
		Type: float in [0, inf], default 0.0
	**/
	var clean_error : Float;
	/**
		Effect on tracks which are tracked less than the specified amount of frames
		
		Type: int in [0, inf], default 0
	**/
	var clean_frames : Int;
	/**
		Default minimum value of correlation between matched pattern and reference that is still treated as successful tracking
		
		Type: float in [0, 1], default 0.0
	**/
	var default_correlation_min : Float;
	/**
		Every tracking cycle, this number of frames are tracked
		
		Type: int in [0, 32767], default 0
	**/
	var default_frames_limit : Int;
	/**
		Default distance from image boundary at which marker stops tracking
		
		Type: int in [0, 300], default 0
	**/
	var default_margin : Int;
	/**
		Default motion model to use for tracking
		
		Type: enum in [‘Perspective’, ‘Affine’, ‘LocRotScale’, ‘LocScale’, ‘LocRot’, ‘Loc’], default ‘Loc’
	**/
	var default_motion_model : bpy.types.movietrackingsettings.MovieTrackingSettings.Enum2;
	/**
		Track pattern from given frame when tracking marker to next frame
		
		Type: enum in [‘KEYFRAME’, ‘PREV_FRAME’], default ‘KEYFRAME’
	**/
	var default_pattern_match : bpy.types.movietrackingsettings.MovieTrackingSettings.Enum3;
	/**
		Size of pattern area for newly created tracks
		
		Type: int in [5, 1000], default 0
	**/
	var default_pattern_size : Int;
	/**
		Size of search area for newly created tracks
		
		Type: int in [5, 1000], default 0
	**/
	var default_search_size : Int;
	/**
		Influence of newly created track on a final solution
		
		Type: float in [0, 1], default 0.0
	**/
	var default_weight : Float;
	/**
		Distance between two bundles used for scene scaling
		
		Type: float in [-inf, inf], default 1.0
	**/
	var distance : Float;
	/**
		Distance between two bundles used for object scaling
		
		Type: float in [0.001, 10000], default 1.0
	**/
	var object_distance : Float;
	/**
		Refine intrinsics during camera solving
		
		Type: enum in [‘NONE’, ‘FOCAL_LENGTH’, ‘FOCAL_LENGTH_RADIAL_K1’, ‘FOCAL_LENGTH_RADIAL_K1_K2’, ‘FOCAL_LENGTH_PRINCIPAL_POINT_RADIAL_K1_K2’, ‘FOCAL_LENGTH_PRINCIPAL_POINT’, ‘RADIAL_K1_K2’], default ‘NONE’
	**/
	var refine_intrinsics : bpy.types.movietrackingsettings.MovieTrackingSettings.Enum4;
	/**
		Show default options expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_default_expanded : Bool;
	/**
		Show extra options expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_extra_expanded : Bool;
	/**
		Limit speed of tracking to make visual feedback easier (this does not affect the tracking quality)
		
		Type: enum in [‘FASTEST’, ‘DOUBLE’, ‘REALTIME’, ‘HALF’, ‘QUARTER’], default ‘FASTEST’
	**/
	var speed : bpy.types.movietrackingsettings.MovieTrackingSettings.Enum5;
	/**
		Use blue channel from footage for tracking
		
		Type: boolean, default False
	**/
	var use_default_blue_channel : Bool;
	/**
		Use a brute-force translation-only initialization when tracking
		
		Type: boolean, default False
	**/
	var use_default_brute : Bool;
	/**
		Use green channel from footage for tracking
		
		Type: boolean, default False
	**/
	var use_default_green_channel : Bool;
	/**
		Use a grease pencil data-block as a mask to use only specified areas of pattern when tracking
		
		Type: boolean, default False
	**/
	var use_default_mask : Bool;
	/**
		Normalize light intensities while tracking (slower)
		
		Type: boolean, default False
	**/
	var use_default_normalization : Bool;
	/**
		Use red channel from footage for tracking
		
		Type: boolean, default False
	**/
	var use_default_red_channel : Bool;
	/**
		Automatically select keyframes when solving camera/object motion
		
		Type: boolean, default False
	**/
	var use_keyframe_selection : Bool;
	/**
		Use special solver to track a stable camera position, such as a tripod
		
		Type: boolean, default False
	**/
	var use_tripod_solver : Bool;
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