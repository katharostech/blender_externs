package bpy.types.spacedopesheeteditor;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var STEP : String = "STEP";
	var TIME_STEP : String = "TIME_STEP";
	var FRAME : String = "FRAME";
	var SECOND : String = "SECOND";
	var MARKER : String = "MARKER";
}@:enum abstract Enum2(String) from String to String {
	var DOPESHEET : String = "DOPESHEET";
	var TIMELINE : String = "TIMELINE";
	var ACTION : String = "ACTION";
	var SHAPEKEY : String = "SHAPEKEY";
	var GPENCIL : String = "GPENCIL";
	var MASK : String = "MASK";
	var CACHEFILE : String = "CACHEFILE";
}@:enum abstract Enum3(String) from String to String {
	var DOPESHEET : String = "DOPESHEET";
	var ACTION : String = "ACTION";
	var SHAPEKEY : String = "SHAPEKEY";
	var GPENCIL : String = "GPENCIL";
	var MASK : String = "MASK";
	var CACHEFILE : String = "CACHEFILE";
}/**
	Dope Sheet space data
**/
@:pythonImport("bpy.types.SpaceDopeSheetEditor") extern class SpaceDopeSheetEditor {
	/**
		Action displayed and edited in this space
		
		Type: Action
	**/
	var action : bpy.types.action.Action;
	/**
		Automatic time snapping settings for transformations
		
		Type: enum in [‘NONE’, ‘STEP’, ‘TIME_STEP’, ‘FRAME’, ‘SECOND’, ‘MARKER’], default ‘NONE’
	**/
	var auto_snap : bpy.types.spacedopesheeteditor.SpaceDopeSheetEditor.Enum1;
	/**
		Show the active object’s cloth point cache
		
		Type: boolean, default False
	**/
	var cache_cloth : Bool;
	/**
		Show the active object’s Dynamic Paint cache
		
		Type: boolean, default False
	**/
	var cache_dynamicpaint : Bool;
	/**
		Show the active object’s particle point cache
		
		Type: boolean, default False
	**/
	var cache_particles : Bool;
	/**
		Show the active object’s Rigid Body cache
		
		Type: boolean, default False
	**/
	var cache_rigidbody : Bool;
	/**
		Show the active object’s smoke cache
		
		Type: boolean, default False
	**/
	var cache_smoke : Bool;
	/**
		Show the active object’s softbody point cache
		
		Type: boolean, default False
	**/
	var cache_softbody : Bool;
	/**
		Settings for filtering animation data
		
		Type: DopeSheet, (readonly)
	**/
	var dopesheet(default, never) : bpy.types.dopesheet.DopeSheet;
	/**
		Editing context being displayed
		
		Type: enum in [‘DOPESHEET’, ‘TIMELINE’, ‘ACTION’, ‘SHAPEKEY’, ‘GPENCIL’, ‘MASK’, ‘CACHEFILE’], default ‘ACTION’
	**/
	var mode : bpy.types.spacedopesheeteditor.SpaceDopeSheetEditor.Enum2;
	/**
		Show the status of cached frames in the timeline
		
		Type: boolean, default False
	**/
	var show_cache : Bool;
	/**
		Mark keyframes where the key value flow changes direction, based on comparison with adjacent keys
		
		Type: boolean, default False
	**/
	var show_extremes : Bool;
	/**
		Show frame number beside the current frame indicator line
		
		Type: boolean, default False
	**/
	var show_frame_indicator : Bool;
	/**
		Display groups and channels with colors matching their corresponding groups (pose bones only currently)
		
		Type: boolean, default False
	**/
	var show_group_colors : Bool;
	/**
		Display keyframe handle types and non-bezier interpolation modes
		
		Type: boolean, default False
	**/
	var show_interpolation : Bool;
	/**
		Show markers belonging to the active action instead of Scene markers (Action and Shape Key Editors only)
		
		Type: boolean, default False
	**/
	var show_pose_markers : Bool;
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
		Editing context being displayed
		
		Type: enum in [‘DOPESHEET’, ‘ACTION’, ‘SHAPEKEY’, ‘GPENCIL’, ‘MASK’, ‘CACHEFILE’], default ‘ACTION’
	**/
	var ui_mode : bpy.types.spacedopesheeteditor.SpaceDopeSheetEditor.Enum3;
	/**
		Automatically merge nearby keyframes
		
		Type: boolean, default False
	**/
	var use_auto_merge_keyframes : Bool;
	/**
		Sync Markers with keyframe edits
		
		Type: boolean, default False
	**/
	var use_marker_sync : Bool;
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