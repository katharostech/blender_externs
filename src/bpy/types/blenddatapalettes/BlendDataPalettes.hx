package bpy.types.blenddatapalettes;
/**
	Collection of palettes
**/
@:native("bpy.types.BlendDataPalettes") extern class BlendDataPalettes {
	/**
		Add a new palette to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns Palette
	**/
	function pyNew(name:String):bpy.types.palette.Palette;
	/**
		Remove a palette from the current blendfile
		@param palette Palette to remove — Palette, (never None)
		@param do_unlink Unlink all usages of this palette before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this palette — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this palette — boolean, (optional)
	**/
	function remove(palette:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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