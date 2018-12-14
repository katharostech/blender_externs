package bpy.types.textline;
/**
	Line of text in a Text data-block
**/
@:pythonImport("bpy.types.TextLine") extern class TextLine {
	/**
		Text in the line
		
		Type: string, default “”, (never None)
	**/
	var body : String;
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