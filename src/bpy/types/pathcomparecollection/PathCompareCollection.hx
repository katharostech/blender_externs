package bpy.types.pathcomparecollection;
/**
	Collection of paths
**/
@:pythonImport("bpy.types.PathCompareCollection") extern class PathCompareCollection {
	/**
		Add a new path
		
		@returns PathCompare
	**/
	static function new():bpy.types.pathcompare.PathCompare;
	/**
		Remove path
	**/
	static function remove():Void;
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