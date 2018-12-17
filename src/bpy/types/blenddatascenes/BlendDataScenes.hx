package bpy.types.blenddatascenes;
/**
	Collection of scenes
**/
@:native("bpy.types.BlendDataScenes") extern class BlendDataScenes {
	/**
		Add a new scene to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns Scene
	**/
	function pyNew(name:String):bpy.types.scene.Scene;
	/**
		Remove a scene from the current blendfile
		@param scene Scene to remove — Scene, (never None)
		@param do_unlink Unlink all usages of this scene before deleting it — boolean, (optional)
	**/
	function remove(scene:Dynamic, do_unlink:Bool):Void;
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