package bpy.types.panel;
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
	var pyVIEW_3D : String = "VIEW_3D";
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
	Panel containing UI elements
**/
@:native("bpy.types.Panel") extern class Panel {
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_category : String;
	/**
		The context in which the panel belongs to. (TODO: explain the possible combinations bl_context/bl_region_type/bl_space_type)
		
		Type: string, default “”, (never None)
	**/
	var bl_context : String;
	/**
		If this is set, the panel gets a custom ID, otherwise it takes the name of the class used to define the panel. For example, if the class name is “OBJECT_PT_hello”, and bl_idname is not set by the script, then bl_idname = “OBJECT_PT_hello”
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		The panel label, shows up in the panel header at the right of the triangle used to collapse the panel
		
		Type: string, default “”, (never None)
	**/
	var bl_label : String;
	/**
		Options for this panel type
		
		Type: enum set in {‘DEFAULT_CLOSED’, ‘HIDE_HEADER’}, default {‘DEFAULT_CLOSED’}
	**/
	var bl_options : Dynamic;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_owner_id : String;
	/**
		If this is set, the panel becomes a subpanel
		
		Type: string, default “”, (never None)
	**/
	var bl_parent_id : String;
	/**
		The region where the panel is going to be used in
		
		Type: enum in [‘WINDOW’, ‘HEADER’, ‘CHANNELS’, ‘TEMPORARY’, ‘UI’, ‘TOOLS’, ‘TOOL_PROPS’, ‘PREVIEW’, ‘NAVIGATION_BAR’], default ‘WINDOW’
	**/
	var bl_region_type : bpy.types.panel.Panel.Enum1;
	/**
		The space where the panel is going to be used in
		
		Type: enum in [‘EMPTY’, ‘VIEW_3D’, ‘IMAGE_EDITOR’, ‘NODE_EDITOR’, ‘SEQUENCE_EDITOR’, ‘CLIP_EDITOR’, ‘DOPESHEET_EDITOR’, ‘GRAPH_EDITOR’, ‘NLA_EDITOR’, ‘TEXT_EDITOR’, ‘CONSOLE’, ‘INFO’, ‘TOPBAR’, ‘STATUSBAR’, ‘OUTLINER’, ‘PROPERTIES’, ‘FILE_BROWSER’, ‘USER_PREFERENCES’], default ‘EMPTY’
	**/
	var bl_space_type : bpy.types.panel.Panel.Enum2;
	/**
		
		
		Type: string, default “*”, (never None)
	**/
	var bl_translation_context : String;
	/**
		When set, defines popup panel width
		
		Type: int in [0, inf], default 0
	**/
	var bl_ui_units_x : Int;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_popover(default, never) : Bool;
	/**
		Defines the structure of the panel in the UI
		
		Type: UILayout, (readonly)
	**/
	var layout(default, never) : bpy.types.uilayout.UILayout;
	/**
		XXX todo
		
		Type: string, default “”, (never None)
	**/
	var text : String;
	/**
		
		
		Type: boolean, default False
	**/
	var use_pin : Bool;
	/**
		If this method returns a non-null output, then the panel can be drawn
		
		@returns boolean
	**/
	static function poll(context:Dynamic):Bool;
	/**
		Draw UI elements into the panel UI layout
	**/
	function draw(context:Dynamic):Void;
	/**
		Draw UI elements into the panel’s header UI layout
	**/
	function draw_header(context:Dynamic):Void;
	/**
		Draw UI elements for presets in the panel’s header
	**/
	function draw_header_preset(context:Dynamic):Void;
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