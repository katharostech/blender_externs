package bpy.types.blenddataspeakers;
/**
	Collection of speakers
**/
@:pythonImport("bpy.types.BlendDataSpeakers") extern class BlendDataSpeakers {
	/**
		Add a new speaker to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns Speaker
	**/
	function new(name:String):bpy.types.speaker.Speaker;
	/**
		Remove a speaker from the current blendfile
		@param speaker Speaker to remove — Speaker, (never None)
		@param do_unlink Unlink all usages of this speaker before deleting it (WARNING: will also delete objects instancing that speaker data) — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this speaker data — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this speaker data — boolean, (optional)
	**/
	function remove(speaker:bpy.types.speaker.Speaker, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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