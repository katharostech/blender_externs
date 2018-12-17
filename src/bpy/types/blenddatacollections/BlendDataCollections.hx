package bpy.types.blenddatacollections;
/**
	Collection of collections
**/
@:native("bpy.types.BlendDataCollections") extern class BlendDataCollections {
	/**
		Add a new collection to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns Collection
	**/
	function pyNew(name:String):bpy.types.collection.Collection;
	/**
		Remove a collection from the current blendfile
		@param collection Collection to remove — Collection, (never None)
		@param do_unlink Unlink all usages of this collection before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this collection — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this collection — boolean, (optional)
	**/
	function remove(collection:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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