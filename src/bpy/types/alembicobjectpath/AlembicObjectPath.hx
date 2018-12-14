package bpy.types.alembicobjectpath;
/**
	Path of an object inside of an Alembic archive
**/
@:pythonImport("bpy.types.AlembicObjectPath") extern class AlembicObjectPath {
	/**
		Object path
		
		Type: string, default “”, (never None)
	**/
	var path : String;
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