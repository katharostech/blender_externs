package bpy.types.blenddatalattices;
/**
	Collection of lattices
**/
@:native("bpy.types.BlendDataLattices") extern class BlendDataLattices {
	/**
		Add a new lattice to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns Lattice
	**/
	function pyNew(name:String):bpy.types.lattice.Lattice;
	/**
		Remove a lattice from the current blendfile
		@param lattice Lattice to remove — Lattice, (never None)
		@param do_unlink Unlink all usages of this lattice before deleting it (WARNING: will also delete objects instancing that lattice data) — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this lattice data — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this lattice data — boolean, (optional)
	**/
	function remove(lattice:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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