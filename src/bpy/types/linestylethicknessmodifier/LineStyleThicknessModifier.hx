package bpy.types.linestylethicknessmodifier;
/**
	Base type to define line thickness modifiers
**/
@:native("bpy.types.LineStyleThicknessModifier") extern class LineStyleThicknessModifier {
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