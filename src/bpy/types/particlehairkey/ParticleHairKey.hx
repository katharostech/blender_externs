package bpy.types.particlehairkey;
/**
	Particle key for hair particle system
**/
@:native("bpy.types.ParticleHairKey") extern class ParticleHairKey {
	/**
		Location of the hair key in object space
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var co : Array<Float>;
	/**
		Location of the hair key in its local coordinate system, relative to the emitting face
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var co_local : Array<Float>;
	/**
		Relative time of key over hair length
		
		Type: float in [0, inf], default 0.0
	**/
	var time : Float;
	/**
		Weight for cloth simulation
		
		Type: float in [0, 1], default 0.0
	**/
	var weight : Float;
	/**
		Obtain hairkey location with particle and modifier data
		@param object Object — Object, (never None)
		@param modifier Particle modifier — ParticleSystemModifier, (never None)
		@param particle hair particle — Particle, (never None)
		
		@returns float array of 3 items in [-inf, inf]
	**/
	function co_object(object:Dynamic, modifier:bpy.types.particlesystemmodifier.ParticleSystemModifier, particle:Dynamic):Array<Float>;
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