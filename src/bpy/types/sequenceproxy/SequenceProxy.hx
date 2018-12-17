package bpy.types.sequenceproxy;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var RECORD_RUN : String = "RECORD_RUN";
	var FREE_RUN : String = "FREE_RUN";
	var FREE_RUN_REC_DATE : String = "FREE_RUN_REC_DATE";
	var RECORD_RUN_NO_GAPS : String = "RECORD_RUN_NO_GAPS";
}/**
	Proxy parameters for a sequence strip
**/
@:native("bpy.types.SequenceProxy") extern class SequenceProxy {
	/**
		Build 100% proxy resolution
		
		Type: boolean, default False
	**/
	var pybuild_100 : Bool;
	/**
		Build 25% proxy resolution
		
		Type: boolean, default False
	**/
	var pybuild_25 : Bool;
	/**
		Build 50% proxy resolution
		
		Type: boolean, default False
	**/
	var pybuild_50 : Bool;
	/**
		Build 75% proxy resolution
		
		Type: boolean, default False
	**/
	var pybuild_75 : Bool;
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
		Location to store the proxy files
		
		Type: string, default “”, (never None)
	**/
	var directory : String;
	/**
		Location of custom proxy file
		
		Type: string, default “”, (never None)
	**/
	var filepath : String;
	/**
		JPEG Quality of proxies to build
		
		Type: int in [0, 32767], default 0
	**/
	var quality : Int;
	/**
		Method for reading the inputs timecode
		
		Type: enum in [‘NONE’, ‘RECORD_RUN’, ‘FREE_RUN’, ‘FREE_RUN_REC_DATE’, ‘RECORD_RUN_NO_GAPS’], default ‘NONE’
	**/
	var timecode : bpy.types.sequenceproxy.SequenceProxy.Enum1;
	/**
		Overwrite existing proxy files when building
		
		Type: boolean, default False
	**/
	var use_overwrite : Bool;
	/**
		Use a custom directory to store data
		
		Type: boolean, default False
	**/
	var use_proxy_custom_directory : Bool;
	/**
		Use a custom file to read proxy data from
		
		Type: boolean, default False
	**/
	var use_proxy_custom_file : Bool;
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