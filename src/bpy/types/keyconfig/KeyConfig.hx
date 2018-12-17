package bpy.types.keyconfig;
/**
	Input configuration, including keymaps
**/
@:native("bpy.types.KeyConfig") extern class KeyConfig {
	/**
		Indicates that a keyconfig was defined by the user
		
		Type: boolean, default False, (readonly)
	**/
	var is_user_defined(default, never) : Bool;
	/**
		Key maps configured as part of this configuration
		
		Type: KeyMaps bpy_prop_collection of KeyMap, (readonly)
	**/
	var keymaps(default, never) : bpy.types.keymaps.KeyMaps;
	/**
		Name of the key configuration
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: KeyConfigPreferences, (readonly)
	**/
	var preferences(default, never) : bpy.types.keyconfigpreferences.KeyConfigPreferences;
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