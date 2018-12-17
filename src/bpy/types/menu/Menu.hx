package bpy.types.menu;
/**
	Editor menu containing buttons
**/
@:native("bpy.types.Menu") extern class Menu {
	/**
		
		
		Type: string, default “”
	**/
	var bl_description : String;
	/**
		If this is set, the menu gets a custom ID, otherwise it takes the name of the class used to define the menu (for example, if the class name is “OBJECT_MT_hello”, and bl_idname is not set by the script, then bl_idname = “OBJECT_MT_hello”)
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		The menu label
		
		Type: string, default “”, (never None)
	**/
	var bl_label : String;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_owner_id : String;
	/**
		
		
		Type: string, default “*”, (never None)
	**/
	var bl_translation_context : String;
	/**
		Defines the structure of the menu in the UI
		
		Type: UILayout, (readonly)
	**/
	var layout(default, never) : bpy.types.uilayout.UILayout;
	/**
		If this method returns a non-null output, then the menu can be drawn
		
		@returns boolean
	**/
	static function poll(context:Dynamic):Bool;
	/**
		Draw UI elements into the menu UI layout
	**/
	function draw(context:Dynamic):Void;
	/**
		Define these on the subclass:
		- preset_operator (string)
		- preset_subdir (string)
		
		Optionally:
		- preset_add_operator (string)
		- preset_extensions (set of strings)
		- preset_operator_defaults (dict of keyword args)
	**/
	function draw_preset(context:Dynamic):Void;
	/**
		Populate a menu from a list of paths.
		@param searchpaths Paths to scan. — sequence of strings.
		@param operator The operator id to use with each file. — string
		@param prop_filepath Optional operator filepath property (defaults to “filepath”). — string
		@param props_default Properties to assign to each operator. — dict
		@param filter_ext Optional callback that takes the file extensions.Returning false excludes the file from the list. — Callable that takes a string and returns a bool.
		@param display_name Optional callback that takes the full path, returns the name to display. — Callable that takes a string and returns a string.
	**/
	function path_menu(searchpaths:Dynamic, operator:String, prop_filepath:String, props_default:Dynamic, filter_ext:Dynamic, display_name:Dynamic):Void;
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