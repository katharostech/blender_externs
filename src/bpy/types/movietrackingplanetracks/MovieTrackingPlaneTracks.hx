package bpy.types.movietrackingplanetracks;
/**
	Collection of movie tracking plane tracks
**/
@:native("bpy.types.MovieTrackingPlaneTracks") extern class MovieTrackingPlaneTracks {
	/**
		Active plane track in this tracking data object
		
		Type: MovieTrackingPlaneTrack
	**/
	var active : bpy.types.movietrackingplanetrack.MovieTrackingPlaneTrack;
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