package bpy.types.polygonfloatproperties;
/**
	Collection of float properties
**/
@:native("bpy.types.PolygonFloatProperties") extern class PolygonFloatProperties {
	/**
		Add a float property layer to Mesh
		@param name Float property name — string, (optional, never None)
		
		@returns MeshPolygonFloatPropertyLayer
	**/
	function pyNew(name:String):bpy.types.meshpolygonfloatpropertylayer.MeshPolygonFloatPropertyLayer;
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