package bpy.types.movietrackingobject;
/**
	Match-moving object tracking and reconstruction data
**/
@:native("bpy.types.MovieTrackingObject") extern class MovieTrackingObject {
	/**
		Object is used for camera tracking
		
		Type: boolean, default False, (readonly)
	**/
	var is_camera(default, never) : Bool;
	/**
		First keyframe used for reconstruction initialization
		
		Type: int in [-inf, inf], default 0
	**/
	var keyframe_a : Int;
	/**
		Second keyframe used for reconstruction initialization
		
		Type: int in [-inf, inf], default 0
	**/
	var keyframe_b : Int;
	/**
		Unique name of object
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Collection of plane tracks in this tracking data object
		
		Type: MovieTrackingObjectPlaneTracks bpy_prop_collection of MovieTrackingPlaneTrack, (readonly)
	**/
	var plane_tracks(default, never) : bpy.types.movietrackingobjectplanetracks.MovieTrackingObjectPlaneTracks;
	/**
		
		
		Type: MovieTrackingReconstruction, (readonly)
	**/
	var reconstruction(default, never) : bpy.types.movietrackingreconstruction.MovieTrackingReconstruction;
	/**
		Scale of object solution in camera space
		
		Type: float in [0.0001, 10000], default 1.0
	**/
	var scale : Float;
	/**
		Collection of tracks in this tracking data object
		
		Type: MovieTrackingObjectTracks bpy_prop_collection of MovieTrackingTrack, (readonly)
	**/
	var tracks(default, never) : bpy.types.movietrackingobjecttracks.MovieTrackingObjectTracks;
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
}