package bpy.types.textureslot;
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
}@:enum abstract Enum2(String) from String to String {
	var DUMMY : String = "DUMMY";
}/**
	Texture slot defining the mapping and influence of a texture
**/
@:native("bpy.types.TextureSlot") extern class TextureSlot {
	/**
		Mode used to apply the texture
		
		Type: enum in [‘MIX’, ‘DARKEN’, ‘MULTIPLY’, ‘LIGHTEN’, ‘SCREEN’, ‘ADD’, ‘OVERLAY’, ‘SOFT_LIGHT’, ‘LINEAR_LIGHT’, ‘DIFFERENCE’, ‘SUBTRACT’, ‘DIVIDE’, ‘HUE’, ‘SATURATION’, ‘COLOR’, ‘VALUE’], default ‘MIX’
	**/
	var blend_type : bpy.types.textureslot.TextureSlot.Enum1;
	/**
		Default color for textures that don’t return RGB or when RGB to intensity is enabled
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		Value to use for Ref, Spec, Amb, Emit, Alpha, RayMir, TransLu and Hard
		
		Type: float in [-inf, inf], default 0.0
	**/
	var default_value : Float;
	/**
		Invert the values of the texture to reverse its effect
		
		Type: boolean, default False
	**/
	var invert : Bool;
	/**
		Texture slot name
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		Fine tune of the texture mapping X, Y and Z locations
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var offset : Array<Float>;
	/**
		Which output node to use, for node-based textures
		
		Type: enum in [‘DUMMY’], default ‘DUMMY’
	**/
	var output_node : bpy.types.textureslot.TextureSlot.Enum2;
	/**
		Set scaling for the texture’s X, Y and Z sizes
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var scale : Array<Float>;
	/**
		Texture data-block used by this texture slot
		
		Type: Texture
	**/
	var texture : bpy.types.texture.Texture;
	/**
		Convert texture RGB values to intensity (gray) values
		
		Type: boolean, default False
	**/
	var use_rgb_to_intensity : Bool;
	/**
		Use this texture as a blending value on the next texture
		
		Type: boolean, default False
	**/
	var use_stencil : Bool;
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