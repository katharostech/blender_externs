package bpy.types.meshvertexstringproperty;
/**
	User defined string text value in a string properties layer
**/
@:pythonImport("bpy.types.MeshVertexStringProperty") extern class MeshVertexStringProperty {
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var value : String;
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