package bpy.types.moviereconstructedcamera;
/**
	Match-moving reconstructed camera data from tracker
**/
@:pythonImport("bpy.types.MovieReconstructedCamera") extern class MovieReconstructedCamera {
	/**
		Average error of reconstruction
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var average_error(default, never) : Float;
	/**
		Frame number marker is keyframed on
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var frame(default, never) : Int;
	/**
		Worldspace transformation matrix
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0)), (readonly)
	**/
	var matrix(default, never) : Array<Float>;
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