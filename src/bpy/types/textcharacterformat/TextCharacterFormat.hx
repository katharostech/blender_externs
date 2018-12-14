package bpy.types.textcharacterformat;
/**
	Text character formatting settings
**/
@:pythonImport("bpy.types.TextCharacterFormat") extern class TextCharacterFormat {
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var material_index : Int;
	/**
		
		
		Type: boolean, default False
	**/
	var use_bold : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_italic : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_small_caps : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_underline : Bool;
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