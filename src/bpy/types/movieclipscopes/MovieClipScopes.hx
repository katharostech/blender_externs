package bpy.types.movieclipscopes;
/**
	Scopes for statistical view of a movie clip
**/
@:pythonImport("bpy.types.MovieClipScopes") extern class MovieClipScopes {
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