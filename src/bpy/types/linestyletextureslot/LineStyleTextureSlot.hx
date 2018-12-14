package bpy.types.linestyletextureslot;
@:enum abstract Enum1(String) from String to String {
	var FLAT : String = "FLAT";
	var CUBE : String = "CUBE";
	var TUBE : String = "TUBE";
	var SPHERE : String = "SPHERE";
}@:enum abstract Enum2(String) from String to String {
	var NONE : String = "NONE";
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum4(String) from String to String {
	var NONE : String = "NONE";
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum5(String) from String to String {
	var WINDOW : String = "WINDOW";
	var GLOBAL : String = "GLOBAL";
	var ALONG_STROKE : String = "ALONG_STROKE";
	var ORCO : String = "ORCO";
}/**
	Texture slot for textures in a LineStyle data-block
**/
@:pythonImport("bpy.types.LineStyleTextureSlot") extern class LineStyleTextureSlot {
	/**
		Amount texture affects alpha
		
		Type: float in [-inf, inf], default 0.0
	**/
	var alpha_factor : Float;
	/**
		Amount texture affects diffuse color
		
		Type: float in [-inf, inf], default 0.0
	**/
	var diffuse_color_factor : Float;
	/**
		
		
		Type: enum in [‘FLAT’, ‘CUBE’, ‘TUBE’, ‘SPHERE’], default ‘FLAT’
	**/
	var mapping : bpy.types.linestyletextureslot.LineStyleTextureSlot.Enum1;
	/**
		
		
		Type: enum in [‘NONE’, ‘X’, ‘Y’, ‘Z’], default ‘NONE’
	**/
	var mapping_x : bpy.types.linestyletextureslot.LineStyleTextureSlot.Enum2;
	/**
		
		
		Type: enum in [‘NONE’, ‘X’, ‘Y’, ‘Z’], default ‘NONE’
	**/
	var mapping_y : bpy.types.linestyletextureslot.LineStyleTextureSlot.Enum3;
	/**
		
		
		Type: enum in [‘NONE’, ‘X’, ‘Y’, ‘Z’], default ‘NONE’
	**/
	var mapping_z : bpy.types.linestyletextureslot.LineStyleTextureSlot.Enum4;
	/**
		Texture coordinates used to map the texture onto the background
		
		Type: enum in [‘WINDOW’, ‘GLOBAL’, ‘ALONG_STROKE’, ‘ORCO’], default ‘WINDOW’
	**/
	var texture_coords : bpy.types.linestyletextureslot.LineStyleTextureSlot.Enum5;
	/**
		The texture affects the alpha value
		
		Type: boolean, default False
	**/
	var use_map_alpha : Bool;
	/**
		The texture affects basic color of the stroke
		
		Type: boolean, default False
	**/
	var use_map_color_diffuse : Bool;
	/**
		Lower half of the texture is for tips of the stroke
		
		Type: boolean, default False
	**/
	var use_tips : Bool;
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
		Texture data-block used by this texture slot
		
		Type: Texture
	**/
	var texture : bpy.types.texture.Texture;
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
		Set scaling for the texture’s X, Y and Z sizes
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var scale : Array<Float>;
	/**
		Default color for textures that don’t return RGB or when RGB to intensity is enabled
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		Mode used to apply the texture
		
		Type: enum in [‘MIX’, ‘DARKEN’, ‘MULTIPLY’, ‘LIGHTEN’, ‘SCREEN’, ‘ADD’, ‘OVERLAY’, ‘SOFT_LIGHT’, ‘LINEAR_LIGHT’, ‘DIFFERENCE’, ‘SUBTRACT’, ‘DIVIDE’, ‘HUE’, ‘SATURATION’, ‘COLOR’, ‘VALUE’], default ‘MIX’
	**/
	var blend_type : bpy.types.textureslot.TextureSlot.Enum1;
	/**
		Use this texture as a blending value on the next texture
		
		Type: boolean, default False
	**/
	var use_stencil : Bool;
	/**
		Invert the values of the texture to reverse its effect
		
		Type: boolean, default False
	**/
	var invert : Bool;
	/**
		Convert texture RGB values to intensity (gray) values
		
		Type: boolean, default False
	**/
	var use_rgb_to_intensity : Bool;
	/**
		Value to use for Ref, Spec, Amb, Emit, Alpha, RayMir, TransLu and Hard
		
		Type: float in [-inf, inf], default 0.0
	**/
	var default_value : Float;
	/**
		Which output node to use, for node-based textures
		
		Type: enum in [‘DUMMY’], default ‘DUMMY’
	**/
	var output_node : bpy.types.textureslot.TextureSlot.Enum2;
}