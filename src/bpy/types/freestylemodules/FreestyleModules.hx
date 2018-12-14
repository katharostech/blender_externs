package bpy.types.freestylemodules;
/**
	A list of style modules (to be applied from top to bottom)
**/
@:pythonImport("bpy.types.FreestyleModules") extern class FreestyleModules {
	/**
		Add a style module to scene render layer Freestyle settings
		
		@returns FreestyleModuleSettings
	**/
	function new():bpy.types.freestylemodulesettings.FreestyleModuleSettings;
	/**
		Remove a style module from scene render layer Freestyle settings
		@param module Style module to remove — FreestyleModuleSettings, (never None)
	**/
	function remove(module:bpy.types.freestylemodulesettings.FreestyleModuleSettings):Void;
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