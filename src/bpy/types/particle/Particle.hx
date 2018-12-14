package bpy.types.particle;
@:enum abstract Enum1(String) from String to String {
	var DEAD : String = "DEAD";
	var UNBORN : String = "UNBORN";
	var ALIVE : String = "ALIVE";
	var DYING : String = "DYING";
}/**
	Particle in a particle system
**/
@:pythonImport("bpy.types.Particle") extern class Particle {
	/**
		
		
		Type: enum in [‘DEAD’, ‘UNBORN’, ‘ALIVE’, ‘DYING’], default ‘DEAD’
	**/
	var alive_state : bpy.types.particle.Particle.Enum1;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var angular_velocity : Array<Float>;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var birth_time : Float;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var die_time : Float;
	/**
		
		
		Type: bpy_prop_collection of ParticleHairKey, (readonly)
	**/
	var hair_keys(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_exist(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_visible(default, never) : Bool;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var lifetime : Float;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var location : Array<Float>;
	/**
		
		
		Type: bpy_prop_collection of ParticleKey, (readonly)
	**/
	var particle_keys(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var prev_angular_velocity : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var prev_location : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var prev_rotation : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var prev_velocity : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var rotation : Array<Float>;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var size : Float;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var velocity : Array<Float>;
	/**
		Obtain uv for particle on derived mesh
		@param modifier Particle modifier — ParticleSystemModifier, (never None)
		
		@returns float array of 2 items in [-inf, inf]
	**/
	function uv_on_emitter(modifier:bpy.types.particlesystemmodifier.ParticleSystemModifier):Array<Float>;
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