package bpy.ops.font;
/**
	Font Operators
**/
@:pythonImport("bpy.ops.font") extern class Module {
	/**
		Set font case
		@param case Case, Lower or upper case — enum in ['LOWER', 'UPPER'], (optional)
	**/
	static function case_set(case:bpy.ops.font.Font.Enum1):Void;
	/**
		Toggle font case
	**/
	static function case_toggle():Void;
	/**
		Change font character code
		@param delta Delta, Number to increase or decrease character code with — int in [-255, 255], (optional)
	**/
	static function change_character(delta:Int):Void;
	/**
		Change font spacing
		@param delta Delta, Amount to decrease or increase character spacing with — int in [-20, 20], (optional)
	**/
	static function change_spacing(delta:Int):Void;
	/**
		Delete text by cursor position
		@param type Type, Which part of the text to delete — enum in ['NEXT_CHARACTER', 'PREVIOUS_CHARACTER', 'NEXT_WORD', 'PREVIOUS_WORD', 'SELECTION', 'NEXT_OR_SELECTION', 'PREVIOUS_OR_SELECTION'], (optional)
	**/
	static function delete(type:bpy.ops.font.Font.Enum2):Void;
	/**
		Insert line break at cursor position
	**/
	static function line_break():Void;
	/**
		Move cursor to position type
		@param type Type, Where to move cursor to — enum in ['LINE_BEGIN', 'LINE_END', 'PREVIOUS_CHARACTER', 'NEXT_CHARACTER', 'PREVIOUS_WORD', 'NEXT_WORD', 'PREVIOUS_LINE', 'NEXT_LINE', 'PREVIOUS_PAGE', 'NEXT_PAGE'], (optional)
	**/
	static function move(type:bpy.ops.font.Font.Enum3):Void;
	/**
		Move the cursor while selecting
		@param type Type, Where to move cursor to, to make a selection — enum in ['LINE_BEGIN', 'LINE_END', 'PREVIOUS_CHARACTER', 'NEXT_CHARACTER', 'PREVIOUS_WORD', 'NEXT_WORD', 'PREVIOUS_LINE', 'NEXT_LINE', 'PREVIOUS_PAGE', 'NEXT_PAGE'], (optional)
	**/
	static function move_select(type:bpy.ops.font.Font.Enum4):Void;
	/**
		Load a new font from a file
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
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
	**/
	static function open(filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, display_type:bpy.ops.font.Font.Enum5, sort_method:bpy.ops.font.Font.Enum6):Void;
	/**
		Select all text
	**/
	static function select_all():Void;
	/**
		Set font style
		@param style Style, Style to set selection to — enum in ['BOLD', 'ITALIC', 'UNDERLINE', 'SMALL_CAPS'], (optional)
		@param clear Clear, Clear style rather than setting it — boolean, (optional)
	**/
	static function style_set(style:bpy.ops.font.Font.Enum7, clear:Bool):Void;
	/**
		Toggle font style
		@param style Style, Style to set selection to — enum in ['BOLD', 'ITALIC', 'UNDERLINE', 'SMALL_CAPS'], (optional)
	**/
	static function style_toggle(style:bpy.ops.font.Font.Enum8):Void;
	/**
		Copy selected text to clipboard
	**/
	static function text_copy():Void;
	/**
		Cut selected text to clipboard
	**/
	static function text_cut():Void;
	/**
		Insert text at cursor position
		@param text Text, Text to insert at the cursor position — string, (optional, never None)
		@param accent Accent mode, Next typed character will strike through previous, for special character input — boolean, (optional)
	**/
	static function text_insert(text:String, accent:Bool):Void;
	/**
		Paste text from clipboard
	**/
	static function text_paste():Void;
	/**
		Paste contents from file
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
	**/
	static function text_paste_from_file(filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.font.Font.Enum9, sort_method:bpy.ops.font.Font.Enum10):Void;
	/**
		Add a new text box
	**/
	static function textbox_add():Void;
	/**
		Remove the textbox
		@param index Index, The current text box — int in [0, inf], (optional)
	**/
	static function textbox_remove(index:Int):Void;
	/**
		Unlink active font data-block
	**/
	static function unlink():Void;
}