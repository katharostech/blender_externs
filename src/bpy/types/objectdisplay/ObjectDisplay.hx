package bpy.types.objectdisplay;
/**
	Object display settings for 3d viewport
**/
@:pythonImport("bpy.types.ObjectDisplay") extern class ObjectDisplay {
	/**
		Object cast shadows in the 3d viewport
		
		Type: boolean, default True
	**/
	var show_shadows : Bool;
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