package bpy.types.particlesettingstextureslot;
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
	var GLOBAL : String = "GLOBAL";
	var OBJECT : String = "OBJECT";
	var UV : String = "UV";
	var ORCO : String = "ORCO";
	var STRAND : String = "STRAND";
}/**
	Texture slot for textures in a Particle Settings data-block
**/
@:pythonImport("bpy.types.ParticleSettingsTextureSlot") extern class ParticleSettingsTextureSlot {
	/**
		Amount texture affects child clump
		
		Type: float in [-inf, inf], default 0.0
	**/
	var clump_factor : Float;
	/**
		Amount texture affects particle damping
		
		Type: float in [-inf, inf], default 0.0
	**/
	var damp_factor : Float;
	/**
		Amount texture affects particle density
		
		Type: float in [-inf, inf], default 0.0
	**/
	var density_factor : Float;
	/**
		Amount texture affects particle force fields
		
		Type: float in [-inf, inf], default 0.0
	**/
	var field_factor : Float;
	/**
		Amount texture affects particle gravity
		
		Type: float in [-inf, inf], default 0.0
	**/
	var gravity_factor : Float;
	/**
		Amount texture affects child kink amplitude
		
		Type: float in [-inf, inf], default 0.0
	**/
	var kink_amp_factor : Float;
	/**
		Amount texture affects child kink frequency
		
		Type: float in [-inf, inf], default 0.0
	**/
	var kink_freq_factor : Float;
	/**
		Amount texture affects child hair length
		
		Type: float in [-inf, inf], default 0.0
	**/
	var length_factor : Float;
	/**
		Amount texture affects particle life time
		
		Type: float in [-inf, inf], default 0.0
	**/
	var life_factor : Float;
	/**
		
		
		Type: enum in [‘FLAT’, ‘CUBE’, ‘TUBE’, ‘SPHERE’], default ‘FLAT’
	**/
	var mapping : bpy.types.particlesettingstextureslot.ParticleSettingsTextureSlot.Enum1;
	/**
		
		
		Type: enum in [‘NONE’, ‘X’, ‘Y’, ‘Z’], default ‘NONE’
	**/
	var mapping_x : bpy.types.particlesettingstextureslot.ParticleSettingsTextureSlot.Enum2;
	/**
		
		
		Type: enum in [‘NONE’, ‘X’, ‘Y’, ‘Z’], default ‘NONE’
	**/
	var mapping_y : bpy.types.particlesettingstextureslot.ParticleSettingsTextureSlot.Enum3;
	/**
		
		
		Type: enum in [‘NONE’, ‘X’, ‘Y’, ‘Z’], default ‘NONE’
	**/
	var mapping_z : bpy.types.particlesettingstextureslot.ParticleSettingsTextureSlot.Enum4;
	/**
		Object to use for mapping with Object texture coordinates
		
		Type: Object
	**/
	var object : bpy.types.object.Object;
	/**
		Amount texture affects child roughness
		
		Type: float in [-inf, inf], default 0.0
	**/
	var rough_factor : Float;
	/**
		Amount texture affects physical particle size
		
		Type: float in [-inf, inf], default 0.0
	**/
	var size_factor : Float;
	/**
		Texture coordinates used to map the texture onto the background
		
		Type: enum in [‘GLOBAL’, ‘OBJECT’, ‘UV’, ‘ORCO’, ‘STRAND’], default ‘GLOBAL’
	**/
	var texture_coords : bpy.types.particlesettingstextureslot.ParticleSettingsTextureSlot.Enum5;
	/**
		Amount texture affects particle emission time
		
		Type: float in [-inf, inf], default 0.0
	**/
	var time_factor : Float;
	/**
		Amount texture affects child twist
		
		Type: float in [-inf, inf], default 0.0
	**/
	var twist_factor : Float;
	/**
		Affect the child clumping
		
		Type: boolean, default False
	**/
	var use_map_clump : Bool;
	/**
		Affect the particle velocity damping
		
		Type: boolean, default False
	**/
	var use_map_damp : Bool;
	/**
		Affect the density of the particles
		
		Type: boolean, default False
	**/
	var use_map_density : Bool;
	/**
		Affect the particle force fields
		
		Type: boolean, default False
	**/
	var use_map_field : Bool;
	/**
		Affect the particle gravity
		
		Type: boolean, default False
	**/
	var use_map_gravity : Bool;
	/**
		Affect the child kink amplitude
		
		Type: boolean, default False
	**/
	var use_map_kink_amp : Bool;
	/**
		Affect the child kink frequency
		
		Type: boolean, default False
	**/
	var use_map_kink_freq : Bool;
	/**
		Affect the child hair length
		
		Type: boolean, default False
	**/
	var use_map_length : Bool;
	/**
		Affect the life time of the particles
		
		Type: boolean, default False
	**/
	var use_map_life : Bool;
	/**
		Affect the child rough
		
		Type: boolean, default False
	**/
	var use_map_rough : Bool;
	/**
		Affect the particle size
		
		Type: boolean, default False
	**/
	var use_map_size : Bool;
	/**
		Affect the emission time of the particles
		
		Type: boolean, default False
	**/
	var use_map_time : Bool;
	/**
		Affect the child twist
		
		Type: boolean, default False
	**/
	var use_map_twist : Bool;
	/**
		Affect the particle initial velocity
		
		Type: boolean, default False
	**/
	var use_map_velocity : Bool;
	/**
		UV map to use for mapping with UV texture coordinates
		
		Type: string, default “”, (never None)
	**/
	var uv_layer : String;
	/**
		Amount texture affects particle initial velocity
		
		Type: float in [-inf, inf], default 0.0
	**/
	var velocity_factor : Float;
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