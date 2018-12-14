package bpy.types.meshvertexfloatpropertylayer;
/**
	User defined layer of floating point number values
**/
@:pythonImport("bpy.types.MeshVertexFloatPropertyLayer") extern class MeshVertexFloatPropertyLayer {
	/**
		
		
		Type: bpy_prop_collection of MeshVertexFloatProperty, (readonly)
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