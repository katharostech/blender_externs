package bpy.types.gizmogroup;
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
	Storage of an operator being executed, or registered after execution
**/
@:native("bpy.types.GizmoGroup") extern class GizmoGroup {
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_label : String;
	/**
		Options for this operator type
		
		Type: enum set in {‘3D’, ‘SCALE’, ‘DEPTH_3D’, ‘SELECT’, ‘PERSISTENT’, ‘SHOW_MODAL_ALL’, ‘TOOL_INIT’}, default {‘3D’}
	**/
	var bl_options : Dynamic;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_owner_id : String;
	/**
		The region where the panel is going to be used in
		
		Type: enum in [‘WINDOW’, ‘HEADER’, ‘CHANNELS’, ‘TEMPORARY’, ‘UI’, ‘TOOLS’, ‘TOOL_PROPS’, ‘PREVIEW’, ‘NAVIGATION_BAR’], default ‘WINDOW’
	**/
	var bl_region_type : bpy.types.gizmogroup.GizmoGroup.Enum1;
	/**
		The space where the panel is going to be used in
		
		Type: enum in [‘EMPTY’, ‘VIEW_3D’, ‘IMAGE_EDITOR’, ‘NODE_EDITOR’, ‘SEQUENCE_EDITOR’, ‘CLIP_EDITOR’, ‘DOPESHEET_EDITOR’, ‘GRAPH_EDITOR’, ‘NLA_EDITOR’, ‘TEXT_EDITOR’, ‘CONSOLE’, ‘INFO’, ‘TOPBAR’, ‘STATUSBAR’, ‘OUTLINER’, ‘PROPERTIES’, ‘FILE_BROWSER’, ‘USER_PREFERENCES’], default ‘EMPTY’
	**/
	var bl_space_type : bpy.types.gizmogroup.GizmoGroup.Enum2;
	/**
		List of gizmos in the Gizmo Map
		
		Type: Gizmos bpy_prop_collection of Gizmo, (readonly)
	**/
	var gizmos(default, never) : bpy.types.gizmos.Gizmos;
	/**
		GizmoGroup has a set of reports (warnings and errors) from last execution
		
		Type: boolean, default False, (readonly)
	**/
	var has_reports(default, never) : Bool;
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		Test if the gizmo group can be called or not
		
		@returns boolean
	**/
	static function poll(context:Dynamic):Bool;
	/**
		Initialize keymaps for this gizmo group, use fallback keymap when not present
		
		@returns KeyMap, (never None)
	**/
	static function setup_keymap(keyconfig:Dynamic):bpy.types.keymap.KeyMap;
	/**
		Create gizmos function for the gizmo group
	**/
	function setup(context:Dynamic):Void;
	/**
		Refresh data (called on common state changes such as selection)
	**/
	function refresh(context:Dynamic):Void;
	/**
		Run before each redraw
	**/
	function draw_prepare(context:Dynamic):Void;
	/**
		Run before invoke
	**/
	function invoke_prepare(context:Dynamic, gizmo:Dynamic):Void;
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