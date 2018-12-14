package bpy.types.spacegrapheditor;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var STEP : String = "STEP";
	var TIME_STEP : String = "TIME_STEP";
	var FRAME : String = "FRAME";
	var SECOND : String = "SECOND";
	var MARKER : String = "MARKER";
}@:enum abstract Enum2(String) from String to String {
	var FCURVES : String = "FCURVES";
	var DRIVERS : String = "DRIVERS";
}@:enum abstract Enum3(String) from String to String {
	var BOUNDING_BOX_CENTER : String = "BOUNDING_BOX_CENTER";
	var CURSOR : String = "CURSOR";
	var INDIVIDUAL_ORIGINS : String = "INDIVIDUAL_ORIGINS";
}/**
	Graph Editor space data
**/
@:pythonImport("bpy.types.SpaceGraphEditor") extern class SpaceGraphEditor {
	/**
		Automatic time snapping settings for transformations
		
		Type: enum in [‘NONE’, ‘STEP’, ‘TIME_STEP’, ‘FRAME’, ‘SECOND’, ‘MARKER’], default ‘NONE’
	**/
	var auto_snap : bpy.types.spacegrapheditor.SpaceGraphEditor.Enum1;
	/**
		Graph Editor 2D-Value cursor - X-Value component
		
		Type: float in [-inf, inf], default 0.0
	**/
	var cursor_position_x : Float;
	/**
		Graph Editor 2D-Value cursor - Y-Value component
		
		Type: float in [-inf, inf], default 0.0
	**/
	var cursor_position_y : Float;
	/**
		Settings for filtering animation data
		
		Type: DopeSheet, (readonly)
	**/
	var dopesheet(default, never) : bpy.types.dopesheet.DopeSheet;
	/**
		Graph Editor instance has some ghost curves stored
		
		Type: boolean, default False, (readonly)
	**/
	var has_ghost_curves(default, never) : Bool;
	/**
		Editing context being displayed
		
		Type: enum in [‘FCURVES’, ‘DRIVERS’], default ‘FCURVES’
	**/
	var mode : bpy.types.spacegrapheditor.SpaceGraphEditor.Enum2;
	/**
		Pivot center for rotation/scaling
		
		Type: enum in [‘BOUNDING_BOX_CENTER’, ‘CURSOR’, ‘INDIVIDUAL_ORIGINS’], default ‘BOUNDING_BOX_CENTER’
	**/
	var pivot_point : bpy.types.spacegrapheditor.SpaceGraphEditor.Enum3;
	/**
		Show 2D cursor
		
		Type: boolean, default False
	**/
	var show_cursor : Bool;
	/**
		Show frame number beside the current frame indicator line
		
		Type: boolean, default False
	**/
	var show_frame_indicator : Bool;
	/**
		Display groups and channels with colors matching their corresponding groups
		
		Type: boolean, default False
	**/
	var show_group_colors : Bool;
	/**
		Show handles of Bezier control points
		
		Type: boolean, default False
	**/
	var show_handles : Bool;
	/**
		Show timing in seconds not frames
		
		Type: boolean, default False
	**/
	var show_seconds : Bool;
	/**
		Show sliders beside F-Curve channels
		
		Type: boolean, default False
	**/
	var show_sliders : Bool;
	/**
		Automatically merge nearby keyframes
		
		Type: boolean, default False
	**/
	var use_auto_merge_keyframes : Bool;
	/**
		Automatically recalculate curve normalization on every curve edit
		
		Type: boolean, default False
	**/
	var use_auto_normalization : Bool;
	/**
		Display F-Curves using Anti-Aliasing and other fancy effects (disable for better performance)
		
		Type: boolean, default False
	**/
	var use_beauty_drawing : Bool;
	/**
		Display curves in normalized to -1..1 range, for easier editing of multiple curves with different ranges
		
		Type: boolean, default False
	**/
	var use_normalization : Bool;
	/**
		Only keyframes of selected F-Curves are visible and editable
		
		Type: boolean, default False
	**/
	var use_only_selected_curves_handles : Bool;
	/**
		Only show and edit handles of selected keyframes
		
		Type: boolean, default False
	**/
	var use_only_selected_keyframe_handles : Bool;
	/**
		When transforming keyframes, changes to the animation data are flushed to other views
		
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