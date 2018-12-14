package bpy.types.movietrackingreconstruction;
/**
	Match-moving reconstruction data from tracker
**/
@:pythonImport("bpy.types.MovieTrackingReconstruction") extern class MovieTrackingReconstruction {
	/**
		Average error of reconstruction
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var average_error(default, never) : Float;
	/**
		Collection of solved cameras
		
		Type: MovieTrackingReconstructedCameras bpy_prop_collection of MovieReconstructedCamera, (readonly)
	**/
	var cameras(default, never) : bpy.types.movietrackingreconstructedcameras.MovieTrackingReconstructedCameras;
	/**
		Is tracking data contains valid reconstruction information
		
		Type: boolean, default False, (readonly)
	**/
	var is_valid(default, never) : Bool;
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