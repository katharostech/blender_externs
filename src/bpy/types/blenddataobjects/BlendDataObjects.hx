package bpy.types.blenddataobjects;
/**
	Collection of objects
**/
@:pythonImport("bpy.types.BlendDataObjects") extern class BlendDataObjects {
	/**
		Add a new object to the main database
		@param name New name for the data-block — string, (never None)
		@param object_data Object data or None for an empty object — ID
		
		@returns Object
	**/
	function new(name:String, object_data:Dynamic):bpy.types.object.Object;
	/**
		Remove a object from the current blendfile
		@param object Object to remove — Object, (never None)
		@param do_unlink Unlink all usages of this object before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this object — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this object — boolean, (optional)
	**/
	function remove(object:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Dynamic):Void;
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