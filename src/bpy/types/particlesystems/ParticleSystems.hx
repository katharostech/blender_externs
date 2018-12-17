package bpy.types.particlesystems;
/**
	Collection of particle systems
**/
@:native("bpy.types.ParticleSystems") extern class ParticleSystems {
	/**
		Active particle system being displayed
		
		Type: ParticleSystem, (readonly)
	**/
	var active(default, never) : bpy.types.particlesystem.ParticleSystem;
	/**
		Index of active particle system slot
		
		Type: int in [0, inf], default 0
	**/
	var active_index : Int;
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