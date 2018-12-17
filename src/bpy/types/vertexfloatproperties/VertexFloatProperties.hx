package bpy.types.vertexfloatproperties;
/**
	Collection of float properties
**/
@:native("bpy.types.VertexFloatProperties") extern class VertexFloatProperties {
	/**
		Add a float property layer to Mesh
		@param name Float property name — string, (optional, never None)
		
		@returns MeshVertexFloatPropertyLayer
	**/
	function pyNew(name:String):bpy.types.meshvertexfloatpropertylayer.MeshVertexFloatPropertyLayer;
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