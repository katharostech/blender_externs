package bpy.types.particlesettingstextureslots;
/**
	Collection of texture slots
**/
@:pythonImport("bpy.types.ParticleSettingsTextureSlots") extern class ParticleSettingsTextureSlots {
	/**
		add
		
		@returns ParticleSettingsTextureSlot
	**/
	static function add():bpy.types.particlesettingstextureslot.ParticleSettingsTextureSlot;
	/**
		create
		@param index Index, Slot index to initialize — int in [0, inf]
		
		@returns ParticleSettingsTextureSlot
	**/
	static function create(index:Int):bpy.types.particlesettingstextureslot.ParticleSettingsTextureSlot;
	/**
		clear
		@param index Index, Slot index to clear — int in [0, inf]
	**/
	static function clear(index:Int):Void;
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