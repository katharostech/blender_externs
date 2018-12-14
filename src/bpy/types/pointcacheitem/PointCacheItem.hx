package bpy.types.pointcacheitem;
@:enum abstract Enum1(String) from String to String {
	var NO : String = "NO";
	var LIGHT : String = "LIGHT";
	var HEAVY : String = "HEAVY";
}/**
	point cache for physics simulations
**/
@:pythonImport("bpy.types.PointCacheItem") extern class PointCacheItem {
	/**
		Compression method to be used
		
		Type: enum in [‘NO’, ‘LIGHT’, ‘HEAVY’], default ‘NO’
	**/
	var compression : bpy.types.pointcacheitem.PointCacheItem.Enum1;
	/**
		Cache file path
		
		Type: string, default “”, (never None)
	**/
	var filepath : String;
	/**
		Frame on which the simulation stops
		
		Type: int in [1, 1048574], default 0
	**/
	var frame_end : Int;
	/**
		Frame on which the simulation starts
		
		Type: int in [-1048574, 1048574], default 0
	**/
	var frame_start : Int;
	/**
		Number of frames between cached frames
		
		Type: int in [1, 20], default 0
	**/
	var frame_step : Int;
	/**
		Index number of cache files
		
		Type: int in [-1, 100], default 0
	**/
	var index : Int;
	/**
		Info on current cache status
		
		Type: string, default “”, (readonly, never None)
	**/
	var info(default, never) : String;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_baked(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_baking(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_frame_skip(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_outdated(default, never) : Bool;
	/**
		Cache name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Save cache files to disk (.blend file must be saved first)
		
		Type: boolean, default False
	**/
	var use_disk_cache : Bool;
	/**
		Read cache from an external location
		
		Type: boolean, default False
	**/
	var use_external : Bool;
	/**
		Use this file’s path for the disk cache when library linked into another file (for local bakes per scene file, disable this option)
		
		Type: boolean, default False
	**/
	var use_library_path : Bool;
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