package bpy.types.palettecolors;
/**
	Collection of palette colors
**/
@:native("bpy.types.PaletteColors") extern class PaletteColors {
	/**
		
		
		Type: PaletteColor
	**/
	var active : bpy.types.palettecolor.PaletteColor;
	/**
		Add a new color to the palette
		
		@returns PaletteColor
	**/
	function pyNew():bpy.types.palettecolor.PaletteColor;
	/**
		Remove a color from the palette
		@param color The color to remove — PaletteColor, (never None)
	**/
	function remove(color:bpy.types.palettecolor.PaletteColor):Void;
	/**
		Remove all colors from the palette
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