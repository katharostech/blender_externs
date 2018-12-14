package bpy.types.keymap;
@:enum abstract Enum1(String) from String to String {
	var WINDOW : String = "WINDOW";
	var HEADER : String = "HEADER";
	var CHANNELS : String = "CHANNELS";
	var TEMPORARY : String = "TEMPORARY";
	var UI : String = "UI";
	var TOOLS : String = "TOOLS";
	var TOOL_PROPS : String = "TOOL_PROPS";
	var PREVIEW : String = "PREVIEW";
	var NAVIGATION_BAR : String = "NAVIGATION_BAR";
}@:enum abstract Enum2(String) from String to String {
	var EMPTY : String = "EMPTY";
	var VIEW_3D : String = "VIEW_3D";
	var IMAGE_EDITOR : String = "IMAGE_EDITOR";
	var NODE_EDITOR : String = "NODE_EDITOR";
	var SEQUENCE_EDITOR : String = "SEQUENCE_EDITOR";
	var CLIP_EDITOR : String = "CLIP_EDITOR";
	var DOPESHEET_EDITOR : String = "DOPESHEET_EDITOR";
	var GRAPH_EDITOR : String = "GRAPH_EDITOR";
	var NLA_EDITOR : String = "NLA_EDITOR";
	var TEXT_EDITOR : String = "TEXT_EDITOR";
	var CONSOLE : String = "CONSOLE";
	var INFO : String = "INFO";
	var TOPBAR : String = "TOPBAR";
	var STATUSBAR : String = "STATUSBAR";
	var OUTLINER : String = "OUTLINER";
	var PROPERTIES : String = "PROPERTIES";
	var FILE_BROWSER : String = "FILE_BROWSER";
	var USER_PREFERENCES : String = "USER_PREFERENCES";
}/**
	Input configuration, including keymaps
**/
@:pythonImport("bpy.types.KeyMap") extern class KeyMap {
	/**
		Internal owner
		
		Type: string, default “”, (never None)
	**/
	var bl_owner_id : String;
	/**
		Indicates that a keymap is used for translate modal events for an operator
		
		Type: boolean, default False, (readonly)
	**/
	var is_modal(default, never) : Bool;
	/**
		Keymap is defined by the user
		
		Type: boolean, default False
	**/
	var is_user_modified : Bool;
	/**
		Items in the keymap, linking an operator to an input event
		
		Type: KeyMapItems bpy_prop_collection of KeyMapItem, (readonly)
	**/
	var keymap_items(default, never) : bpy.types.keymapitems.KeyMapItems;
	/**
		Name of the key map
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		Optional region type keymap is associated with
		
		Type: enum in [‘WINDOW’, ‘HEADER’, ‘CHANNELS’, ‘TEMPORARY’, ‘UI’, ‘TOOLS’, ‘TOOL_PROPS’, ‘PREVIEW’, ‘NAVIGATION_BAR’], default ‘WINDOW’, (readonly)
	**/
	var region_type(default, never) : bpy.types.keymap.KeyMap.Enum1;
	/**
		Children expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded_children : Bool;
	/**
		Expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded_items : Bool;
	/**
		Optional space type keymap is associated with
		
		Type: enum in [‘EMPTY’, ‘VIEW_3D’, ‘IMAGE_EDITOR’, ‘NODE_EDITOR’, ‘SEQUENCE_EDITOR’, ‘CLIP_EDITOR’, ‘DOPESHEET_EDITOR’, ‘GRAPH_EDITOR’, ‘NLA_EDITOR’, ‘TEXT_EDITOR’, ‘CONSOLE’, ‘INFO’, ‘TOPBAR’, ‘STATUSBAR’, ‘OUTLINER’, ‘PROPERTIES’, ‘FILE_BROWSER’, ‘USER_PREFERENCES’], default ‘EMPTY’, (readonly)
	**/
	var space_type(default, never) : bpy.types.keymap.KeyMap.Enum2;
	/**
		active
		
		@returns KeyMap
	**/
	function active():bpy.types.keymap.KeyMap;
	/**
		restore_to_default
	**/
	function restore_to_default():Void;
	/**
		restore_item_to_default
		@param item Item — KeyMapItem, (never None)
	**/
	function restore_item_to_default(item:bpy.types.keymapitem.KeyMapItem):Void;
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
}