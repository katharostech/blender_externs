package bpy.types.linestylealphamodifier;
/**
	Base type to define alpha transparency modifiers
**/
@:native("bpy.types.LineStyleAlphaModifier") extern class LineStyleAlphaModifier {
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