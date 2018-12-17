package bpy.types.header;
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
	Editor header containing UI elements
**/
@:native("bpy.types.Header") extern class Header {
	/**
		If this is set, the header gets a custom ID, otherwise it takes the name of the class used to define the panel; for example, if the class name is “OBJECT_HT_hello”, and bl_idname is not set by the script, then bl_idname = “OBJECT_HT_hello”
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		The region where the header is going to be used in (defaults to header region)
		
		Type: enum in [‘WINDOW’, ‘HEADER’, ‘CHANNELS’, ‘TEMPORARY’, ‘UI’, ‘TOOLS’, ‘TOOL_PROPS’, ‘PREVIEW’, ‘NAVIGATION_BAR’], default ‘HEADER’
	**/
	var bl_region_type : bpy.types.header.Header.Enum1;
	/**
		The space where the header is going to be used in
		
		Type: enum in [‘EMPTY’, ‘VIEW_3D’, ‘IMAGE_EDITOR’, ‘NODE_EDITOR’, ‘SEQUENCE_EDITOR’, ‘CLIP_EDITOR’, ‘DOPESHEET_EDITOR’, ‘GRAPH_EDITOR’, ‘NLA_EDITOR’, ‘TEXT_EDITOR’, ‘CONSOLE’, ‘INFO’, ‘TOPBAR’, ‘STATUSBAR’, ‘OUTLINER’, ‘PROPERTIES’, ‘FILE_BROWSER’, ‘USER_PREFERENCES’], default ‘EMPTY’
	**/
	var bl_space_type : bpy.types.header.Header.Enum2;
	/**
		Structure of the header in the UI
		
		Type: UILayout, (readonly)
	**/
	var layout(default, never) : bpy.types.uilayout.UILayout;
	/**
		Draw UI elements into the header UI layout
	**/
	function draw(context:Dynamic):Void;
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