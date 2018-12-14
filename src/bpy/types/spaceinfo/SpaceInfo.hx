package bpy.types.spaceinfo;
/**
	Info space data
**/
@:pythonImport("bpy.types.SpaceInfo") extern class SpaceInfo {
	/**
		Display debug reporting info
		
		Type: boolean, default False
	**/
	var show_report_debug : Bool;
	/**
		Display error text
		
		Type: boolean, default False
	**/
	var show_report_error : Bool;
	/**
		Display general information
		
		Type: boolean, default False
	**/
	var show_report_info : Bool;
	/**
		Display the operator log
		
		Type: boolean, default False
	**/
	var show_report_operator : Bool;
	/**
		Display warnings
		
		Type: boolean, default False
	**/
	var show_report_warning : Bool;
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