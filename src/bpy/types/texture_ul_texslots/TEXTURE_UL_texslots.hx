package bpy.types.texture_ul_texslots;
@:pythonImport("bpy.types.TEXTURE_UL_texslots") extern class TEXTURE_UL_texslots {
	function draw_item():Void;
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