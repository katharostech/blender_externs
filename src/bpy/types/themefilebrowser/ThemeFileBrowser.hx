package bpy.types.themefilebrowser;
/**
	Theme settings for the File Browser
**/
@:pythonImport("bpy.types.ThemeFileBrowser") extern class ThemeFileBrowser {
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var selected_file : Array<Float>;
	/**
		Settings for space
		
		Type: ThemeSpaceGeneric, (readonly, never None)
	**/
	var space(default, never) : bpy.types.themespacegeneric.ThemeSpaceGeneric;
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