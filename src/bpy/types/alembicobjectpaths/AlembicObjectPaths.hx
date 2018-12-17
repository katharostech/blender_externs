package bpy.types.alembicobjectpaths;
/**
	Collection of object paths
**/
@:native("bpy.types.AlembicObjectPaths") extern class AlembicObjectPaths {
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