package bpy.types.linestylegeometrymodifier;
/**
	Base type to define stroke geometry modifiers
**/
@:pythonImport("bpy.types.LineStyleGeometryModifier") extern class LineStyleGeometryModifier {
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