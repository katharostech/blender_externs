package bpy.types.themestyle;
/**
	Theme settings for style sets
**/
@:pythonImport("bpy.types.ThemeStyle") extern class ThemeStyle {
	/**
		
		
		Type: ThemeFontStyle, (readonly, never None)
	**/
	var panel_title(default, never) : bpy.types.themefontstyle.ThemeFontStyle;
	/**
		
		
		Type: ThemeFontStyle, (readonly, never None)
	**/
	var widget(default, never) : bpy.types.themefontstyle.ThemeFontStyle;
	/**
		
		
		Type: ThemeFontStyle, (readonly, never None)
	**/
	var widget_label(default, never) : bpy.types.themefontstyle.ThemeFontStyle;
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