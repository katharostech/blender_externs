package bpy.ops.console;
/**
	Console Operators
**/
@:pythonImport("bpy.ops.console") extern class Module {
	/**
		Evaluate the namespace up until the cursor and give a list of options or complete the name if there is only one
	**/
	static function autocomplete():Void;
	/**
		Print a message when the terminal initializes
	**/
	static function banner():Void;
	/**
		Clear text by type
		@param scrollback Scrollback, Clear the scrollback history — boolean, (optional)
		@param history History, Clear the command history — boolean, (optional)
	**/
	static function clear(scrollback:Bool, history:Bool):Void;
	/**
		Clear the line and store in history
	**/
	static function clear_line():Void;
	/**
		Copy selected text to clipboard
	**/
	static function copy():Void;
	/**
		Copy the console contents for use in a script
	**/
	static function copy_as_script():Void;
	/**
		Delete text by cursor position
		@param type Type, Which part of the text to delete — enum in ['NEXT_CHARACTER', 'PREVIOUS_CHARACTER', 'NEXT_WORD', 'PREVIOUS_WORD'], (optional)
	**/
	static function delete(type:bpy.ops.console.Console.Enum1):Void;
	/**
		Execute the current console line as a python expression
		@param interactive interactive — boolean, (optional)
	**/
	static function execute(interactive:Bool):Void;
	/**
		Append history at cursor position
		@param text Text, Text to insert at the cursor position — string, (optional, never None)
		@param current_character Cursor, The index of the cursor — int in [0, inf], (optional)
		@param remove_duplicates Remove Duplicates, Remove duplicate items in the history — boolean, (optional)
	**/
	static function history_append(text:String, current_character:Int, remove_duplicates:Bool):Void;
	/**
		Cycle through history
		@param reverse Reverse, Reverse cycle history — boolean, (optional)
	**/
	static function history_cycle(reverse:Bool):Void;
	/**
		Add 4 spaces at line beginning
	**/
	static function indent():Void;
	/**
		Insert text at cursor position
		@param text Text, Text to insert at the cursor position — string, (optional, never None)
	**/
	static function insert(text:String):Void;
	/**
		Set the current language for this console
		@param language Language — string, (optional, never None)
	**/
	static function language(language:String):Void;
	/**
		Move cursor position
		@param type Type, Where to move cursor to — enum in ['LINE_BEGIN', 'LINE_END', 'PREVIOUS_CHARACTER', 'NEXT_CHARACTER', 'PREVIOUS_WORD', 'NEXT_WORD'], (optional)
	**/
	static function move(type:bpy.ops.console.Console.Enum2):Void;
	/**
		Paste text from clipboard
	**/
	static function paste():Void;
	/**
		Append scrollback text by type
		@param text Text, Text to insert at the cursor position — string, (optional, never None)
		@param type Type, Console output type — enum in ['OUTPUT', 'INPUT', 'INFO', 'ERROR'], (optional)
	**/
	static function scrollback_append(text:String, type:bpy.ops.console.Console.Enum3):Void;
	/**
		Set the console selection
	**/
	static function select_set():Void;
	/**
		Select word at cursor position
	**/
	static function select_word():Void;
	/**
		Delete 4 spaces from line beginning
	**/
	static function unindent():Void;
}