package bpy.ops.camera;
/**
	Camera Operators
**/
@:pythonImport("bpy.ops.camera") extern class Module {
	/**
		Add or remove a Camera Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
		@param use_focal_length Include Focal Length, Include focal length into the preset — boolean, (optional)
	**/
	static function preset_add(name:String, remove_name:Bool, remove_active:Bool, use_focal_length:Bool):Void;
}