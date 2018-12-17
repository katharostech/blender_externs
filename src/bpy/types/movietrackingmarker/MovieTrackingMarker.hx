package bpy.types.movietrackingmarker;
/**
	Match-moving marker data for tracking
**/
@:native("bpy.types.MovieTrackingMarker") extern class MovieTrackingMarker {
	/**
		Marker position at frame in normalized coordinates
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var co : Array<Float>;
	/**
		Frame number marker is keyframed on
		
		Type: int in [-inf, inf], default 0
	**/
	var frame : Int;
	/**
		Whether the position of the marker is keyframed or tracked
		
		Type: boolean, default False
	**/
	var is_keyed : Bool;
	/**
		Is marker muted for current frame
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		Pattern area bounding box in normalized coordinates
		
		Type: float multi-dimensional array of 2 * 2 items in [-inf, inf], default ((0.0, 0.0), (0.0, 0.0)), (readonly)
	**/
	var pattern_bound_box(default, never) : Array<Float>;
	/**
		Array of coordinates which represents pattern’s corners in normalized coordinates relative to marker position
		
		Type: float multi-dimensional array of 4 * 2 items in [-inf, inf], default ((0.0, 0.0), (0.0, 0.0), (0.0, 0.0), (0.0, 0.0))
	**/
	var pattern_corners : Array<Float>;
	/**
		Right-bottom corner of search area in normalized coordinates relative to marker position
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var search_max : Array<Float>;
	/**
		Left-bottom corner of search area in normalized coordinates relative to marker position
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var search_min : Array<Float>;
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