package bpy.types.vertexstringproperties;
/**
	Collection of string properties
**/
@:pythonImport("bpy.types.VertexStringProperties") extern class VertexStringProperties {
	/**
		Add a string property layer to Mesh
		@param name String property name — string, (optional, never None)
		
		@returns MeshVertexStringPropertyLayer
	**/
	function new(name:String):bpy.types.meshvertexstringpropertylayer.MeshVertexStringPropertyLayer;
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