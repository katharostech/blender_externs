package bpy.types.layerobjects;
/**
	Collections of objects
**/
@:pythonImport("bpy.types.LayerObjects") extern class LayerObjects {
	/**
		Active object for this layer
		
		Type: Object
	**/
	var active : bpy.types.object.Object;
	/**
		All the selected objects of this layer
		
		Type: bpy_prop_collection of Object, (readonly)
	**/
	var selected(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
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