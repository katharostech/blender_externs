package bpy.types.wmownerid;
@:pythonImport("bpy.types.wmOwnerID") extern class WmOwnerID {
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