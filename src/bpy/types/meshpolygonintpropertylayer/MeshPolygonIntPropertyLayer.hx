package bpy.types.meshpolygonintpropertylayer;
/**
	User defined layer of integer number values
**/
@:pythonImport("bpy.types.MeshPolygonIntPropertyLayer") extern class MeshPolygonIntPropertyLayer {
	/**
		
		
		Type: bpy_prop_collection of MeshPolygonIntProperty, (readonly)
	**/
	var data(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
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