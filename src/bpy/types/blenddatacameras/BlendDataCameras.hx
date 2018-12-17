package bpy.types.blenddatacameras;
/**
	Collection of cameras
**/
@:native("bpy.types.BlendDataCameras") extern class BlendDataCameras {
	/**
		Add a new camera to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns Camera
	**/
	function pyNew(name:String):bpy.types.camera.Camera;
	/**
		Remove a camera from the current blendfile
		@param camera Camera to remove — Camera, (never None)
		@param do_unlink Unlink all usages of this camera before deleting it (WARNING: will also delete objects instancing that camera data) — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this camera — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this camera — boolean, (optional)
	**/
	function remove(camera:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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