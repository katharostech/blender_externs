package bpy.types.movietrackingobjecttracks;
/**
	Collection of movie tracking tracks
**/
@:native("bpy.types.MovieTrackingObjectTracks") extern class MovieTrackingObjectTracks {
	/**
		Active track in this tracking data object
		
		Type: MovieTrackingTrack
	**/
	var active : bpy.types.movietrackingtrack.MovieTrackingTrack;
	/**
		create new motion track in this movie clip
		@param name Name of new track — string, (optional, never None)
		@param frame Frame, Frame number to add tracks on — int in [0, 1048574], (optional)
		
		@returns MovieTrackingTrack
	**/
	function pyNew(name:String, frame:Int):bpy.types.movietrackingtrack.MovieTrackingTrack;
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