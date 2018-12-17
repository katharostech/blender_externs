package bpy.types.userpreferences;
@:enum abstract Enum1(String) from String to String {
	var INTERFACE : String = "INTERFACE";
	var EDITING : String = "EDITING";
	var INPUT : String = "INPUT";
	var ADDONS : String = "ADDONS";
	var THEMES : String = "THEMES";
	var LIGHTS : String = "LIGHTS";
	var SYSTEM_GENERAL : String = "SYSTEM_GENERAL";
	var SYSTEM_FILES : String = "SYSTEM_FILES";
}/**
	Global user preferences
**/
@:native("bpy.types.UserPreferences") extern class UserPreferences {
	/**
		Active section of the user preferences shown in the user interface
		
		Type: enum in [‘INTERFACE’, ‘EDITING’, ‘INPUT’, ‘ADDONS’, ‘THEMES’, ‘LIGHTS’, ‘SYSTEM_GENERAL’, ‘SYSTEM_FILES’], default ‘INTERFACE’
	**/
	var active_section : bpy.types.userpreferences.UserPreferences.Enum1;
	/**
		
		
		Type: Addons bpy_prop_collection of Addon, (readonly)
	**/
	var addons(default, never) : bpy.types.addons.Addons;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var app_template : String;
	/**
		
		
		Type: PathCompareCollection bpy_prop_collection of PathCompare, (readonly)
	**/
	var autoexec_paths(default, never) : bpy.types.pathcomparecollection.PathCompareCollection;
	/**
		Settings for interacting with Blender data
		
		Type: UserPreferencesEdit, (readonly, never None)
	**/
	var edit(default, never) : bpy.types.userpreferencesedit.UserPreferencesEdit;
	/**
		Default paths for external files
		
		Type: UserPreferencesFilePaths, (readonly, never None)
	**/
	var filepaths(default, never) : bpy.types.userpreferencesfilepaths.UserPreferencesFilePaths;
	/**
		Settings for input devices
		
		Type: UserPreferencesInput, (readonly, never None)
	**/
	var inputs(default, never) : bpy.types.userpreferencesinput.UserPreferencesInput;
	/**
		
		
		Type: StudioLights bpy_prop_collection of StudioLight, (readonly)
	**/
	var studio_lights(default, never) : bpy.types.studiolights.StudioLights;
	/**
		Graphics driver and operating system settings
		
		Type: UserPreferencesSystem, (readonly, never None)
	**/
	var system(default, never) : bpy.types.userpreferencessystem.UserPreferencesSystem;
	/**
		
		
		Type: bpy_prop_collection of Theme, (readonly)
	**/
	var themes(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: bpy_prop_collection of ThemeStyle, (readonly)
	**/
	var ui_styles(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Version of Blender the userpref.blend was saved with
		
		Type: int array of 3 items in [0, inf], default (0, 0, 0), (readonly)
	**/
	var version(default, never) : Array<Int>;
	/**
		Preferences related to viewing data
		
		Type: UserPreferencesView, (readonly, never None)
	**/
	var view(default, never) : bpy.types.userpreferencesview.UserPreferencesView;
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