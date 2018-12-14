package bpy.types.polygonfloatproperties;
/**
	Collection of float properties
**/
@:pythonImport("bpy.types.PolygonFloatProperties") extern class PolygonFloatProperties {
	/**
		Add a float property layer to Mesh
		@param name Float property name — string, (optional, never None)
		
		@returns MeshPolygonFloatPropertyLayer
	**/
	function new(name:String):bpy.types.meshpolygonfloatpropertylayer.MeshPolygonFloatPropertyLayer;
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