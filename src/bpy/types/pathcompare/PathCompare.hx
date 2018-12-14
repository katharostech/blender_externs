package bpy.types.pathcompare;
/**
	Match paths against this value
**/
@:pythonImport("bpy.types.PathCompare") extern class PathCompare {
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var path : String;
	/**
		Enable wildcard globbing
		
		Type: boolean, default False
	**/
	var use_glob : Bool;
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