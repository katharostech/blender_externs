package bpy.types.linestylecolormodifier;
/**
	Base type to define line color modifiers
**/
@:pythonImport("bpy.types.LineStyleColorModifier") extern class LineStyleColorModifier {
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