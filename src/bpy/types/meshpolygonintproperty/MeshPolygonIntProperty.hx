package bpy.types.meshpolygonintproperty;
/**
	User defined integer number value in an integer properties layer
**/
@:pythonImport("bpy.types.MeshPolygonIntProperty") extern class MeshPolygonIntProperty {
	/**
		
		
		Type: int in [-inf, inf], default 0
	**/
	var value : Int;
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