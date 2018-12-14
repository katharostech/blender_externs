package bpy.types.keyconfigpreferences;
@:pythonImport("bpy.types.KeyConfigPreferences") extern class KeyConfigPreferences {
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
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