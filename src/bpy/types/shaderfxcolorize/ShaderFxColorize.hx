package bpy.types.shaderfxcolorize;
@:enum abstract Enum1(String) from String to String {
	var GRAYSCALE : String = "GRAYSCALE";
	var SEPIA : String = "SEPIA";
	var BITONE : String = "BITONE";
	var TRANSPARENT : String = "TRANSPARENT";
	var CUSTOM : String = "CUSTOM";
}/**
	Colorize effect
**/
@:pythonImport("bpy.types.ShaderFxColorize") extern class ShaderFxColorize {
	/**
		Mix factor
		
		Type: float in [0, 1], default 0.0
	**/
	var factor : Float;
	/**
		Second color used for effect
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var high_color : Array<Float>;
	/**
		First color used for effect
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var low_color : Array<Float>;
	/**
		Effect mode
		
		Type: enum in [‘GRAYSCALE’, ‘SEPIA’, ‘BITONE’, ‘TRANSPARENT’, ‘CUSTOM’], default ‘GRAYSCALE’
	**/
	var mode : bpy.types.shaderfxcolorize.ShaderFxColorize.Enum1;
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
	/**
		Effect name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘FX_BLUR’, ‘FX_COLORIZE’, ‘FX_FLIP’, ‘FX_GLOW’, ‘FX_LIGHT’, ‘FX_PIXEL’, ‘FX_RIM’, ‘FX_SHADOW’, ‘FX_SWIRL’, ‘FX_WAVE’], default ‘FX_BLUR’, (readonly)
	**/
	var type(default, never) : bpy.types.shaderfx.ShaderFx.Enum1;
	/**
		Display effect in viewport
		
		Type: boolean, default False
	**/
	var show_viewport : Bool;
	/**
		Use effect during render
		
		Type: boolean, default False
	**/
	var show_render : Bool;
	/**
		Display effect in Edit mode
		
		Type: boolean, default False
	**/
	var show_in_editmode : Bool;
	/**
		Set effect expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
}