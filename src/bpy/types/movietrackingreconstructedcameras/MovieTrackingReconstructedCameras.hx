package bpy.types.movietrackingreconstructedcameras;
/**
	Collection of solved cameras
**/
@:native("bpy.types.MovieTrackingReconstructedCameras") extern class MovieTrackingReconstructedCameras {
	/**
		Find a reconstructed camera for a give frame number
		@param frame Frame, Frame number to find camera for — int in [0, 1048574], (optional)
		
		@returns MovieReconstructedCamera
	**/
	function find_frame(frame:Int):bpy.types.moviereconstructedcamera.MovieReconstructedCamera;
	/**
		Return interpolated camera matrix for a given frame
		@param frame Frame, Frame number to find camera for — int in [0, 1048574], (optional)
		
		@returns float multi-dimensional array of 4 * 4 items in [-inf, inf]
	**/
	function matrix_from_frame(frame:Int):Array<Float>;
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