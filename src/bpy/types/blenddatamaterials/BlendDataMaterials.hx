package bpy.types.blenddatamaterials;
/**
	Collection of materials
**/
@:native("bpy.types.BlendDataMaterials") extern class BlendDataMaterials {
	/**
		Add a new material to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns Material
	**/
	function pyNew(name:String):bpy.types.material.Material;
	/**
		Add grease pencil material settings
		@param material Material — Material, (never None)
	**/
	function create_gpencil_data(material:Dynamic):Void;
	/**
		Remove a material from the current blendfile
		@param material Material to remove — Material, (never None)
		@param do_unlink Unlink all usages of this material before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this material — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this material — boolean, (optional)
	**/
	function remove(material:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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