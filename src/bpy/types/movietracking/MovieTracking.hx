package bpy.types.movietracking;
/**
	Match-moving data for tracking
**/
@:pythonImport("bpy.types.MovieTracking") extern class MovieTracking {
	/**
		Index of active object
		
		Type: int in [-inf, inf], default 0
	**/
	var active_object_index : Int;
	/**
		
		
		Type: MovieTrackingCamera, (readonly)
	**/
	var camera(default, never) : bpy.types.movietrackingcamera.MovieTrackingCamera;
	/**
		
		
		Type: MovieTrackingDopesheet, (readonly)
	**/
	var dopesheet(default, never) : bpy.types.movietrackingdopesheet.MovieTrackingDopesheet;
	/**
		Collection of objects in this tracking data object
		
		Type: MovieTrackingObjects bpy_prop_collection of MovieTrackingObject, (readonly)
	**/
	var objects(default, never) : bpy.types.movietrackingobjects.MovieTrackingObjects;
	/**
		Collection of plane tracks in this tracking data object
		
		Type: MovieTrackingPlaneTracks bpy_prop_collection of MovieTrackingPlaneTrack, (readonly)
	**/
	var plane_tracks(default, never) : bpy.types.movietrackingplanetracks.MovieTrackingPlaneTracks;
	/**
		
		
		Type: MovieTrackingReconstruction, (readonly)
	**/
	var reconstruction(default, never) : bpy.types.movietrackingreconstruction.MovieTrackingReconstruction;
	/**
		
		
		Type: MovieTrackingSettings, (readonly)
	**/
	var settings(default, never) : bpy.types.movietrackingsettings.MovieTrackingSettings;
	/**
		
		
		Type: MovieTrackingStabilization, (readonly)
	**/
	var stabilization(default, never) : bpy.types.movietrackingstabilization.MovieTrackingStabilization;
	/**
		Collection of tracks in this tracking data object
		
		Type: MovieTrackingTracks bpy_prop_collection of MovieTrackingTrack, (readonly)
	**/
	var tracks(default, never) : bpy.types.movietrackingtracks.MovieTrackingTracks;
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