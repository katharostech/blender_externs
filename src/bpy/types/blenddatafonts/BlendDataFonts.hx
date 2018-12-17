package bpy.types.blenddatafonts;
/**
	Collection of fonts
**/
@:native("bpy.types.BlendDataFonts") extern class BlendDataFonts {
	/**
		Load a new font into the main database
		@param filepath path of the font to load — string, (never None)
		@param check_existing Using existing data-block if this file is already loaded — boolean, (optional)
		
		@returns VectorFont
	**/
	function load(filepath:String, check_existing:Bool):bpy.types.vectorfont.VectorFont;
	/**
		Remove a font from the current blendfile
		@param vfont Font to remove — VectorFont, (never None)
		@param do_unlink Unlink all usages of this font before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this font — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this font — boolean, (optional)
	**/
	function remove(vfont:bpy.types.vectorfont.VectorFont, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Bool):Void;
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