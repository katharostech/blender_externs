package bpy.types.themefontstyle;
@:enum abstract Enum1(String) from String to String {
	var UNFITTED : String = "UNFITTED";
	var FITTED : String = "FITTED";
}/**
	Theme settings for Font
**/
@:native("bpy.types.ThemeFontStyle") extern class ThemeFontStyle {
	/**
		Which style to use for font kerning
		
		Type: enum in [‘UNFITTED’, ‘FITTED’], default ‘UNFITTED’
	**/
	var font_kerning_style : bpy.types.themefontstyle.ThemeFontStyle.Enum1;
	/**
		
		
		Type: int in [6, 48], default 0
	**/
	var points : Int;
	/**
		Shadow size (0, 3 and 5 supported)
		
		Type: int in [0, 5], default 0
	**/
	var shadow : Int;
	/**
		
		
		Type: float in [0, 1], default 0.0
	**/
	var shadow_alpha : Float;
	/**
		Shadow offset in pixels
		
		Type: int in [-10, 10], default 0
	**/
	var shadow_offset_x : Int;
	/**
		Shadow offset in pixels
		
		Type: int in [-10, 10], default 0
	**/
	var shadow_offset_y : Int;
	/**
		Shadow color in gray value
		
		Type: float in [0, 1], default 0.0
	**/
	var shadow_value : Float;
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