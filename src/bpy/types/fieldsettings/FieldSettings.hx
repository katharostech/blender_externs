package bpy.types.fieldsettings;
@:enum abstract Enum1(String) from String to String {
	var SPHERE : String = "SPHERE";
	var TUBE : String = "TUBE";
	var CONE : String = "CONE";
}@:enum abstract Enum2(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var CURL : String = "CURL";
	var RADIAL : String = "RADIAL";
	var WAVE : String = "WAVE";
	var BRAID : String = "BRAID";
	var ROTATION : String = "ROTATION";
	var ROLL : String = "ROLL";
}@:enum abstract Enum4(String) from String to String {
	var POINT : String = "POINT";
	var LINE : String = "LINE";
	var PLANE : String = "PLANE";
	var SURFACE : String = "SURFACE";
	var POINTS : String = "POINTS";
}@:enum abstract Enum5(String) from String to String {
	var RGB : String = "RGB";
	var GRADIENT : String = "GRADIENT";
	var CURL : String = "CURL";
}@:enum abstract Enum6(String) from String to String {
	var NONE : String = "NONE";
	var FORCE : String = "FORCE";
	var WIND : String = "WIND";
	var VORTEX : String = "VORTEX";
	var MAGNET : String = "MAGNET";
	var HARMONIC : String = "HARMONIC";
	var CHARGE : String = "CHARGE";
	var LENNARDJ : String = "LENNARDJ";
	var TEXTURE : String = "TEXTURE";
	var GUIDE : String = "GUIDE";
	var BOID : String = "BOID";
	var TURBULENCE : String = "TURBULENCE";
	var DRAG : String = "DRAG";
	var SMOKE_FLOW : String = "SMOKE_FLOW";
}@:enum abstract Enum7(String) from String to String {
	var BOTH : String = "BOTH";
	var POSITIVE : String = "POSITIVE";
	var NEGATIVE : String = "NEGATIVE";
}/**
	Field settings for an object in physics simulation
**/
@:native("bpy.types.FieldSettings") extern class FieldSettings {
	/**
		Effect particles’ location
		
		Type: boolean, default False
	**/
	var apply_to_location : Bool;
	/**
		Effect particles’ dynamic rotation
		
		Type: boolean, default False
	**/
	var apply_to_rotation : Bool;
	/**
		Maximum distance for the field to work
		
		Type: float in [0, inf], default 0.0
	**/
	var distance_max : Float;
	/**
		Minimum distance for the field’s fall-off
		
		Type: float in [0, 1000], default 0.0
	**/
	var distance_min : Float;
	/**
		
		
		Type: float in [0, 10], default 0.0
	**/
	var falloff_power : Float;
	/**
		
		
		Type: enum in [‘SPHERE’, ‘TUBE’, ‘CONE’], default ‘SPHERE’
	**/
	var falloff_type : bpy.types.fieldsettings.FieldSettings.Enum1;
	/**
		Convert effector force into air flow velocity
		
		Type: float in [0, 10], default 0.0
	**/
	var flow : Float;
	/**
		Amount of clumping
		
		Type: float in [-1, 1], default 0.0
	**/
	var guide_clump_amount : Float;
	/**
		Shape of clumping
		
		Type: float in [-0.999, 0.999], default 0.0
	**/
	var guide_clump_shape : Float;
	/**
		Guide-free time from particle life’s end
		
		Type: float in [0, 0.99], default 0.0
	**/
	var guide_free : Float;
	/**
		The amplitude of the offset
		
		Type: float in [0, 10], default 0.0
	**/
	var guide_kink_amplitude : Float;
	/**
		Which axis to use for offset
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var guide_kink_axis : bpy.types.fieldsettings.FieldSettings.Enum2;
	/**
		The frequency of the offset (1/total length)
		
		Type: float in [0, 10], default 0.0
	**/
	var guide_kink_frequency : Float;
	/**
		Adjust the offset to the beginning/end
		
		Type: float in [-0.999, 0.999], default 0.0
	**/
	var guide_kink_shape : Float;
	/**
		Type of periodic offset on the curve
		
		Type: enum in [‘NONE’, ‘CURL’, ‘RADIAL’, ‘WAVE’, ‘BRAID’, ‘ROTATION’, ‘ROLL’], default ‘NONE’
	**/
	var guide_kink_type : bpy.types.fieldsettings.FieldSettings.Enum3;
	/**
		The distance from which particles are affected fully
		
		Type: float in [0, 1000], default 0.0
	**/
	var guide_minimum : Float;
	/**
		Damping of the harmonic force
		
		Type: float in [0, 10], default 0.0
	**/
	var harmonic_damping : Float;
	/**
		Inwards component of the vortex force
		
		Type: float in [-10, 10], default 0.0
	**/
	var inflow : Float;
	/**
		Drag component proportional to velocity
		
		Type: float in [-2, 2], default 0.0
	**/
	var linear_drag : Float;
	/**
		Amount of noise for the force strength
		
		Type: float in [0, 10], default 0.0
	**/
	var noise : Float;
	/**
		Drag component proportional to the square of velocity
		
		Type: float in [-2, 2], default 0.0
	**/
	var quadratic_drag : Float;
	/**
		Radial falloff power (real gravitational falloff = 2)
		
		Type: float in [0, 10], default 0.0
	**/
	var radial_falloff : Float;
	/**
		Maximum radial distance for the field to work
		
		Type: float in [0, 1000], default 0.0
	**/
	var radial_max : Float;
	/**
		Minimum radial distance for the field’s fall-off
		
		Type: float in [0, 1000], default 0.0
	**/
	var radial_min : Float;
	/**
		Rest length of the harmonic force
		
		Type: float in [0, 1000], default 0.0
	**/
	var rest_length : Float;
	/**
		Seed of the noise
		
		Type: int in [1, 128], default 0
	**/
	var seed : Int;
	/**
		Which direction is used to calculate the effector force
		
		Type: enum in [‘POINT’, ‘LINE’, ‘PLANE’, ‘SURFACE’, ‘POINTS’], default ‘POINT’
	**/
	var shape : bpy.types.fieldsettings.FieldSettings.Enum4;
	/**
		Size of the turbulence
		
		Type: float in [0, inf], default 0.0
	**/
	var size : Float;
	/**
		Select domain object of the smoke simulation
		
		Type: Object
	**/
	var source_object : bpy.types.object.Object;
	/**
		Strength of force field
		
		Type: float in [-inf, inf], default 0.0
	**/
	var strength : Float;
	/**
		Texture to use as force
		
		Type: Texture
	**/
	var texture : bpy.types.texture.Texture;
	/**
		How the texture effect is calculated (RGB &amp; Curl need a RGB texture, else Gradient will be used instead)
		
		Type: enum in [‘RGB’, ‘GRADIENT’, ‘CURL’], default ‘RGB’
	**/
	var texture_mode : bpy.types.fieldsettings.FieldSettings.Enum5;
	/**
		Defines size of derivative offset used for calculating gradient and curl
		
		Type: float in [0.0001, 1], default 0.0
	**/
	var texture_nabla : Float;
	/**
		Type of field
		
		Type: enum in [‘NONE’, ‘FORCE’, ‘WIND’, ‘VORTEX’, ‘MAGNET’, ‘HARMONIC’, ‘CHARGE’, ‘LENNARDJ’, ‘TEXTURE’, ‘GUIDE’, ‘BOID’, ‘TURBULENCE’, ‘DRAG’, ‘SMOKE_FLOW’], default ‘NONE’
	**/
	var type : bpy.types.fieldsettings.FieldSettings.Enum6;
	/**
		Apply force only in 2D
		
		Type: boolean, default False
	**/
	var pyuse_2d_force : Bool;
	/**
		Force gets absorbed by collision objects
		
		Type: boolean, default False
	**/
	var use_absorption : Bool;
	/**
		Use effector/global coordinates for turbulence
		
		Type: boolean, default False
	**/
	var use_global_coords : Bool;
	/**
		Multiply force by 1/distance²
		
		Type: boolean, default False
	**/
	var use_gravity_falloff : Bool;
	/**
		Based on distance/falloff it adds a portion of the entire path
		
		Type: boolean, default False
	**/
	var use_guide_path_add : Bool;
	/**
		Use curve weights to influence the particle influence along the curve
		
		Type: boolean, default False
	**/
	var use_guide_path_weight : Bool;
	/**
		Use a maximum distance for the field to work
		
		Type: boolean, default False
	**/
	var use_max_distance : Bool;
	/**
		Use a minimum distance for the field’s fall-off
		
		Type: boolean, default False
	**/
	var use_min_distance : Bool;
	/**
		Every point is effected by multiple springs
		
		Type: boolean, default False
	**/
	var use_multiple_springs : Bool;
	/**
		Use object/global coordinates for texture
		
		Type: boolean, default False
	**/
	var use_object_coords : Bool;
	/**
		Use a maximum radial distance for the field to work
		
		Type: boolean, default False
	**/
	var use_radial_max : Bool;
	/**
		Use a minimum radial distance for the field’s fall-off
		
		Type: boolean, default False
	**/
	var use_radial_min : Bool;
	/**
		Texture coordinates from root particle locations
		
		Type: boolean, default False
	**/
	var use_root_coords : Bool;
	/**
		Adjust force strength based on smoke density
		
		Type: boolean, default False
	**/
	var use_smoke_density : Bool;
	/**
		Effect in full or only positive/negative Z direction
		
		Type: enum in [‘BOTH’, ‘POSITIVE’, ‘NEGATIVE’], default ‘BOTH’
	**/
	var z_direction : bpy.types.fieldsettings.FieldSettings.Enum7;
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