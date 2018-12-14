package bpy.types.texture_ul_texpaintslots;
@:pythonImport("bpy.types.TEXTURE_UL_texpaintslots") extern class TEXTURE_UL_texpaintslots {
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