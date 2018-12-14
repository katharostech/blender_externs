package bpy.types.blenddataparticles;
/**
	Collection of particle settings
**/
@:pythonImport("bpy.types.BlendDataParticles") extern class BlendDataParticles {
	/**
		Add a new particle settings instance to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns ParticleSettings
	**/
	function new(name:String):bpy.types.particlesettings.ParticleSettings;
	/**
		Remove a particle settings instance from the current blendfile
		@param particle Particle Settings to remove — ParticleSettings, (never None)
		@param do_unlink Unlink all usages of those particle settings before deleting them — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this particle settings — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this particle settings — boolean, (optional)
	**/
	function remove(particle:bpy.types.particlesettings.ParticleSettings, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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