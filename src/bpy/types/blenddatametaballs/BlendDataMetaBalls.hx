package bpy.types.blenddatametaballs;
/**
	Collection of metaballs
**/
@:pythonImport("bpy.types.BlendDataMetaBalls") extern class BlendDataMetaBalls {
	/**
		Add a new metaball to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns MetaBall
	**/
	function new(name:String):bpy.types.metaball.MetaBall;
	/**
		Remove a metaball from the current blendfile
		@param metaball Metaball to remove — MetaBall, (never None)
		@param do_unlink Unlink all usages of this metaball before deleting it (WARNING: will also delete objects instancing that metaball data) — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this metaball data — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this metaball data — boolean, (optional)
	**/
	function remove(metaball:bpy.types.metaball.MetaBall, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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