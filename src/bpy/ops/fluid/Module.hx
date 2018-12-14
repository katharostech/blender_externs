package bpy.ops.fluid;
/**
	Fluid Operators
**/
@:pythonImport("bpy.ops.fluid") extern class Module {
	/**
		Bake fluid simulation
	**/
	static function bake():Void;
	/**
		Add or remove a Fluid Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
}