package bpy.types.userpreferencesfilepaths;
@:enum abstract Enum1(String) from String to String {
	var INTERNAL : String = "INTERNAL";
	var DJV : String = "DJV";
	var FRAMECYCLER : String = "FRAMECYCLER";
	var RV : String = "RV";
	var MPLAYER : String = "MPLAYER";
	var CUSTOM : String = "CUSTOM";
}/**
	Default paths for external files
**/
@:native("bpy.types.UserPreferencesFilePaths") extern class UserPreferencesFilePaths {
	/**
		Path to a custom animation/frame sequence player
		
		Type: string, default “”, (never None)
	**/
	var animation_player : String;
	/**
		Preset configs for external animation players
		
		Type: enum in [‘INTERNAL’, ‘DJV’, ‘FRAMECYCLER’, ‘RV’, ‘MPLAYER’, ‘CUSTOM’], default ‘INTERNAL’
	**/
	var animation_player_preset : bpy.types.userpreferencesfilepaths.UserPreferencesFilePaths.Enum1;
	/**
		The time (in minutes) to wait between automatic temporary saves
		
		Type: int in [1, 60], default 0
	**/
	var auto_save_time : Int;
	/**
		The default directory to search for loading fonts
		
		Type: string, default “”, (never None)
	**/
	var font_directory : String;
	/**
		Hide recent locations in the file selector
		
		Type: boolean, default False
	**/
	var hide_recent_locations : Bool;
	/**
		Hide system bookmarks in the file selector
		
		Type: boolean, default False
	**/
	var hide_system_bookmarks : Bool;
	/**
		The path to the ‘/branches’ directory of your local svn-translation copy, to allow translating from the UI
		
		Type: string, default “”, (never None)
	**/
	var pyi18n_branches_directory : String;
	/**
		Path to an image editor
		
		Type: string, default “”, (never None)
	**/
	var image_editor : String;
	/**
		Maximum number of recently opened files to remember
		
		Type: int in [0, 30], default 0
	**/
	var recent_files : Int;
	/**
		Where to cache raw render results
		
		Type: string, default “”, (never None)
	**/
	var render_cache_directory : String;
	/**
		The default directory for rendering output, for new scenes
		
		Type: string, default “”, (never None)
	**/
	var render_output_directory : String;
	/**
		The number of old versions to maintain in the current directory, when manually saving
		
		Type: int in [0, 32], default 0
	**/
	var save_version : Int;
	/**
		Alternate script path, matching the default layout with subdirs: startup, add-ons &amp; modules (requires restart)
		
		Type: string, default “”, (never None)
	**/
	var script_directory : String;
	/**
		Hide files/data-blocks that start with a dot (.*)
		
		Type: boolean, default False
	**/
	var show_hidden_files_datablocks : Bool;
	/**
		Open in thumbnail view for images and movies
		
		Type: boolean, default False
	**/
	var show_thumbnails : Bool;
	/**
		The default directory to search for sounds
		
		Type: string, default “”, (never None)
	**/
	var sound_directory : String;
	/**
		The directory for storing temporary save files
		
		Type: string, default “”, (never None)
	**/
	var temporary_directory : String;
	/**
		The default directory to search for textures
		
		Type: string, default “”, (never None)
	**/
	var texture_directory : String;
	/**
		Automatic saving of temporary files in temp directory, uses process ID (Sculpt or edit mode data won’t be saved!’)
		
		Type: boolean, default False
	**/
	var use_auto_save_temporary_files : Bool;
	/**
		Enable file compression when saving .blend files
		
		Type: boolean, default False
	**/
	var use_file_compression : Bool;
	/**
		Display only files with extensions in the image select window
		
		Type: boolean, default False
	**/
	var use_filter_files : Bool;
	/**
		Always load session recovery and save it after quitting Blender
		
		Type: boolean, default False
	**/
	var use_keep_session : Bool;
	/**
		Load user interface setup when loading .blend files
		
		Type: boolean, default False
	**/
	var use_load_ui : Bool;
	/**
		Default relative path option for the file selector
		
		Type: boolean, default False
	**/
	var use_relative_paths : Bool;
	/**
		Enables automatic saving of preview images in the .blend file
		
		Type: boolean, default False
	**/
	var use_save_preview_images : Bool;
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