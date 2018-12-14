package bpy.types.shaderfxglow;
@:enum abstract Enum1(String) from String to String {
	var LUMINANCE : String = "LUMINANCE";
	var COLOR : String = "COLOR";
}/**
	Glow effect
**/
@:pythonImport("bpy.types.ShaderFxGlow") extern class ShaderFxGlow {
	/**
		Color used for generated glow
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var glow_color : Array<Float>;
	/**
		Glow mode
		
		Type: enum in [‘LUMINANCE’, ‘COLOR’], default ‘LUMINANCE’
	**/
	var mode : bpy.types.shaderfxglow.ShaderFxGlow.Enum1;
	/**
		Number of pixels for bluring glow (set to 0 to disable)
		
		Type: int in [0, inf], default 0
	**/
	var radius : Int;
	/**
		Number of Blur Samples
		
		Type: int in [1, 32], default 4
	**/
	var samples : Int;
	/**
		Color selected to apply glow
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var select_color : Array<Float>;
	/**
		Limit to select color for glow effect
		
		Type: float in [0, 1], default 0.0
	**/
	var threshold : Float;
	/**
		Glow only areas with alpha
		
		Type: boolean, default False
	**/
	var use_alpha_mode : Bool;
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