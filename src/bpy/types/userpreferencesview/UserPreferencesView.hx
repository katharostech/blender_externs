package bpy.types.userpreferencesview;
@:enum abstract Enum1(String) from String to String {
	var MINIMAL : String = "MINIMAL";
	var GIZMO : String = "GIZMO";
}@:enum abstract Enum2(String) from String to String {
	var MINIMAL : String = "MINIMAL";
	var SMPTE : String = "SMPTE";
	var SMPTE_COMPACT : String = "SMPTE_COMPACT";
	var MILLISECONDS : String = "MILLISECONDS";
	var SECONDS_ONLY : String = "SECONDS_ONLY";
}@:enum abstract Enum3(String) from String to String {
	var THIN : String = "THIN";
	var AUTO : String = "AUTO";
	var THICK : String = "THICK";
}@:enum abstract Enum4(String) from String to String {
	var KEEP_RANGE : String = "KEEP_RANGE";
	var SECONDS : String = "SECONDS";
	var KEYFRAMES : String = "KEYFRAMES";
}/**
	Preferences related to viewing data
**/
@:pythonImport("bpy.types.UserPreferencesView") extern class UserPreferencesView {
	/**
		Diameter of the gizmo
		
		Type: int in [10, 200], default 75
	**/
	var gizmo_size : Int;
	/**
		Brightness of the icon
		
		Type: int in [0, 10], default 0
	**/
	var mini_axis_brightness : Int;
	/**
		The axes icon’s size
		
		Type: int in [10, 64], default 0
	**/
	var mini_axis_size : Int;
	/**
		Show a small rotating 3D axes in the top right corner of the 3D View
		
		Type: enum in [‘MINIMAL’, ‘GIZMO’], default ‘MINIMAL’
	**/
	var mini_axis_type : bpy.types.userpreferencesview.UserPreferencesView.Enum1;
	/**
		Diameter in Pixels for Object/Light origin display
		
		Type: int in [4, 10], default 0
	**/
	var object_origin_size : Int;
	/**
		Time in 1/10 seconds to hold the Left Mouse Button before opening the toolbox
		
		Type: int in [1, 40], default 0
	**/
	var open_left_mouse_delay : Int;
	/**
		Time in 1/10 seconds to hold the Right Mouse Button before opening the toolbox
		
		Type: int in [1, 40], default 0
	**/
	var open_right_mouse_delay : Int;
	/**
		Time delay in 1/10 seconds before automatically opening sub level menus
		
		Type: int in [1, 40], default 0
	**/
	var open_sublevel_delay : Int;
	/**
		Time delay in 1/10 seconds before automatically opening top level menus
		
		Type: int in [1, 40], default 0
	**/
	var open_toplevel_delay : Int;
	/**
		Time needed to fully animate the pie to unfolded state (in 1/100ths of sec)
		
		Type: int in [0, 1000], default 0
	**/
	var pie_animation_timeout : Int;
	/**
		Pie menus will use the initial mouse position as center for this amount of time (in 1/100ths of sec)
		
		Type: int in [0, 1000], default 0
	**/
	var pie_initial_timeout : Int;
	/**
		Distance threshold after which selection is made (zero to disable)
		
		Type: int in [0, 1000], default 0
	**/
	var pie_menu_confirm : Int;
	/**
		Pie menu size in pixels
		
		Type: int in [0, 1000], default 0
	**/
	var pie_menu_radius : Int;
	/**
		Distance from center needed before a selection can be made
		
		Type: int in [0, 1000], default 0
	**/
	var pie_menu_threshold : Int;
	/**
		Rotation step for numerical pad keys (2 4 6 8)
		
		Type: float in [0, 90], default 0.0
	**/
	var rotation_angle : Float;
	/**
		Use a column layout for toolbox
		
		Type: boolean, default False
	**/
	var show_column_layout : Bool;
	/**
		Show options for developers (edit source in context menu, geometry indices)
		
		Type: boolean, default False
	**/
	var show_developer_ui : Bool;
	/**
		Use transform gizmos by default
		
		Type: boolean, default False
	**/
	var show_gizmo : Bool;
	/**
		Use large mouse cursors when available
		
		Type: boolean, default False
	**/
	var show_large_cursors : Bool;
	/**
		Show screen layout editing UI
		
		Type: boolean, default False
	**/
	var show_layout_ui : Bool;
	/**
		Display objects name and frame number in 3D view
		
		Type: boolean, default False
	**/
	var show_object_info : Bool;
	/**
		Show the frames per second screen refresh rate, while animation is played back
		
		Type: boolean, default False
	**/
	var show_playback_fps : Bool;
	/**
		Display splash screen on startup
		
		Type: boolean, default False
	**/
	var show_splash : Bool;
	/**
		Display tooltips (when off hold Alt to force display)
		
		Type: boolean, default False
	**/
	var show_tooltips : Bool;
	/**
		Show Python references in tooltips
		
		Type: boolean, default False
	**/
	var show_tooltips_python : Bool;
	/**
		Show the name of the view’s direction in each 3D View
		
		Type: boolean, default False
	**/
	var show_view_name : Bool;
	/**
		Time to animate the view in milliseconds, zero to disable
		
		Type: int in [0, 1000], default 0
	**/
	var smooth_view : Int;
	/**
		Format of Time Codes displayed when not displaying timing in terms of frames
		
		Type: enum in [‘MINIMAL’, ‘SMPTE’, ‘SMPTE_COMPACT’, ‘MILLISECONDS’, ‘SECONDS_ONLY’], default ‘MINIMAL’
	**/
	var timecode_style : bpy.types.userpreferencesview.UserPreferencesView.Enum2;
	/**
		Changes the thickness of lines and points in the interface
		
		Type: enum in [‘THIN’, ‘AUTO’, ‘THICK’], default ‘AUTO’
	**/
	var ui_line_width : bpy.types.userpreferencesview.UserPreferencesView.Enum3;
	/**
		Changes the size of the fonts and buttons in the interface
		
		Type: float in [0.25, 4], default 1.0
	**/
	var ui_scale : Float;
	/**
		Automatically switch between orthographic and perspective when changing from top/front/side views
		
		Type: boolean, default False
	**/
	var use_auto_perspective : Bool;
	/**
		When the camera is locked to the view and in fly mode, transform the parent rather than the camera
		
		Type: boolean, default False
	**/
	var use_camera_lock_parent : Bool;
	/**
		Place the cursor without ‘jumping’ to the new location (when lock-to-cursor is used)
		
		Type: boolean, default False
	**/
	var use_cursor_lock_adjust : Bool;
	/**
		Otherwise menus, etc will always be top to bottom, left to right, no matter opening direction
		
		Type: boolean, default False
	**/
	var use_directional_menus : Bool;
	/**
		Use the surface depth for cursor placement
		
		Type: boolean, default False
	**/
	var use_mouse_depth_cursor : Bool;
	/**
		Use the depth under the mouse to improve view pan/rotate/zoom functionality
		
		Type: boolean, default False
	**/
	var use_mouse_depth_navigate : Bool;
	/**
		Open menu buttons and pulldowns automatically when the mouse is hovering
		
		Type: boolean, default False
	**/
	var use_mouse_over_open : Bool;
	/**
		Ask for confirmation when quitting through the window close button
		
		Type: boolean, default False
	**/
	var use_quit_dialog : Bool;
	/**
		Use selection as the pivot point
		
		Type: boolean, default False
	**/
	var use_rotate_around_active : Bool;
	/**
		Zoom in towards the mouse pointer’s position in the 3D view, rather than the 2D window center
		
		Type: boolean, default False
	**/
	var use_zoom_to_mouse : Bool;
	/**
		Minimum number of pixels between each gridline in 2D Viewports
		
		Type: int in [1, 500], default 0
	**/
	var view2d_grid_spacing_min : Int;
	/**
		Keyframes around cursor that we zoom around
		
		Type: int in [1, 500], default 0
	**/
	var view_frame_keyframes : Int;
	/**
		Seconds around cursor that we zoom around
		
		Type: float in [0, 10000], default 0.0
	**/
	var view_frame_seconds : Float;
	/**
		How zooming to frame focuses around current frame
		
		Type: enum in [‘KEEP_RANGE’, ‘SECONDS’, ‘KEYFRAMES’], default ‘KEEP_RANGE’
	**/
	var view_frame_type : bpy.types.userpreferencesview.UserPreferencesView.Enum4;
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