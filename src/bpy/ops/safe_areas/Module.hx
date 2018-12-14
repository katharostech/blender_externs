package bpy.ops.safe_areas;
/**
	Safe Areas Operators
**/
@:pythonImport("bpy.ops.safe_areas") extern class Module {
	/**
		Add or remove a Safe Areas Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
}