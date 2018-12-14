package bpy.types.movietrackingmarkers;
/**
	Collection of markers for movie tracking track
**/
@:pythonImport("bpy.types.MovieTrackingMarkers") extern class MovieTrackingMarkers {
	/**
		Get marker for specified frame
		@param frame Frame, Frame number to find marker for — int in [0, 1048574]
		@param exact Exact, Get marker at exact frame number rather than get estimated marker — boolean, (optional)
		
		@returns MovieTrackingMarker
	**/
	function find_frame(frame:Int, exact:Bool):bpy.types.movietrackingmarker.MovieTrackingMarker;
	/**
		Insert a new marker at the specified frame
		@param frame Frame, Frame number to insert marker to — int in [0, 1048574]
		@param co Coordinate, Place new marker at the given frame using specified in normalized space coordinates — float array of 2 items in [-1, 1], (optional)
		
		@returns MovieTrackingMarker
	**/
	function insert_frame(frame:Int, co:Array<Float>):bpy.types.movietrackingmarker.MovieTrackingMarker;
	/**
		Delete marker at specified frame
		@param frame Frame, Frame number to delete marker from — int in [0, 1048574]
	**/
	function delete_frame(frame:Int):Void;
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