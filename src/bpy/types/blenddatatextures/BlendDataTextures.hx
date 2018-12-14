package bpy.types.blenddatatextures;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var BLEND : String = "BLEND";
	var CLOUDS : String = "CLOUDS";
	var DISTORTED_NOISE : String = "DISTORTED_NOISE";
	var IMAGE : String = "IMAGE";
	var MAGIC : String = "MAGIC";
	var MARBLE : String = "MARBLE";
	var MUSGRAVE : String = "MUSGRAVE";
	var NOISE : String = "NOISE";
	var STUCCI : String = "STUCCI";
	var VORONOI : String = "VORONOI";
	var WOOD : String = "WOOD";
}/**
	Collection of textures
**/
@:pythonImport("bpy.types.BlendDataTextures") extern class BlendDataTextures {
	/**
		Add a new texture to the main database
		@param name New name for the data-block — string, (never None)
		@param type Type, The type of texture to addNONE None.BLEND Blend, Procedural - create a ramp texture.CLOUDS Clouds, Procedural - create a cloud-like fractal noise texture.DISTORTED_NOISE Distorted Noise, Procedural - noise texture distorted by two noise algorithms.IMAGE Image or Movie, Allow for images or movies to be used as textures.MAGIC Magic, Procedural - color texture based on trigonometric functions.MARBLE Marble, Procedural - marble-like noise texture with wave generated bands.MUSGRAVE Musgrave, Procedural - highly flexible fractal noise texture.NOISE Noise, Procedural - random noise, gives a different result every time, for every frame, for every pixel.STUCCI Stucci, Procedural - create a fractal noise texture.VORONOI Voronoi, Procedural - create cell-like patterns based on Worley noise.WOOD Wood, Procedural - wave generated bands or rings, with optional noise. — enum in ['NONE', 'BLEND', 'CLOUDS', 'DISTORTED_NOISE', 'IMAGE', 'MAGIC', 'MARBLE', 'MUSGRAVE', 'NOISE', 'STUCCI', 'VORONOI', 'WOOD']
		
		@returns Texture
	**/
	function new(name:String, type:bpy.types.blenddatatextures.BlendDataTextures.Enum1):bpy.types.texture.Texture;
	/**
		Remove a texture from the current blendfile
		@param texture Texture to remove — Texture, (never None)
		@param do_unlink Unlink all usages of this texture before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this texture — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this texture — boolean, (optional)
	**/
	function remove(texture:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Dynamic):Void;
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