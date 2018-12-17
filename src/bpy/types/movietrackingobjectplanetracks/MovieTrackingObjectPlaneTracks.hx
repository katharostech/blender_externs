package bpy.types.movietrackingobjectplanetracks;
/**
	Collection of tracking plane tracks
**/
@:native("bpy.types.MovieTrackingObjectPlaneTracks") extern class MovieTrackingObjectPlaneTracks {
	/**
		Active track in this tracking data object
		
		Type: MovieTrackingTrack
	**/
	var active : bpy.types.movietrackingtrack.MovieTrackingTrack;
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