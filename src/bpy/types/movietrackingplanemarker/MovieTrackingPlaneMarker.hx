package bpy.types.movietrackingplanemarker;
/**
	Match-moving plane marker data for tracking
**/
@:pythonImport("bpy.types.MovieTrackingPlaneMarker") extern class MovieTrackingPlaneMarker {
	/**
		Array of coordinates which represents UI rectangle corners in frame normalized coordinates
		
		Type: float multi-dimensional array of 4 * 2 items in [-inf, inf], default ((0.0, 0.0), (0.0, 0.0), (0.0, 0.0), (0.0, 0.0))
	**/
	var corners : Array<Float>;
	/**
		Frame number marker is keyframed on
		
		Type: int in [-inf, inf], default 0
	**/
	var frame : Int;
	/**
		Is marker muted for current frame
		
		Type: boolean, default False
	**/
	var mute : Bool;
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