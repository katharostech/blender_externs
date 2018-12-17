package bpy.types.vertexstringproperties;
/**
	Collection of string properties
**/
@:native("bpy.types.VertexStringProperties") extern class VertexStringProperties {
	/**
		Add a string property layer to Mesh
		@param name String property name — string, (optional, never None)
		
		@returns MeshVertexStringPropertyLayer
	**/
	function pyNew(name:String):bpy.types.meshvertexstringpropertylayer.MeshVertexStringPropertyLayer;
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