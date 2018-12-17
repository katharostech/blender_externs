package bpy.types.meshvertexstringpropertylayer;
/**
	User defined layer of string text values
**/
@:native("bpy.types.MeshVertexStringPropertyLayer") extern class MeshVertexStringPropertyLayer {
	/**
		
		
		Type: bpy_prop_collection of MeshVertexStringProperty, (readonly)
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
	static function bl_rna_get_subclass(id:String):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:String):Dynamic;
}