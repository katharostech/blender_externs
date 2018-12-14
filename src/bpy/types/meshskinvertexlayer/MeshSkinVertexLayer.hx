package bpy.types.meshskinvertexlayer;
/**
	Per-vertex skin data for use with the Skin modifier
**/
@:pythonImport("bpy.types.MeshSkinVertexLayer") extern class MeshSkinVertexLayer {
	/**
		
		
		Type: bpy_prop_collection of MeshSkinVertex, (readonly)
	**/
	var data(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Name of skin layer
		
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