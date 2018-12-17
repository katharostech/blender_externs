package bpy.types.keyingsetpaths;
@:enum abstract Enum1(String) from String to String {
	var NAMED : String = "NAMED";
	var NONE : String = "NONE";
	var KEYINGSET : String = "KEYINGSET";
}/**
	Collection of keying set paths
**/
@:native("bpy.types.KeyingSetPaths") extern class KeyingSetPaths {
	/**
		Active Keying Set used to insert/delete keyframes
		
		Type: KeyingSetPath
	**/
	var active : bpy.types.keyingsetpath.KeyingSetPath;
	/**
		Current Keying Set index
		
		Type: int in [-inf, inf], default 0
	**/
	var active_index : Int;
	/**
		Add a new path for the Keying Set
		@param target_id Target ID, ID data-block for the destination — ID
		@param data_path Data-Path, RNA-Path to destination property — string, (never None)
		@param index Index, The index of the destination property (i.e. axis of Location/Rotation/etc.), or -1 for the entire array — int in [-1, inf], (optional)
		@param group_method Grouping Method, Method used to define which Group-name to use — enum in ['NAMED', 'NONE', 'KEYINGSET'], (optional)
		@param group_name Group Name, Name of Action Group to assign destination to (only if grouping mode is to use this name) — string, (optional, never None)
		
		@returns KeyingSetPath
	**/
	function add(target_id:bpy.types.id.ID, data_path:String, index:Int, group_method:bpy.types.keyingsetpaths.KeyingSetPaths.Enum1, group_name:String):bpy.types.keyingsetpath.KeyingSetPath;
	/**
		Remove the given path from the Keying Set
		@param path Path — KeyingSetPath, (never None)
	**/
	function remove(path:bpy.types.keyingsetpath.KeyingSetPath):Void;
	/**
		Remove all the paths from the Keying Set
	**/
	function clear():Void;
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