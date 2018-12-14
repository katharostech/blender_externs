package bpy.types.shaderfx;
@:enum abstract Enum1(String) from String to String {
	var FX_BLUR : String = "FX_BLUR";
	var FX_COLORIZE : String = "FX_COLORIZE";
	var FX_FLIP : String = "FX_FLIP";
	var FX_GLOW : String = "FX_GLOW";
	var FX_LIGHT : String = "FX_LIGHT";
	var FX_PIXEL : String = "FX_PIXEL";
	var FX_RIM : String = "FX_RIM";
	var FX_SHADOW : String = "FX_SHADOW";
	var FX_SWIRL : String = "FX_SWIRL";
	var FX_WAVE : String = "FX_WAVE";
}/**
	Effect affecting the grease pencil object
**/
@:pythonImport("bpy.types.ShaderFx") extern class ShaderFx {
	/**
		Effect name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Set effect expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Display effect in Edit mode
		
		Type: boolean, default False
	**/
	var show_in_editmode : Bool;
	/**
		Use effect during render
		
		Type: boolean, default False
	**/
	var show_render : Bool;
	/**
		Display effect in viewport
		
		Type: boolean, default False
	**/
	var show_viewport : Bool;
	/**
		
		
		Type: enum in [‘FX_BLUR’, ‘FX_COLORIZE’, ‘FX_FLIP’, ‘FX_GLOW’, ‘FX_LIGHT’, ‘FX_PIXEL’, ‘FX_RIM’, ‘FX_SHADOW’, ‘FX_SWIRL’, ‘FX_WAVE’], default ‘FX_BLUR’, (readonly)
	**/
	var type(default, never) : bpy.types.shaderfx.ShaderFx.Enum1;
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