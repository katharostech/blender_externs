package bpy.types.particlekey;
/**
	Key location for a particle over time
**/
@:pythonImport("bpy.types.ParticleKey") extern class ParticleKey {
	/**
		Key angular velocity
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var angular_velocity : Array<Float>;
	/**
		Key location
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var location : Array<Float>;
	/**
		Key rotation quaternion
		
		Type: float array of 4 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var rotation : Array<Float>;
	/**
		Time of key over the simulation
		
		Type: float in [0, inf], default 0.0
	**/
	var time : Float;
	/**
		Key velocity
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var velocity : Array<Float>;
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