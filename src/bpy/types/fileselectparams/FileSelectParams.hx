package bpy.types.fileselectparams;
@:enum abstract Enum1(String) from String to String {
	var TINY : String = "TINY";
	var SMALL : String = "SMALL";
	var NORMAL : String = "NORMAL";
	var LARGE : String = "LARGE";
}@:enum abstract Enum2(String) from String to String {
	var LIST_SHORT : String = "LIST_SHORT";
	var LIST_LONG : String = "LIST_LONG";
	var THUMBNAIL : String = "THUMBNAIL";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var BLEND : String = "BLEND";
	var pyALL_1 : String = "ALL_1";
	var pyALL_2 : String = "ALL_2";
	var pyALL_3 : String = "ALL_3";
}@:enum abstract Enum4(String) from String to String {
	var FILE_SORT_ALPHA : String = "FILE_SORT_ALPHA";
	var FILE_SORT_EXTENSION : String = "FILE_SORT_EXTENSION";
	var FILE_SORT_TIME : String = "FILE_SORT_TIME";
	var FILE_SORT_SIZE : String = "FILE_SORT_SIZE";
}/**
	File Select Parameters
**/
@:native("bpy.types.FileSelectParams") extern class FileSelectParams {
	/**
		Directory displayed in the file browser
		
		Type: string, default “”, (never None)
	**/
	var directory : String;
	/**
		Change the size of the display (width of columns or thumbnails size)
		
		Type: enum in [‘TINY’, ‘SMALL’, ‘NORMAL’, ‘LARGE’], default ‘TINY’
	**/
	var display_size : bpy.types.fileselectparams.FileSelectParams.Enum1;
	/**
		Display mode for the file list
		
		Type: enum in [‘LIST_SHORT’, ‘LIST_LONG’, ‘THUMBNAIL’], default ‘LIST_SHORT’
	**/
	var display_type : bpy.types.fileselectparams.FileSelectParams.Enum2;
	/**
		Active file in the file browser
		
		Type: string, default “”, (never None)
	**/
	var filename : String;
	/**
		UNIX shell-like filename patterns matching, supports wildcards (‘*’) and list of patterns separated by ‘;’
		
		Type: string, default “”, (never None)
	**/
	var filter_glob : String;
	/**
		Which ID types to show/hide, when browsing a library
		
		Type: enum set in {‘ACTION’, ‘ARMATURE’, ‘BRUSH’, ‘CAMERA’, ‘CACHEFILE’, ‘CURVE’, ‘GREASE_PENCIL’, ‘GROUP’, ‘IMAGE’, ‘LIGHT’, ‘LINESTYLE’, ‘LATTICE’, ‘MATERIAL’, ‘METABALL’, ‘MOVIE_CLIP’, ‘MESH’, ‘MASK’, ‘NODE_TREE’, ‘OBJECT’, ‘PARTICLE_SETTINGS’, ‘PALETTE’, ‘PAINT_CURVE’, ‘LIGHT_PROBE’, ‘SCENE’, ‘SPEAKER’, ‘SOUND’, ‘TEXTURE’, ‘TEXT’, ‘FONT’, ‘WORLD’, ‘WORK_SPACE’}, default {‘ACTION’}
	**/
	var filter_id : Dynamic;
	/**
		Which ID categories to show/hide, when browsing a library
		
		Type: enum set in {‘SCENE’, ‘ANIMATION’, ‘OBJECT’, ‘GEOMETRY’, ‘SHADING’, ‘IMAGE’, ‘ENVIRONMENT’, ‘MISC’}, default {‘SCENE’}
	**/
	var filter_id_category : Dynamic;
	/**
		Filter by name, supports ‘*’ wildcard
		
		Type: string, default “”, (never None)
	**/
	var filter_search : String;
	/**
		Numbers of dirtree levels to show simultaneously
		
		Type: enum in [‘NONE’, ‘BLEND’, ‘ALL_1’, ‘ALL_2’, ‘ALL_3’], default ‘NONE’
	**/
	var recursion_level : bpy.types.fileselectparams.FileSelectParams.Enum3;
	/**
		Show hidden dot files
		
		Type: boolean, default False
	**/
	var show_hidden : Bool;
	/**
		
		
		Type: enum in [‘FILE_SORT_ALPHA’, ‘FILE_SORT_EXTENSION’, ‘FILE_SORT_TIME’, ‘FILE_SORT_SIZE’], default ‘FILE_SORT_ALPHA’
	**/
	var sort_method : bpy.types.fileselectparams.FileSelectParams.Enum4;
	/**
		Title for the file browser
		
		Type: string, default “”, (readonly, never None)
	**/
	var title(default, never) : String;
	/**
		Enable filtering of files
		
		Type: boolean, default False
	**/
	var use_filter : Bool;
	/**
		Show .blend1, .blend2, etc. files
		
		Type: boolean, default False
	**/
	var use_filter_backup : Bool;
	/**
		Show .blend files
		
		Type: boolean, default False
	**/
	var use_filter_blender : Bool;
	/**
		Show .blend files items (objects, materials, etc.)
		
		Type: boolean, default False
	**/
	var use_filter_blendid : Bool;
	/**
		Show folders
		
		Type: boolean, default False
	**/
	var use_filter_folder : Bool;
	/**
		Show font files
		
		Type: boolean, default False
	**/
	var use_filter_font : Bool;
	/**
		Show image files
		
		Type: boolean, default False
	**/
	var use_filter_image : Bool;
	/**
		Show movie files
		
		Type: boolean, default False
	**/
	var use_filter_movie : Bool;
	/**
		Show script files
		
		Type: boolean, default False
	**/
	var use_filter_script : Bool;
	/**
		Show sound files
		
		Type: boolean, default False
	**/
	var use_filter_sound : Bool;
	/**
		Show text files
		
		Type: boolean, default False
	**/
	var use_filter_text : Bool;
	/**
		Whether we may browse blender files’ content or not
		
		Type: boolean, default False, (readonly)
	**/
	var use_library_browsing(default, never) : Bool;
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