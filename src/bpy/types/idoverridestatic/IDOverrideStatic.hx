package bpy.types.idoverridestatic;
/**
	Struct gathering all data needed by statically overridden IDs
**/
@:pythonImport("bpy.types.IDOverrideStatic") extern class IDOverrideStatic {
	/**
		Automatically generate overriding operations by detecting changes in properties
		
		Type: boolean, default True
	**/
	var auto_generate : Bool;
	/**
		List of overridden properties
		
		Type: bpy_prop_collection of IDOverrideStaticProperty, (readonly)
	**/
	var properties(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Linked ID used as reference by this override
		
		Type: ID, (readonly)
	**/
	var reference(default, never) : bpy.types.id.ID;
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