package bpy.ops.cloth;
/**
	Cloth Operators
**/
@:pythonImport("bpy.ops.cloth") extern class Module {
	/**
		Add or remove a Cloth Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
}