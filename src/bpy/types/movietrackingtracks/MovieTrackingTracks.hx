package bpy.types.movietrackingtracks;
/**
	Collection of movie tracking tracks
**/
@:pythonImport("bpy.types.MovieTrackingTracks") extern class MovieTrackingTracks {
	/**
		Active track in this tracking data object
		
		Type: MovieTrackingTrack
	**/
	var active : bpy.types.movietrackingtrack.MovieTrackingTrack;
	/**
		Create new motion track in this movie clip
		@param name Name of new track — string, (optional, never None)
		@param frame Frame, Frame number to add track on — int in [0, 1048574], (optional)
		
		@returns MovieTrackingTrack
	**/
	function new(name:String, frame:Int):bpy.types.movietrackingtrack.MovieTrackingTrack;
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