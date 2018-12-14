package bpy.types.themestatusbar;
/**
	Theme settings for the Status Bar
**/
@:pythonImport("bpy.types.ThemeStatusBar") extern class ThemeStatusBar {
	/**
		Settings for space
		
		Type: ThemeSpaceGeneric, (readonly, never None)
	**/
	var space(default, never) : bpy.types.themespacegeneric.ThemeSpaceGeneric;
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