package bpy.utils;
/**
	Utilities (bpy.utils)
	
	This module contains utility functions specific to blender but
	            not associated with blenders internal data.
**/
@:pythonImport("bpy.utils") extern class Module {
	/**
		Returns a list of paths to external files referenced by the loaded .blend file.
		@param absolute When true the paths returned are made absolute. — boolean
		@param packed When true skip file paths for packed data. — boolean
		@param local When true skip linked library paths. — boolean
		
		@returns list of strings
	**/
	static function blend_paths(absolute:Bool, packed:Bool, local:Bool):Array<Dynamic>;
	/**
		Simple string escaping function used for animation paths.
		@param string text — string
		
		@returns string
	**/
	static function escape_identifier(string:String):String;
	/**
		Register a subclass of a blender type in (bpy.types.Panel,
		bpy.types.UIList, bpy.types.Menu, bpy.types.Header,
		bpy.types.Operator, bpy.types.KeyingSetInfo,
		bpy.types.RenderEngine).
		
		If the class has a register class method it will be called
		before registration.
	**/
	static function register_class(cls:Dynamic):Void;
	/**
		Return the base path for storing system files.
		@param type string in [‘USER’, ‘LOCAL’, ‘SYSTEM’]. — string
		@param major major version, defaults to current. — int
		@param minor minor version, defaults to current. — string
		
		@returns string
	**/
	static function resource_path(type:String, major:Int, minor:String):String;
	/**
		Unload the python class from blender.
		
		If the class has an unregister class method it will be called
		before unregistering.
	**/
	static function unregister_class(cls:Dynamic):Void;
	static function keyconfig_init():Void;
	static function keyconfig_set(filepath:Dynamic, report:Dynamic):Void;
	/**
		Load scripts and run each modules register function.
		@param reload_scripts Causes all scripts to have their unregister method
		                                        called before loading. — bool
		@param refresh_scripts only load scripts which are not already loaded
		                                        as modules. — bool
	**/
	static function load_scripts(reload_scripts:Dynamic, refresh_scripts:Dynamic):Void;
	/**
		Load all modules in a path and return them as a list.
		@param path this path is scanned for scripts and packages. — string
		@param loaded_modules already loaded module names, files matching these
		                                        names will be ignored. — set
		
		@returns list
	**/
	static function modules_from_path(path:String, loaded_modules:Dynamic):Array<Dynamic>;
	static function preset_find(name:Dynamic, preset_path:Dynamic, display_name:Dynamic, ext:Dynamic):Void;
	/**
		Returns a list of paths for a specific preset.
		@param subdir preset subdirectory (must not be an absolute path). — string
		
		@returns list
	**/
	static function preset_paths(subdir:String):Array<Dynamic>;
	/**
		Run this after creating new script paths to update sys.path
	**/
	static function refresh_script_paths():Void;
	/**
		Returns valid application template paths.
		@param subdir Optional subdir. — string
		
		@returns generator
	**/
	static function app_template_paths(subdir:String):Dynamic;
	static function register_manual_map(manual_hook:Dynamic):Void;
	static function unregister_manual_map(manual_hook:Dynamic):Void;
	/**
		Utility function to create register and unregister functions
		which simply registers and unregisters a sequence of classes.
	**/
	static function register_classes_factory(classes:Dynamic):Void;
	/**
		Utility function to create register and unregister functions
		which simply load submodules,
		calling their register &amp; unregister functions.
		@param module_name The module name, typically __name__. — string
		@param submodule_names List of submodule names to load and unload. — list of strings
		
		@returns tuple pair of functions
	**/
	static function register_submodule_factory(module_name:String, submodule_names:Array<Dynamic>):Dynamic;
	/**
		Create RNA “paths” from given names.
		@param struct_name Name of a RNA struct (like e.g. “Scene”). — string
		@param prop_name Name of a RNA struct’s property. — string
		@param enum_name Name of a RNA enum identifier. — string
		
		@returns tuple of strings
	**/
	static function make_rna_paths(struct_name:String, prop_name:String, enum_name:String):Dynamic;
	static function manual_map():Void;
	/**
		returns the env var and falls back to home dir or None
	**/
	static function script_path_user():Void;
	/**
		returns the user preference or None
	**/
	static function script_path_pref():Void;
	/**
		Returns a list of valid script paths.
		@param subdir Optional subdir. — string
		@param user_pref Include the user preference script path. — bool
		@param check_all Include local, user and system paths rather just the paths
		                                        blender uses. — bool
		
		@returns list
	**/
	static function script_paths(subdir:String, user_pref:Dynamic, check_all:Dynamic):Array<Dynamic>;
	/**
		Returns an SMPTE formatted string from the frame:
		HH:MM:SS:FF.
		
		If fps and fps_base are not given the current scene is used.
		@param frame frame number. — int or float.
		
		@returns string
	**/
	static function smpte_from_frame(frame:Int):String;
	/**
		Returns an SMPTE formatted string from the time:
		HH:MM:SS:FF.
		
		If the fps is not given the current scene is used.
		@param time time in seconds. — int, float or datetime.timedelta.
		
		@returns string
	**/
	static function smpte_from_seconds(time:Int):String;
	/**
		Return a user resource path (normally from the users home directory).
		@param type Resource type in [‘DATAFILES’, ‘CONFIG’, ‘SCRIPTS’, ‘AUTOSAVE’]. — string
		@param subdir Optional subdirectory. — string
		@param create Treat the path as a directory and create
		                                        it if its not existing. — boolean
		
		@returns string
	**/
	static function user_resource(type:String, subdir:String, create:Bool):String;
	static function execfile(filepath:Dynamic, mod:Dynamic):Void;
}