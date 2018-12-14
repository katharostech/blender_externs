package bpy.types.movietrackingtrack;
@:enum abstract Enum1(String) from String to String {
	var P : String = "P";
	var A : String = "A";
	var L : String = "L";
	var L : String = "L";
	var L : String = "L";
	var L : String = "L";
}@:enum abstract Enum2(String) from String to String {
	var KEYFRAME : String = "KEYFRAME";
	var PREV_FRAME : String = "PREV_FRAME";
}/**
	Match-moving track data for tracking
**/
@:pythonImport("bpy.types.MovieTrackingTrack") extern class MovieTrackingTrack {
	/**
		Average error of re-projection
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var average_error(default, never) : Float;
	/**
		Position of bundle reconstructed from this track
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0), (readonly)
	**/
	var bundle(default, never) : Array<Float>;
	/**
		Color of the track in the Movie Clip Editor and the 3D viewport after a solve
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		Minimal value of correlation between matched pattern and reference that is still treated as successful tracking
		
		Type: float in [0, 1], default 0.0
	**/
	var correlation_min : Float;
	/**
		Every tracking cycle, this number of frames are tracked
		
		Type: int in [0, 32767], default 0
	**/
	var frames_limit : Int;
	/**
		Grease pencil data for this track
		
		Type: GreasePencil
	**/
	var grease_pencil : bpy.types.greasepencil.GreasePencil;
	/**
		True if track has a valid bundle
		
		Type: boolean, default False, (readonly)
	**/
	var has_bundle(default, never) : Bool;
	/**
		Track is hidden
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		Track is locked and all changes to it are disabled
		
		Type: boolean, default False
	**/
	var lock : Bool;
	/**
		Distance from image boundary at which marker stops tracking
		
		Type: int in [0, 300], default 0
	**/
	var margin : Int;
	/**
		Collection of markers in track
		
		Type: MovieTrackingMarkers bpy_prop_collection of MovieTrackingMarker, (readonly)
	**/
	var markers(default, never) : bpy.types.movietrackingmarkers.MovieTrackingMarkers;
	/**
		Default motion model to use for tracking
		
		Type: enum in [‘Perspective’, ‘Affine’, ‘LocRotScale’, ‘LocScale’, ‘LocRot’, ‘Loc’], default ‘Loc’
	**/
	var motion_model : bpy.types.movietrackingtrack.MovieTrackingTrack.Enum1;
	/**
		Unique name of track
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Offset of track from the parenting point
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var offset : Array<Float>;
	/**
		Track pattern from given frame when tracking marker to next frame
		
		Type: enum in [‘KEYFRAME’, ‘PREV_FRAME’], default ‘KEYFRAME’
	**/
	var pattern_match : bpy.types.movietrackingtrack.MovieTrackingTrack.Enum2;
	/**
		Track is selected
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Track’s anchor point is selected
		
		Type: boolean, default False
	**/
	var select_anchor : Bool;
	/**
		Track’s pattern area is selected
		
		Type: boolean, default False
	**/
	var select_pattern : Bool;
	/**
		Track’s search area is selected
		
		Type: boolean, default False
	**/
	var select_search : Bool;
	/**
		Apply track’s mask on displaying preview
		
		Type: boolean, default False
	**/
	var use_alpha_preview : Bool;
	/**
		Use blue channel from footage for tracking
		
		Type: boolean, default False
	**/
	var use_blue_channel : Bool;
	/**
		Use a brute-force translation only pre-track before refinement
		
		Type: boolean, default False
	**/
	var use_brute : Bool;
	/**
		Use custom color instead of theme-defined
		
		Type: boolean, default False
	**/
	var use_custom_color : Bool;
	/**
		Display what the tracking algorithm sees in the preview
		
		Type: boolean, default False
	**/
	var use_grayscale_preview : Bool;
	/**
		Use green channel from footage for tracking
		
		Type: boolean, default False
	**/
	var use_green_channel : Bool;
	/**
		Use a grease pencil data-block as a mask to use only specified areas of pattern when tracking
		
		Type: boolean, default False
	**/
	var use_mask : Bool;
	/**
		Normalize light intensities while tracking. Slower
		
		Type: boolean, default False
	**/
	var use_normalization : Bool;
	/**
		Use red channel from footage for tracking
		
		Type: boolean, default False
	**/
	var use_red_channel : Bool;
	/**
		Influence of this track on a final solution
		
		Type: float in [0, 1], default 0.0
	**/
	var weight : Float;
	/**
		Influence of this track on 2D stabilization
		
		Type: float in [0, 1], default 0.0
	**/
	var weight_stab : Float;
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