package bpy.types.movieclipproxy;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var RECORD_RUN : String = "RECORD_RUN";
	var FREE_RUN : String = "FREE_RUN";
	var FREE_RUN_REC_DATE : String = "FREE_RUN_REC_DATE";
	var FREE_RUN_NO_GAPS : String = "FREE_RUN_NO_GAPS";
}/**
	Proxy parameters for a movie clip
**/
@:pythonImport("bpy.types.MovieClipProxy") extern class MovieClipProxy {
	/**
		Build proxy resolution 100% of the original footage dimension
		
		Type: boolean, default False
	**/
	var build_100 : Bool;
	/**
		Build proxy resolution 25% of the original footage dimension
		
		Type: boolean, default False
	**/
	var build_25 : Bool;
	/**
		Build proxy resolution 50% of the original footage dimension
		
		Type: boolean, default False
	**/
	var build_50 : Bool;
	/**
		Build proxy resolution 75% of the original footage dimension
		
		Type: boolean, default False
	**/
	var build_75 : Bool;
	/**
		Build free run time code index
		
		Type: boolean, default False
	**/
	var build_free_run : Bool;
	/**
		Build free run time code index using Record Date/Time
		
		Type: boolean, default False
	**/
	var build_free_run_rec_date : Bool;
	/**
		Build record run time code index
		
		Type: boolean, default False
	**/
	var build_record_run : Bool;
	/**
		Build proxy resolution 100% of the original undistorted footage dimension
		
		Type: boolean, default False
	**/
	var build_undistorted_100 : Bool;
	/**
		Build proxy resolution 25% of the original undistorted footage dimension
		
		Type: boolean, default False
	**/
	var build_undistorted_25 : Bool;
	/**
		Build proxy resolution 50% of the original undistorted footage dimension
		
		Type: boolean, default False
	**/
	var build_undistorted_50 : Bool;
	/**
		Build proxy resolution 75% of the original undistorted footage dimension
		
		Type: boolean, default False
	**/
	var build_undistorted_75 : Bool;
	/**
		Location to store the proxy files
		
		Type: string, default “”, (never None)
	**/
	var directory : String;
	/**
		JPEG quality of proxy images
		
		Type: int in [0, 32767], default 0
	**/
	var quality : Int;
	/**
		
		
		Type: enum in [‘NONE’, ‘RECORD_RUN’, ‘FREE_RUN’, ‘FREE_RUN_REC_DATE’, ‘FREE_RUN_NO_GAPS’], default ‘NONE’
	**/
	var timecode : bpy.types.movieclipproxy.MovieClipProxy.Enum1;
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