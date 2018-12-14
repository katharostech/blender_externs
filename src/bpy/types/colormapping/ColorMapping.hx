package bpy.types.colormapping;
@:enum abstract Enum1(String) from String to String {
	var MIX : String = "MIX";
	var DARKEN : String = "DARKEN";
	var MULTIPLY : String = "MULTIPLY";
	var LIGHTEN : String = "LIGHTEN";
	var SCREEN : String = "SCREEN";
	var ADD : String = "ADD";
	var OVERLAY : String = "OVERLAY";
	var SOFT_LIGHT : String = "SOFT_LIGHT";
	var LINEAR_LIGHT : String = "LINEAR_LIGHT";
	var DIFFERENCE : String = "DIFFERENCE";
	var SUBTRACT : String = "SUBTRACT";
	var DIVIDE : String = "DIVIDE";
	var HUE : String = "HUE";
	var SATURATION : String = "SATURATION";
	var COLOR : String = "COLOR";
	var VALUE : String = "VALUE";
}/**
	Color mapping settings
**/
@:pythonImport("bpy.types.ColorMapping") extern class ColorMapping {
	/**
		Blend color to mix with texture output color
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var blend_color : Array<Float>;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var blend_factor : Float;
	/**
		Mode used to mix with texture output color
		
		Type: enum in [‘MIX’, ‘DARKEN’, ‘MULTIPLY’, ‘LIGHTEN’, ‘SCREEN’, ‘ADD’, ‘OVERLAY’, ‘SOFT_LIGHT’, ‘LINEAR_LIGHT’, ‘DIFFERENCE’, ‘SUBTRACT’, ‘DIVIDE’, ‘HUE’, ‘SATURATION’, ‘COLOR’, ‘VALUE’], default ‘MIX’
	**/
	var blend_type : bpy.types.colormapping.ColorMapping.Enum1;
	/**
		Adjust the brightness of the texture
		
		Type: float in [0, 2], default 0.0
	**/
	var brightness : Float;
	/**
		
		
		Type: ColorRamp, (readonly)
	**/
	var color_ramp(default, never) : bpy.types.colorramp.ColorRamp;
	/**
		Adjust the contrast of the texture
		
		Type: float in [0, 5], default 0.0
	**/
	var contrast : Float;
	/**
		Adjust the saturation of colors in the texture
		
		Type: float in [0, 2], default 0.0
	**/
	var saturation : Float;
	/**
		Toggle color ramp operations
		
		Type: boolean, default False
	**/
	var use_color_ramp : Bool;
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