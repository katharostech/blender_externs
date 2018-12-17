package bpy.types.movietrackingplanemarkers;
/**
	Collection of markers for movie tracking plane track
**/
@:native("bpy.types.MovieTrackingPlaneMarkers") extern class MovieTrackingPlaneMarkers {
	/**
		Get plane marker for specified frame
		@param frame Frame, Frame number to find marker for — int in [0, 1048574]
		@param exact Exact, Get plane marker at exact frame number rather than get estimated marker — boolean, (optional)
		
		@returns MovieTrackingPlaneMarker
	**/
	function find_frame(frame:Int, exact:Bool):bpy.types.movietrackingplanemarker.MovieTrackingPlaneMarker;
	/**
		Insert a new plane marker at the specified frame
		@param frame Frame, Frame number to insert marker to — int in [0, 1048574]
		
		@returns MovieTrackingPlaneMarker
	**/
	function insert_frame(frame:Int):bpy.types.movietrackingplanemarker.MovieTrackingPlaneMarker;
	/**
		Delete plane marker at specified frame
		@param frame Frame, Frame number to delete plane marker from — int in [0, 1048574]
	**/
	function delete_frame(frame:Int):Void;
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