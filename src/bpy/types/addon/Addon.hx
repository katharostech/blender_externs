package bpy.types.addon;
/**
	Python add-ons to be loaded automatically
**/
@:pythonImport("bpy.types.Addon") extern class Addon {
	/**
		Module name
		
		Type: string, default “”, (never None)
	**/
	var module : String;
	/**
		
		
		Type: AddonPreferences, (readonly)
	**/
	var preferences(default, never) : bpy.types.addonpreferences.AddonPreferences;
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