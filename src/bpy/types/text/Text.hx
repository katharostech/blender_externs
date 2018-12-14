package bpy.types.text;
/**
	Text data-block referencing an external or packed text file
**/
@:pythonImport("bpy.types.Text") extern class Text {
	/**
		Index of current character in current line, and also start index of character in selection if one exists
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var current_character(default, never) : Int;
	/**
		Current line, and start line of selection if one exists
		
		Type: TextLine, (readonly, never None)
	**/
	var current_line(default, never) : bpy.types.textline.TextLine;
	/**
		Index of current TextLine in TextLine collection
		
		Type: int in [-inf, inf], default 0
	**/
	var current_line_index : Int;
	/**
		Filename of the text file
		
		Type: string, default “”, (never None)
	**/
	var filepath : String;
	/**
		Text file has been edited since last save
		
		Type: boolean, default False, (readonly)
	**/
	var is_dirty(default, never) : Bool;
	/**
		Text file is in memory, without a corresponding file on disk
		
		Type: boolean, default False, (readonly)
	**/
	var is_in_memory(default, never) : Bool;
	/**
		Text file on disk is different than the one in memory
		
		Type: boolean, default False, (readonly)
	**/
	var is_modified(default, never) : Bool;
	/**
		Lines of text
		
		Type: bpy_prop_collection of TextLine, (readonly)
	**/
	var lines(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Index of character after end of selection in the selection end line
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var select_end_character(default, never) : Int;
	/**
		End line of selection
		
		Type: TextLine, (readonly, never None)
	**/
	var select_end_line(default, never) : bpy.types.textline.TextLine;
	/**
		Register this text as a module on loading, Text name must end with “.py”
		
		Type: boolean, default False
	**/
	var use_module : Bool;
	/**
		Automatically converts all new tabs into spaces
		
		Type: boolean, default False
	**/
	var use_tabs_as_spaces : Bool;
	/**
		clear the text block
	**/
	function clear():Void;
	/**
		write text at the cursor location and advance to the end of the text block
		@param text New text for this data-block — string, (never None)
	**/
	function write(text:String):Void;
	/**
		Return the text as a string.
	**/
	function as_string():Void;
	/**
		Replace text with this string.
	**/
	function from_string():Void;
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
		Unique data-block ID name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Unique data-block ID name, including library one is any
		
		Type: string, default “”, (readonly, never None)
	**/
	var name_full(default, never) : String;
	/**
		Whether this ID is runtime-only, evaluated data-block, or actual data from .blend file
		
		Type: boolean, default False, (readonly)
	**/
	var is_evaluated(default, never) : Bool;
	/**
		Actual data-block from .blend file (Main database) that generated that evaluated one
		
		Type: ID, (readonly)
	**/
	var original(default, never) : bpy.types.id.ID;
	/**
		Number of times this data-block is referenced
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var users(default, never) : Int;
	/**
		Save this data-block even if it has no users
		
		Type: boolean, default False
	**/
	var use_fake_user : Bool;
	/**
		Tools can use this to tag data for their own purposes (initial state is undefined)
		
		Type: boolean, default False
	**/
	var tag : Bool;
	/**
		Is this ID block linked indirectly
		
		Type: boolean, default False, (readonly)
	**/
	var is_library_indirect(default, never) : Bool;
	/**
		Library file the data-block is linked from
		
		Type: Library, (readonly)
	**/
	var library(default, never) : bpy.types.library.Library;
	/**
		Static override data
		
		Type: IDOverrideStatic, (readonly)
	**/
	var override_static(default, never) : bpy.types.idoverridestatic.IDOverrideStatic;
	/**
		Preview image and icon of this data-block (None if not supported for this type of data)
		
		Type: ImagePreview, (readonly)
	**/
	var preview(default, never) : bpy.types.imagepreview.ImagePreview;
	/**
		Create a copy of this data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function copy():bpy.types.id.ID;
	/**
		Create an overridden local copy of this linked data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function override_create():bpy.types.id.ID;
	/**
		Clear the user count of a data-block so its not saved, on reload the data will be removed
		
		This function is for advanced use only, misuse can crash blender since the user
		count is used to prevent data being removed when it is used.
	**/
	function user_clear():Void;
	/**
		Replace all usage in the .blend file of this ID by new given one
		@param new_id New ID to use — ID, (never None)
	**/
	function user_remap(new_id:bpy.types.id.ID):Void;
	/**
		Make this datablock local, return local one (may be a copy of the original, in case it is also indirectly used)
		@param clear_proxy Whether to clear proxies (the default behavior, note that if object has to be duplicated to be made local, proxies are always cleared) — boolean, (optional)
		
		@returns ID
	**/
	function make_local(clear_proxy:Bool):bpy.types.id.ID;
	/**
		Count the number of times that ID uses/references given one
		@param id ID to count usages — ID, (never None)
		
		@returns int in [0, inf]
	**/
	function user_of_id(id:bpy.types.id.ID):Int;
	/**
		Create animation data to this ID, note that not all ID types support this
		
		@returns AnimData
	**/
	function animation_data_create():bpy.types.animdata.AnimData;
	/**
		Clear animation on this this ID
	**/
	function animation_data_clear():Void;
	/**
		Tag the ID to update its display data, e.g. when calling bpy.types.Scene.update
		@param refresh Type of updates to perform — enum set in {'OBJECT', 'DATA', 'TIME'}, (optional)
	**/
	function update_tag(refresh:Dynamic):Void;
}