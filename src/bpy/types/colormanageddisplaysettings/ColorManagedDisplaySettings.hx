package bpy.types.colormanageddisplaysettings;
@:enum abstract Enum1(String) from String to String {
	var DEFAULT : String = "DEFAULT";
}/**
	Color management specific to display device
**/
@:pythonImport("bpy.types.ColorManagedDisplaySettings") extern class ColorManagedDisplaySettings {
	/**
		Display device name
		
		Type: enum in [‘DEFAULT’], default ‘DEFAULT’
	**/
	var display_device : bpy.types.colormanageddisplaysettings.ColorManagedDisplaySettings.Enum1;
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