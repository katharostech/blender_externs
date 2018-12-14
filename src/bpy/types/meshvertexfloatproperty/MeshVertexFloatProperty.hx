package bpy.types.meshvertexfloatproperty;
/**
	User defined floating point number value in a float properties layer
**/
@:pythonImport("bpy.types.MeshVertexFloatProperty") extern class MeshVertexFloatProperty {
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var value : Float;
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