package bpy.types.childparticle;
/**
	Child particle interpolated from simulated or edited particles
**/
@:pythonImport("bpy.types.ChildParticle") extern class ChildParticle {
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