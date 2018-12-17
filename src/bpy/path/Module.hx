package bpy.path;
/**
	Path Utilities (bpy.path)
	
	This module has a similar scope to os.path, containing utility
	            functions for dealing with paths in Blender.
**/
@:pythonImport("bpy.path") extern class Module {
	/**
		Returns the absolute path relative to the current blend file
		using the “//” prefix.
		@param start Relative to this path,
		                                        when not set the current filename is used. — string or bytes
		@param library The library this path is from. This is only included for
		                                        convenience, when the library is not None its path replaces start. — bpy.types.Library
	**/
	static function abspath(start:String, library:Dynamic):Void;
	/**
		Equivalent to os.path.basename, but skips a “//” prefix.
		
		Use for Windows compatibility.
	**/
	static function basename(path:Dynamic):Void;
	/**
		Returns a name with characters replaced that
		may cause problems under various circumstances,
		such as writing to a file.
		All characters besides A-Z/a-z, 0-9 are replaced with “_”
		or the replace argument if defined.
	**/
	static function clean_name(name:Dynamic, replace:Dynamic):Void;
	/**
		Creates a display string from name to be used menus and the user interface.
		Capitalize the first letter in all lowercase names,
		mixed case names are kept as is. Intended for use with
		filenames and module names.
	**/
	static function display_name(name:Dynamic):Void;
	/**
		Performs the reverse of display_name using literal versions of characters
		which aren’t supported in a filepath.
	**/
	static function display_name_to_filepath(name:Dynamic):Void;
	/**
		Returns the path stripped of directory and extension,
		ensured to be utf8 compatible.
	**/
	static function display_name_from_filepath(name:Dynamic):Void;
	/**
		Return the path with the extension added if it is not already set.
		@param ext The extension to check for, can be a compound extension. Should
		                                        start with a dot, such as ‘.blend’ or ‘.tar.gz’. — string
		@param case_sensitive Check for matching case when comparing extensions. — bool
	**/
	static function ensure_ext(ext:String, case_sensitive:Dynamic):Void;
	/**
		Returns true if path in a subdirectory of directory.
		Both paths must be absolute.
		@param path An absolute path. — string or bytes
	**/
	static function is_subdir(path:String):Void;
	/**
		Return a list of modules which can be imported from path.
		@param path a directory to scan. — string
		@param recursive Also return submodule names for packages. — bool
		
		@returns list
	**/
	static function module_names(path:String, recursive:Dynamic):Array<Dynamic>;
	/**
		Replace the path separator with the systems native os.sep.
	**/
	static function native_pathsep(path:Dynamic):Void;
	/**
		Given a sequence of directories, remove duplicates and
		any directories nested in one of the other paths.
		(Useful for recursive path searching).
		@param dirs Sequence of directory paths. — sequence
		
		@returns list
	**/
	static function reduce_dirs(dirs:Dynamic):Array<Dynamic>;
	/**
		Returns the path relative to the current blend file using the “//” prefix.
		@param path An absolute path. — string or bytes
		@param start Relative to this path,
		                                        when not set the current filename is used. — string or bytes
	**/
	static function relpath(path:String, start:String):Void;
	/**
		Resolve a case insensitive path on a case sensitive system,
		returning a string with the path if found else return the original path.
	**/
	static function resolve_ncase(path:Dynamic):Void;
}