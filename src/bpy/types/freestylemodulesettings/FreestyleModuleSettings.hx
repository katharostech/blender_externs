package bpy.types.freestylemodulesettings;
/**
	Style module configuration for specifying a style module
**/
@:pythonImport("bpy.types.FreestyleModuleSettings") extern class FreestyleModuleSettings {
	/**
		Python script to define a style module
		
		Type: Text
	**/
	var script : bpy.types.text.Text;
	/**
		Enable or disable this style module during stroke rendering
		
		Type: boolean, default False
	**/
	var use : Bool;
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