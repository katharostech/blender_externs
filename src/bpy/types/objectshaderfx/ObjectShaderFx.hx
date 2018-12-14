package bpy.types.objectshaderfx;
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
	Collection of object effects
**/
@:pythonImport("bpy.types.ObjectShaderFx") extern class ObjectShaderFx {
	/**
		Add a new shader fx
		@param name New name for the effect — string, (never None)
		@param type Effect type to addFX_BLUR Blur, Apply Gaussian Blur to object.FX_COLORIZE Colorize, Apply different tint effects.FX_FLIP Flip, Flip image.FX_GLOW Glow, Create a glow effect.FX_LIGHT Light, Simulate ilumination.FX_PIXEL Pixelate, Pixelate image.FX_RIM Rim, Add a rim to the image.FX_SHADOW Shadow, Create a shadow effect.FX_SWIRL Swirl, Create a rotation distortion.FX_WAVE Wave Distortion, Apply sinusoidal deformation. — enum in ['FX_BLUR', 'FX_COLORIZE', 'FX_FLIP', 'FX_GLOW', 'FX_LIGHT', 'FX_PIXEL', 'FX_RIM', 'FX_SHADOW', 'FX_SWIRL', 'FX_WAVE']
		
		@returns ShaderFx
	**/
	function new(name:String, type:bpy.types.objectshaderfx.ObjectShaderFx.Enum1):bpy.types.shaderfx.ShaderFx;
	/**
		Remove an existing effect from the object
		@param shader_fx Effect to remove — ShaderFx, (never None)
	**/
	function remove(shader_fx:bpy.types.shaderfx.ShaderFx):Void;
	/**
		Remove all effects from the object
	**/
	function clear():Void;
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