package bpy.types.workspacetool;
@:enum abstract Enum1(String) from String to String {
	var DEFAULT : String = "DEFAULT";
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
}@:enum abstract Enum3(String) from String to String {
	var DEFAULT : String = "DEFAULT";
	var NONE : String = "NONE";
	var WAIT : String = "WAIT";
	var CROSSHAIR : String = "CROSSHAIR";
	var MOVE_X : String = "MOVE_X";
	var MOVE_Y : String = "MOVE_Y";
	var KNIFE : String = "KNIFE";
	var TEXT : String = "TEXT";
	var PAINT_BRUSH : String = "PAINT_BRUSH";
	var HAND : String = "HAND";
	var SCROLL_X : String = "SCROLL_X";
	var SCROLL_Y : String = "SCROLL_Y";
	var SCROLL_XY : String = "SCROLL_XY";
	var EYEDROPPER : String = "EYEDROPPER";
}@:native("bpy.types.WorkspaceTool") extern class WorkspaceTool {
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_datablock(default, never) : Bool;
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var index(default, never) : Int;
	/**
		
		
		Type: enum in [‘DEFAULT’], default ‘DEFAULT’, (readonly)
	**/
	var mode(default, never) : bpy.types.workspacetool.WorkspaceTool.Enum1;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘EMPTY’, ‘VIEW_3D’, ‘IMAGE_EDITOR’, ‘NODE_EDITOR’, ‘SEQUENCE_EDITOR’, ‘CLIP_EDITOR’, ‘DOPESHEET_EDITOR’, ‘GRAPH_EDITOR’, ‘NLA_EDITOR’, ‘TEXT_EDITOR’, ‘CONSOLE’, ‘INFO’, ‘TOPBAR’, ‘STATUSBAR’, ‘OUTLINER’, ‘PROPERTIES’, ‘FILE_BROWSER’, ‘USER_PREFERENCES’], default ‘EMPTY’, (readonly)
	**/
	var space_type(default, never) : bpy.types.workspacetool.WorkspaceTool.Enum2;
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var widget(default, never) : String;
	/**
		Set the tool settings
		@param name Name — string, (never None)
		@param cursor cursor — enum in ['DEFAULT', 'NONE', 'WAIT', 'CROSSHAIR', 'MOVE_X', 'MOVE_Y', 'KNIFE', 'TEXT', 'PAINT_BRUSH', 'HAND', 'SCROLL_X', 'SCROLL_Y', 'SCROLL_XY', 'EYEDROPPER'], (optional)
		@param keymap Key Map — string, (optional, never None)
		@param gizmo_group Gizmo Group — string, (optional, never None)
		@param data_block Data Block — string, (optional, never None)
		@param operator Operator — string, (optional, never None)
		@param index Index — int in [-inf, inf], (optional)
	**/
	function setup(name:String, cursor:bpy.types.workspacetool.WorkspaceTool.Enum3, keymap:String, gizmo_group:String, data_block:String, operator:String, index:Int):Void;
	/**
		operator_properties
		
		@returns OperatorProperties, (never None)
	**/
	function operator_properties(operator:Dynamic):bpy.types.operatorproperties.OperatorProperties;
	/**
		gizmo_group_properties
		
		@returns GizmoGroupProperties, (never None)
	**/
	function gizmo_group_properties(group:Dynamic):bpy.types.gizmogroupproperties.GizmoGroupProperties;
	/**
		refresh_from_context
	**/
	function refresh_from_context():Void;
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