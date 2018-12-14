package bpy.ops.text;
/**
	Text Operators
**/
@:pythonImport("bpy.ops.text") extern class Module {
	/**
		Show a list of used text in the open document
	**/
	static function autocomplete():Void;
	/**
		Convert selected text to comment
	**/
	static function comment():Void;
	/**
		Convert whitespaces by type
		@param type Type, Type of whitespace to convert to — enum in ['SPACES', 'TABS'], (optional)
	**/
	static function convert_whitespace(type:bpy.ops.text.Text.Enum1):Void;
	/**
		Copy selected text to clipboard
	**/
	static function copy():Void;
	/**
		Set cursor position
		@param x X — int in [-inf, inf], (optional)
		@param y Y — int in [-inf, inf], (optional)
	**/
	static function cursor_set(x:Int, y:Int):Void;
	/**
		Cut selected text to clipboard
	**/
	static function cut():Void;
	/**
		Delete text by cursor position
		@param type Type, Which part of the text to delete — enum in ['NEXT_CHARACTER', 'PREVIOUS_CHARACTER', 'NEXT_WORD', 'PREVIOUS_WORD'], (optional)
	**/
	static function delete(type:bpy.ops.text.Text.Enum2):Void;
	/**
		Duplicate the current line
	**/
	static function duplicate_line():Void;
	/**
		Find specified text
	**/
	static function find():Void;
	/**
		Find specified text and set as selected
	**/
	static function find_set_selected():Void;
	/**
		Indent selected text
	**/
	static function indent():Void;
	/**
		Insert text at cursor position
		@param text Text, Text to insert at the cursor position — string, (optional, never None)
	**/
	static function insert(text:String):Void;
	/**
		Jump cursor to line
		@param line Line, Line number to jump to — int in [1, inf], (optional)
	**/
	static function jump(line:Int):Void;
	/**
		Insert line break at cursor position
	**/
	static function line_break():Void;
	/**
		The current line number
	**/
	static function line_number():Void;
	/**
		Make active text file internal
	**/
	static function make_internal():Void;
	/**
		Move cursor to position type
		@param type Type, Where to move cursor to — enum in ['LINE_BEGIN', 'LINE_END', 'FILE_TOP', 'FILE_BOTTOM', 'PREVIOUS_CHARACTER', 'NEXT_CHARACTER', 'PREVIOUS_WORD', 'NEXT_WORD', 'PREVIOUS_LINE', 'NEXT_LINE', 'PREVIOUS_PAGE', 'NEXT_PAGE'], (optional)
	**/
	static function move(type:bpy.ops.text.Text.Enum3):Void;
	/**
		Move the currently selected line(s) up/down
		@param direction Direction — enum in ['UP', 'DOWN'], (optional)
	**/
	static function move_lines(direction:bpy.ops.text.Text.Enum4):Void;
	/**
		Move the cursor while selecting
		@param type Type, Where to move cursor to, to make a selection — enum in ['LINE_BEGIN', 'LINE_END', 'FILE_TOP', 'FILE_BOTTOM', 'PREVIOUS_CHARACTER', 'NEXT_CHARACTER', 'PREVIOUS_WORD', 'NEXT_WORD', 'PREVIOUS_LINE', 'NEXT_LINE', 'PREVIOUS_PAGE', 'NEXT_PAGE'], (optional)
	**/
	static function move_select(type:bpy.ops.text.Text.Enum5):Void;
	/**
		Create a new text data-block
	**/
	static function new():Void;
	/**
		Open a new text data-block
		@param filepath File Path, Path to file — string, (optional, never None)
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
		@param internal Make internal, Make text file internal after loading — boolean, (optional)
	**/
	static function open(filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.text.Text.Enum6, sort_method:bpy.ops.text.Text.Enum7, internal:Bool):Void;
	/**
		Toggle overwrite while typing
	**/
	static function overwrite_toggle():Void;
	/**
		Paste text from clipboard
		@param selection Selection, Paste text selected elsewhere rather than copied (X11 only) — boolean, (optional)
	**/
	static function paste(selection:Bool):Void;
	/**
		Toggle the properties region visibility
	**/
	static function properties():Void;
	/**
		Refresh all pyconstraints
	**/
	static function refresh_pyconstraints():Void;
	/**
		Reload active text data-block from its file
	**/
	static function reload():Void;
	/**
		Replace text with the specified text
	**/
	static function replace():Void;
	/**
		Replace text with specified text and set as selected
	**/
	static function replace_set_selected():Void;
	/**
		When external text is out of sync, resolve the conflict
		@param resolution Resolution, How to solve conflict due to differences in internal and external text — enum in ['IGNORE', 'RELOAD', 'SAVE', 'MAKE_INTERNAL'], (optional)
	**/
	static function resolve_conflict(resolution:bpy.ops.text.Text.Enum8):Void;
	/**
		Run active script
	**/
	static function run_script():Void;
	/**
		Save active text data-block
	**/
	static function save():Void;
	/**
		Save active text file with options
		@param filepath File Path, Path to file — string, (optional, never None)
		@param check_existing Check Existing, Check and warn on overwriting existing files — boolean, (optional)
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
	static function save_as(filepath:String, check_existing:Bool, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.text.Text.Enum9, sort_method:bpy.ops.text.Text.Enum10):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param lines Lines, Number of lines to scroll — int in [-inf, inf], (optional)
	**/
	static function scroll(lines:Int):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param lines Lines, Number of lines to scroll — int in [-inf, inf], (optional)
	**/
	static function scroll_bar(lines:Int):Void;
	/**
		Select all text
	**/
	static function select_all():Void;
	/**
		Select text by line
	**/
	static function select_line():Void;
	/**
		Select word under cursor
	**/
	static function select_word():Void;
	/**
		Set cursor selection
		@param select Select, Set selection end rather than cursor — boolean, (optional)
	**/
	static function selection_set(select:Bool):Void;
	/**
		Start searching text
	**/
	static function start_find():Void;
	/**
		Create 3D text object from active text data-block
		@param split_lines Split Lines, Create one object per line in the text — boolean, (optional)
	**/
	static function to_3d_object(split_lines:Bool):Void;
	/**
		Convert selected comment to text
	**/
	static function uncomment():Void;
	/**
		Unindent selected text
	**/
	static function unindent():Void;
	/**
		Unlink active text data-block
	**/
	static function unlink():Void;
}