package bpy.types.polygonintproperties;
/**
	Collection of int properties
**/
@:pythonImport("bpy.types.PolygonIntProperties") extern class PolygonIntProperties {
	/**
		Add a integer property layer to Mesh
		@param name Int property name — string, (optional, never None)
		
		@returns MeshPolygonIntPropertyLayer
	**/
	function new(name:String):bpy.types.meshpolygonintpropertylayer.MeshPolygonIntPropertyLayer;
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