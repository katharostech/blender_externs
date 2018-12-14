package bpy.types.vertexintproperties;
/**
	Collection of int properties
**/
@:pythonImport("bpy.types.VertexIntProperties") extern class VertexIntProperties {
	/**
		Add a integer property layer to Mesh
		@param name Int property name — string, (optional, never None)
		
		@returns MeshVertexIntPropertyLayer
	**/
	function new(name:String):bpy.types.meshvertexintpropertylayer.MeshVertexIntPropertyLayer;
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