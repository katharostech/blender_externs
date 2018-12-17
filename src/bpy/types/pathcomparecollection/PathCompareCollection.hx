package bpy.types.pathcomparecollection;
/**
	Collection of paths
**/
@:native("bpy.types.PathCompareCollection") extern class PathCompareCollection {
	/**
		Add a new path
		
		@returns PathCompare
	**/
	static function pyNew():bpy.types.pathcompare.PathCompare;
	/**
		Remove path
	**/
	static function remove(pathcmp:Dynamic):Void;
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