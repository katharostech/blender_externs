package bpy.types.movietrackingplanetrack;
/**
	Match-moving plane track data for tracking
**/
@:pythonImport("bpy.types.MovieTrackingPlaneTrack") extern class MovieTrackingPlaneTrack {
	/**
		Image displayed in the track during editing in clip editor
		
		Type: Image
	**/
	var image : bpy.types.image.Image;
	/**
		Opacity of the image
		
		Type: float in [0, 1], default 0.0
	**/
	var image_opacity : Float;
	/**
		Collection of markers in track
		
		Type: MovieTrackingPlaneMarkers bpy_prop_collection of MovieTrackingPlaneMarker, (readonly)
	**/
	var markers(default, never) : bpy.types.movietrackingplanemarkers.MovieTrackingPlaneMarkers;
	/**
		Unique name of track
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Plane track is selected
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Automatic keyframe insertion when moving plane corners
		
		Type: boolean, default False
	**/
	var use_auto_keying : Bool;
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