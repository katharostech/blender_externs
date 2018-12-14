package bpy.types.blenddatasounds;
/**
	Collection of sounds
**/
@:pythonImport("bpy.types.BlendDataSounds") extern class BlendDataSounds {
	/**
		Add a new sound to the main database from a file
		@param filepath path for the data-block — string, (never None)
		@param check_existing Using existing data-block if this file is already loaded — boolean, (optional)
		
		@returns Sound
	**/
	function load(filepath:String, check_existing:Bool):bpy.types.sound.Sound;
	/**
		Remove a sound from the current blendfile
		@param sound Sound to remove — Sound, (never None)
		@param do_unlink Unlink all usages of this sound before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this sound — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this sound — boolean, (optional)
	**/
	function remove(sound:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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