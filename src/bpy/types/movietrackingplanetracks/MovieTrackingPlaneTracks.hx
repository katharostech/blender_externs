package bpy.types.movietrackingplanetracks;
/**
	Collection of movie tracking plane tracks
**/
@:pythonImport("bpy.types.MovieTrackingPlaneTracks") extern class MovieTrackingPlaneTracks {
	/**
		Active plane track in this tracking data object
		
		Type: MovieTrackingPlaneTrack
	**/
	var active : bpy.types.movietrackingplanetrack.MovieTrackingPlaneTrack;
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