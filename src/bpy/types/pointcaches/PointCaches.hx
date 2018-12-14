package bpy.types.pointcaches;
/**
	Collection of point caches
**/
@:pythonImport("bpy.types.PointCaches") extern class PointCaches {
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var active_index : Int;
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