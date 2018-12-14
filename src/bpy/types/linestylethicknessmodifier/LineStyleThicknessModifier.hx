package bpy.types.linestylethicknessmodifier;
/**
	Base type to define line thickness modifiers
**/
@:pythonImport("bpy.types.LineStyleThicknessModifier") extern class LineStyleThicknessModifier {
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