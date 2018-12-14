package bpy.types.blenddataworlds;
/**
	Collection of worlds
**/
@:pythonImport("bpy.types.BlendDataWorlds") extern class BlendDataWorlds {
	/**
		Add a new world to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns World
	**/
	function new(name:String):bpy.types.world.World;
	/**
		Remove a world from the current blendfile
		@param world World to remove — World, (never None)
		@param do_unlink Unlink all usages of this world before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this world — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this world — boolean, (optional)
	**/
	function remove(world:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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