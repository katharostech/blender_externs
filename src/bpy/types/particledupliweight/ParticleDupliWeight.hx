package bpy.types.particledupliweight;
/**
	Weight of a particle dupliobject in a collection
**/
@:pythonImport("bpy.types.ParticleDupliWeight") extern class ParticleDupliWeight {
	/**
		The number of times this object is repeated with respect to other objects
		
		Type: int in [0, 32767], default 0
	**/
	var count : Int;
	/**
		Particle dupliobject name
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
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