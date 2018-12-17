package bpy.types.polygonstringproperties;
/**
	Collection of string properties
**/
@:native("bpy.types.PolygonStringProperties") extern class PolygonStringProperties {
	/**
		Add a string property layer to Mesh
		@param name String property name — string, (optional, never None)
		
		@returns MeshPolygonStringPropertyLayer
	**/
	function pyNew(name:String):bpy.types.meshpolygonstringpropertylayer.MeshPolygonStringPropertyLayer;
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