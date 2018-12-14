package bpy.types.movietrackingstabilization;
@:enum abstract Enum1(String) from String to String {
	var NEAREST : String = "NEAREST";
	var BILINEAR : String = "BILINEAR";
	var BICUBIC : String = "BICUBIC";
}/**
	2D stabilization based on tracking markers
**/
@:pythonImport("bpy.types.MovieTrackingStabilization") extern class MovieTrackingStabilization {
	/**
		Index of active track in rotation stabilization tracks list
		
		Type: int in [-inf, inf], default 0
	**/
	var active_rotation_track_index : Int;
	/**
		Index of active track in translation stabilization tracks list
		
		Type: int in [-inf, inf], default 0
	**/
	var active_track_index : Int;
	/**
		Reference point to anchor stabilization (other frames will be adjusted relative to this frame’s position)
		
		Type: int in [0, 1048574], default 0
	**/
	var anchor_frame : Int;
	/**
		Interpolation to use for sub-pixel shifts and rotations due to stabilization
		
		Type: enum in [‘NEAREST’, ‘BILINEAR’, ‘BICUBIC’], default ‘NEAREST’
	**/
	var filter_type : bpy.types.movietrackingstabilization.MovieTrackingStabilization.Enum1;
	/**
		Influence of stabilization algorithm on footage location
		
		Type: float in [0, 1], default 0.0
	**/
	var influence_location : Float;
	/**
		Influence of stabilization algorithm on footage rotation
		
		Type: float in [0, 1], default 0.0
	**/
	var influence_rotation : Float;
	/**
		Influence of stabilization algorithm on footage scale
		
		Type: float in [0, 1], default 0.0
	**/
	var influence_scale : Float;
	/**
		Collection of tracks used for 2D stabilization (translation)
		
		Type: bpy_prop_collection of MovieTrackingTrack, (readonly)
	**/
	var rotation_tracks(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Limit the amount of automatic scaling
		
		Type: float in [0, 10], default 0.0
	**/
	var scale_max : Float;
	/**
		Show UI list of tracks participating in stabilization
		
		Type: boolean, default False
	**/
	var show_tracks_expanded : Bool;
	/**
		Known relative offset of original shot, will be subtracted (e.g. for panning shot, can be animated)
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var target_position : Array<Float>;
	/**
		Rotation present on original shot, will be compensated (e.g. for deliberate tilting)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var target_rotation : Float;
	/**
		Explicitly scale resulting frame to compensate zoom of original shot
		
		Type: float in [1.192e-07, inf], default 0.0
	**/
	var target_scale : Float;
	/**
		Collection of tracks used for 2D stabilization (translation)
		
		Type: bpy_prop_collection of MovieTrackingTrack, (readonly)
	**/
	var tracks(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Use 2D stabilization for footage
		
		Type: boolean, default False
	**/
	var use_2d_stabilization : Bool;
	/**
		Automatically scale footage to cover unfilled areas when stabilizing
		
		Type: boolean, default False
	**/
	var use_autoscale : Bool;
	/**
		Stabilize detected rotation around center of frame
		
		Type: boolean, default False
	**/
	var use_stabilize_rotation : Bool;
	/**
		Compensate any scale changes relative to center of rotation
		
		Type: boolean, default False
	**/
	var use_stabilize_scale : Bool;
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