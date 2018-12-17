package bpy.types.blenddatamasks;
/**
	Collection of masks
**/
@:native("bpy.types.BlendDataMasks") extern class BlendDataMasks {
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Bool):Void;
	/**
		Add a new mask with a given name to the main database
		@param name Mask, Name of new mask data-block — string, (never None)
		
		@returns Mask
	**/
	function pyNew(name:String):bpy.types.mask.Mask;
	/**
		Remove a masks from the current blendfile.
		@param mask Mask to remove — Mask, (never None)
		@param do_unlink Unlink all usages of this mask before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this mask — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this mask — boolean, (optional)
	**/
	function remove(mask:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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