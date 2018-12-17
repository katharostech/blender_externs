package bpy.types.keyingset;
/**
	Settings that should be keyframed together
**/
@:native("bpy.types.KeyingSet") extern class KeyingSet {
	/**
		A short description of the keying set
		
		Type: string, default “”, (never None)
	**/
	var bl_description : String;
	/**
		If this is set, the Keying Set gets a custom ID, otherwise it takes the name of the class used to define the Keying Set (for example, if the class name is “BUILTIN_KSI_location”, and bl_idname is not set by the script, then bl_idname = “BUILTIN_KSI_location”)
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_label : String;
	/**
		Keying Set defines specific paths/settings to be keyframed (i.e. is not reliant on context info)
		
		Type: boolean, default False, (readonly)
	**/
	var is_path_absolute(default, never) : Bool;
	/**
		Keying Set Paths to define settings that get keyframed together
		
		Type: KeyingSetPaths bpy_prop_collection of KeyingSetPath, (readonly)
	**/
	var paths(default, never) : bpy.types.keyingsetpaths.KeyingSetPaths;
	/**
		Callback function defines for built-in Keying Sets
		
		Type: KeyingSetInfo, (readonly)
	**/
	var type_info(default, never) : bpy.types.keyingsetinfo.KeyingSetInfo;
	/**
		Only insert keyframes where they’re needed in the relevant F-Curves
		
		Type: boolean, default False
	**/
	var use_insertkey_needed : Bool;
	/**
		Override default setting to only insert keyframes where they’re needed in the relevant F-Curves
		
		Type: boolean, default False
	**/
	var use_insertkey_override_needed : Bool;
	/**
		Override default setting to insert keyframes based on ‘visual transforms’
		
		Type: boolean, default False
	**/
	var use_insertkey_override_visual : Bool;
	/**
		Override default setting to set color for newly added transformation F-Curves (Location, Rotation, Scale) to be based on the transform axis
		
		Type: boolean, default False
	**/
	var use_insertkey_override_xyz_to_rgb : Bool;
	/**
		Insert keyframes based on ‘visual transforms’
		
		Type: boolean, default False
	**/
	var use_insertkey_visual : Bool;
	/**
		Color for newly added transformation F-Curves (Location, Rotation, Scale) is based on the transform axis
		
		Type: boolean, default False
	**/
	var use_insertkey_xyz_to_rgb : Bool;
	/**
		Refresh Keying Set to ensure that it is valid for the current context (call before each use of one)
	**/
	function refresh():Void;
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