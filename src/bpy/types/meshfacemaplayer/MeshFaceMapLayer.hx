package bpy.types.meshfacemaplayer;
/**
	Per-face map index
**/
@:native("bpy.types.MeshFaceMapLayer") extern class MeshFaceMapLayer {
	/**
		
		
		Type: bpy_prop_collection of MeshFaceMap, (readonly)
	**/
	var data(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Name of face-map layer
		
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