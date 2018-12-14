package bpy.types.brushtextureslot;
@:enum abstract Enum1(String) from String to String {
	var VIEW_PLANE : String = "VIEW_PLANE";
	var AREA_PLANE : String = "AREA_PLANE";
	var TILED : String = "TILED";
	var 3D : String = "3D";
	var RANDOM : String = "RANDOM";
	var STENCIL : String = "STENCIL";
}@:enum abstract Enum2(String) from String to String {
	var VIEW_PLANE : String = "VIEW_PLANE";
	var TILED : String = "TILED";
	var RANDOM : String = "RANDOM";
	var STENCIL : String = "STENCIL";
}@:enum abstract Enum3(String) from String to String {
	var VIEW_PLANE : String = "VIEW_PLANE";
	var TILED : String = "TILED";
	var 3D : String = "3D";
	var RANDOM : String = "RANDOM";
	var STENCIL : String = "STENCIL";
}/**
	Texture slot for textures in a Brush data-block
**/
@:pythonImport("bpy.types.BrushTextureSlot") extern class BrushTextureSlot {
	/**
		Brush texture rotation
		
		Type: float in [0, 6.28319], default 0.0
	**/
	var angle : Float;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_random_texture_angle(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_texture_angle(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_texture_angle_source(default, never) : Bool;
	/**
		
		
		Type: enum in [‘VIEW_PLANE’, ‘AREA_PLANE’, ‘TILED’, ‘3D’, ‘RANDOM’, ‘STENCIL’], default ‘VIEW_PLANE’
	**/
	var map_mode : bpy.types.brushtextureslot.BrushTextureSlot.Enum1;
	/**
		
		
		Type: enum in [‘VIEW_PLANE’, ‘TILED’, ‘RANDOM’, ‘STENCIL’], default ‘VIEW_PLANE’
	**/
	var mask_map_mode : bpy.types.brushtextureslot.BrushTextureSlot.Enum2;
	/**
		Brush texture random angle
		
		Type: float in [0, 6.28319], default 0.0
	**/
	var random_angle : Float;
	/**
		
		
		Type: enum in [‘VIEW_PLANE’, ‘TILED’, ‘3D’, ‘RANDOM’, ‘STENCIL’], default ‘VIEW_PLANE’
	**/
	var tex_paint_map_mode : bpy.types.brushtextureslot.BrushTextureSlot.Enum3;
	/**
		
		
		Type: boolean, default False
	**/
	var use_rake : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_random : Bool;
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