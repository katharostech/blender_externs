package bpy.ops.file;
/**
	File Operators
**/
@:pythonImport("bpy.ops.file") extern class Module {
	/**
		Automatically pack all external files into the .blend file
	**/
	static function autopack_toggle():Void;
	/**
		Add a bookmark for the selected/active directory
	**/
	static function bookmark_add():Void;
	/**
		Delete all invalid bookmarks
	**/
	static function bookmark_cleanup():Void;
	/**
		Delete selected bookmark
		@param index Index — int in [-1, 20000], (optional)
	**/
	static function bookmark_delete(index:Int):Void;
	/**
		Move the active bookmark up/down in the list
		@param direction Direction, Direction to move the active bookmark towardsTOP Top, Top of the list.UP Up.DOWN Down.BOTTOM Bottom, Bottom of the list. — enum in ['TOP', 'UP', 'DOWN', 'BOTTOM'], (optional)
	**/
	static function bookmark_move(direction:bpy.ops.file.File.Enum1):Void;
	/**
		Toggle bookmarks display
	**/
	static function bookmark_toggle():Void;
	/**
		Cancel loading of selected file
	**/
	static function cancel():Void;
	/**
		Delete selected files
	**/
	static function delete():Void;
	/**
		Create a new directory
		@param directory Directory, Name of new directory — string, (optional, never None)
		@param open Open, Open new directory — boolean, (optional)
	**/
	static function directory_new(directory:String, open:Bool):Void;
	/**
		Execute selected file
		@param need_active Need Active, Only execute if there’s an active selected file in the file list — boolean, (optional)
	**/
	static function execute(need_active:Bool):Void;
	/**
		Increment number in filename
		@param increment Increment — int in [-100, 100], (optional)
	**/
	static function filenum(increment:Int):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function filepath_drop(filepath:Dynamic):Void;
	/**
		Try to find missing external files
		@param find_all Find All, Find all files in the search path (not just missing) — boolean, (optional)
		@param directory Directory, Directory of the file — string, (optional, never None)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
	**/
	static function find_missing_files(find_all:Bool, directory:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.file.File.Enum2, sort_method:bpy.ops.file.File.Enum3):Void;
	/**
		Toggle hide hidden dot files
	**/
	static function hidedot():Void;
	/**
		Highlight selected file(s)
	**/
	static function highlight():Void;
	/**
		Make all paths to external files absolute
	**/
	static function make_paths_absolute():Void;
	/**
		Make all paths to external files relative to current .blend
	**/
	static function make_paths_relative():Void;
	/**
		Move to next folder
	**/
	static function next():Void;
	/**
		Pack all used external files into the .blend
	**/
	static function pack_all():Void;
	/**
		Pack all used Blender library files into the current .blend
	**/
	static function pack_libraries():Void;
	/**
		Move to parent directory
	**/
	static function parent():Void;
	/**
		Move to previous folder
	**/
	static function previous():Void;
	/**
		Refresh the file list
	**/
	static function refresh():Void;
	/**
		Rename file or file directory
	**/
	static function rename():Void;
	/**
		Report all missing external files
	**/
	static function report_missing_files():Void;
	/**
		Reset Recent files
	**/
	static function reset_recent():Void;
	/**
		Activate/select file
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param fill Fill, Select everything beginning with the last selection — boolean, (optional)
		@param open Open, Open a directory when selecting it — boolean, (optional)
	**/
	static function select(extend:Bool, fill:Bool, open:Bool):Void;
	/**
		Select or deselect all files
	**/
	static function select_all():Void;
	/**
		Select a bookmarked directory
		@param dir Dir — string, (optional, never None)
	**/
	static function select_bookmark(dir:String):Void;
	/**
		Activate/select the file(s) contained in the border
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool):Void;
	/**
		Select/Deselect files by walking through them
		@param direction Walk Direction, Select/Deselect file in this direction — enum in ['UP', 'DOWN', 'LEFT', 'RIGHT'], (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param fill Fill, Select everything beginning with the last selection — boolean, (optional)
	**/
	static function select_walk(direction:bpy.ops.file.File.Enum4, extend:Bool, fill:Bool):Void;
	/**
		Smooth scroll to make editable file visible
	**/
	static function smoothscroll():Void;
	/**
		Unpack all files packed into this .blend to external ones
		@param method Method, How to unpack — enum in ['USE_LOCAL', 'WRITE_LOCAL', 'USE_ORIGINAL', 'WRITE_ORIGINAL', 'KEEP'], (optional)
	**/
	static function unpack_all(method:bpy.ops.file.File.Enum5):Void;
	/**
		Unpack this file to an external file
		@param method Method, How to unpack — enum in ['USE_LOCAL', 'WRITE_LOCAL', 'USE_ORIGINAL', 'WRITE_ORIGINAL'], (optional)
		@param id_name ID name, Name of ID block to unpack — string, (optional, never None)
		@param id_type ID Type, Identifier type of ID block — int in [0, inf], (optional)
	**/
	static function unpack_item(method:bpy.ops.file.File.Enum6, id_name:String, id_type:Int):Void;
	/**
		Unpack all used Blender library files from this .blend file
	**/
	static function unpack_libraries():Void;
}