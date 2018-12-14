package bpy.types.idoverridestaticproperty;
/**
	Description of an overridden property
**/
@:pythonImport("bpy.types.IDOverrideStaticProperty") extern class IDOverrideStaticProperty {
	/**
		List of overriding operations for a property
		
		Type: bpy_prop_collection of IDOverrideStaticPropertyOperation, (readonly)
	**/
	var operations(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		RNA path leading to that property, from owning ID
		
		Type: string, default “”, (readonly, never None)
	**/
	var rna_path(default, never) : String;
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