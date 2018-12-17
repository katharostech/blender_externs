package bpy.types.blenddataarmatures;
/**
	Collection of armatures
**/
@:native("bpy.types.BlendDataArmatures") extern class BlendDataArmatures {
	/**
		Add a new armature to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns Armature
	**/
	function pyNew(name:String):bpy.types.armature.Armature;
	/**
		Remove a armature from the current blendfile
		@param armature Armature to remove — Armature, (never None)
		@param do_unlink Unlink all usages of this armature before deleting it (WARNING: will also delete objects instancing that armature data) — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this armature data — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this armature data — boolean, (optional)
	**/
	function remove(armature:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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