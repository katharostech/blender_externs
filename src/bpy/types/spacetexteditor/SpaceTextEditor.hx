package bpy.types.spacetexteditor;
/**
	Text editor space data
**/
@:pythonImport("bpy.types.SpaceTextEditor") extern class SpaceTextEditor {
	/**
		Text to search for with the find tool
		
		Type: string, default “”, (never None)
	**/
	var find_text : String;
	/**
		Font size to use for displaying the text
		
		Type: int in [8, 32], default 0
	**/
	var font_size : Int;
	/**
		Column number to show right margin at
		
		Type: int in [0, 1024], default 0
	**/
	var margin_column : Int;
	/**
		Text to replace selected text with using the replace tool
		
		Type: string, default “”, (never None)
	**/
	var replace_text : String;
	/**
		Highlight the current line
		
		Type: boolean, default False
	**/
	var show_line_highlight : Bool;
	/**
		Show line numbers next to the text
		
		Type: boolean, default False
	**/
	var show_line_numbers : Bool;
	/**
		Show right margin
		
		Type: boolean, default False
	**/
	var show_margin : Bool;
	/**
		Syntax highlight for scripting
		
		Type: boolean, default False
	**/
	var show_syntax_highlight : Bool;
	/**
		Wrap words if there is not enough horizontal space
		
		Type: boolean, default False
	**/
	var show_word_wrap : Bool;
	/**
		Number of spaces to display tabs with
		
		Type: int in [2, 8], default 0
	**/
	var tab_width : Int;
	/**
		Text displayed and edited in this space
		
		Type: Text
	**/
	var text : bpy.types.text.Text;
	/**
		Top line visible
		
		Type: int in [0, inf], default 0
	**/
	var top : Int;
	/**
		Search in all text data-blocks, instead of only the active one
		
		Type: boolean, default False
	**/
	var use_find_all : Bool;
	/**
		Search again from the start of the file when reaching the end
		
		Type: boolean, default False
	**/
	var use_find_wrap : Bool;
	/**
		Run python while editing
		
		Type: boolean, default False
	**/
	var use_live_edit : Bool;
	/**
		Search string is sensitive to uppercase and lowercase letters
		
		Type: boolean, default False
	**/
	var use_match_case : Bool;
	/**
		Overwrite characters when typing rather than inserting them
		
		Type: boolean, default False
	**/
	var use_overwrite : Bool;
	/**
		Amount of lines that can be visible in current editor
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var visible_lines(default, never) : Int;
	/**
		Retrieve the region position from the given line and character position
		@param line Line, Line index — int in [-inf, inf]
		@param column Column, Column index — int in [-inf, inf]
		
		@returns int array of 2 items in [-1, inf]
	**/
	function region_location_from_cursor(line:Int, column:Int):Array<Int>;
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
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function draw_handler_add():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function draw_handler_remove():Void;
	/**
		Space data type
		
		Type: enum in [‘EMPTY’, ‘VIEW_3D’, ‘IMAGE_EDITOR’, ‘NODE_EDITOR’, ‘SEQUENCE_EDITOR’, ‘CLIP_EDITOR’, ‘DOPESHEET_EDITOR’, ‘GRAPH_EDITOR’, ‘NLA_EDITOR’, ‘TEXT_EDITOR’, ‘CONSOLE’, ‘INFO’, ‘TOPBAR’, ‘STATUSBAR’, ‘OUTLINER’, ‘PROPERTIES’, ‘FILE_BROWSER’, ‘USER_PREFERENCES’], default ‘EMPTY’, (readonly)
	**/
	var type(default, never) : bpy.types.space.Space.Enum1;
	/**
		
		
		Type: boolean, default False
	**/
	var show_locked_time : Bool;
}