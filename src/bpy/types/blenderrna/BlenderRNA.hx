package bpy.types.blenderrna;
/**
	Blender RNA structure definitions
**/
@:pythonImport("bpy.types.BlenderRNA") extern class BlenderRNA {
	/**
		
		
		Type: bpy_prop_collection of Struct, (readonly)
	**/
	var structs(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
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