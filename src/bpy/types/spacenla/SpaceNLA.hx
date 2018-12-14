package bpy.types.spacenla;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var STEP : String = "STEP";
	var TIME_STEP : String = "TIME_STEP";
	var FRAME : String = "FRAME";
	var SECOND : String = "SECOND";
	var MARKER : String = "MARKER";
}/**
	NLA editor space data
**/
@:pythonImport("bpy.types.SpaceNLA") extern class SpaceNLA {
	/**
		Automatic time snapping settings for transformations
		
		Type: enum in [‘NONE’, ‘STEP’, ‘TIME_STEP’, ‘FRAME’, ‘SECOND’, ‘MARKER’], default ‘NONE’
	**/
	var auto_snap : bpy.types.spacenla.SpaceNLA.Enum1;
	/**
		Settings for filtering animation data
		
		Type: DopeSheet, (readonly)
	**/
	var dopesheet(default, never) : bpy.types.dopesheet.DopeSheet;
	/**
		Show frame number beside the current frame indicator line
		
		Type: boolean, default False
	**/
	var show_frame_indicator : Bool;
	/**
		Show action-local markers on the strips, useful when synchronizing timing across strips
		
		Type: boolean, default False
	**/
	var show_local_markers : Bool;
	/**
		Show timing in seconds not frames
		
		Type: boolean, default False
	**/
	var show_seconds : Bool;
	/**
		Show influence F-Curves on strips
		
		Type: boolean, default False
	**/
	var show_strip_curves : Bool;
	/**
		When transforming strips, changes to the animation data are flushed to other views
		
		Type: boolean, default False
	**/
	var use_realtime_update : Bool;
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