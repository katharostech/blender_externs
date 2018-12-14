package bpy.types.userpreferencesinput;
@:enum abstract Enum1(String) from String to String {
	var WALK : String = "WALK";
	var FLY : String = "FLY";
}@:enum abstract Enum2(String) from String to String {
	var FREE : String = "FREE";
	var ORBIT : String = "ORBIT";
}@:enum abstract Enum3(String) from String to String {
	var TURNTABLE : String = "TURNTABLE";
	var TRACKBALL : String = "TRACKBALL";
}@:enum abstract Enum4(String) from String to String {
	var TURNTABLE : String = "TURNTABLE";
	var TRACKBALL : String = "TRACKBALL";
}@:enum abstract Enum5(String) from String to String {
	var VERTICAL : String = "VERTICAL";
	var HORIZONTAL : String = "HORIZONTAL";
}@:enum abstract Enum6(String) from String to String {
	var CONTINUE : String = "CONTINUE";
	var DOLLY : String = "DOLLY";
	var SCALE : String = "SCALE";
}/**
	Settings for input devices
**/
@:pythonImport("bpy.types.UserPreferencesInput") extern class UserPreferencesInput {
	/**
		The name of the active key configuration
		
		Type: string, default “”, (never None)
	**/
	var active_keyconfig : String;
	/**
		Amount of pixels you have to drag before dragging UI items happens
		
		Type: int in [3, 40], default 0
	**/
	var drag_threshold : Int;
	/**
		Invert the axis of mouse movement for zooming
		
		Type: boolean, default False
	**/
	var invert_mouse_zoom : Bool;
	/**
		Swap the Mouse Wheel zoom direction
		
		Type: boolean, default False
	**/
	var invert_zoom_wheel : Bool;
	/**
		Time/delay (in ms) for a double click
		
		Type: int in [1, 1000], default 0
	**/
	var mouse_double_click_time : Int;
	/**
		Which method to use for viewport navigation
		
		Type: enum in [‘WALK’, ‘FLY’], default ‘WALK’
	**/
	var navigation_mode : bpy.types.userpreferencesinput.UserPreferencesInput.Enum1;
	/**
		Threshold of initial movement needed from the device’s rest position
		
		Type: float in [0, 1], default 0.0
	**/
	var ndof_deadzone : Float;
	/**
		Device up/down directly controls your Z position
		
		Type: boolean, default False
	**/
	var ndof_fly_helicopter : Bool;
	/**
		Keep horizon level while flying with 3D Mouse
		
		Type: boolean, default False
	**/
	var ndof_lock_horizon : Bool;
	/**
		Overall sensitivity of the 3D Mouse for orbiting
		
		Type: float in [0.01, 40], default 0.0
	**/
	var ndof_orbit_sensitivity : Float;
	/**
		Pan using up/down on the device (otherwise forward/backward)
		
		Type: boolean, default False
	**/
	var ndof_pan_yz_swap_axis : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var ndof_panx_invert_axis : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var ndof_pany_invert_axis : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var ndof_panz_invert_axis : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var ndof_rotx_invert_axis : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var ndof_roty_invert_axis : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var ndof_rotz_invert_axis : Bool;
	/**
		Overall sensitivity of the 3D Mouse for panning
		
		Type: float in [0.01, 40], default 0.0
	**/
	var ndof_sensitivity : Float;
	/**
		Display the center and axis during rotation
		
		Type: boolean, default False
	**/
	var ndof_show_guide : Bool;
	/**
		Navigation style in the viewport
		
		Type: enum in [‘FREE’, ‘ORBIT’], default ‘FREE’
	**/
	var ndof_view_navigate_method : bpy.types.userpreferencesinput.UserPreferencesInput.Enum2;
	/**
		Rotation style in the viewport
		
		Type: enum in [‘TURNTABLE’, ‘TRACKBALL’], default ‘TRACKBALL’
	**/
	var ndof_view_rotate_method : bpy.types.userpreferencesinput.UserPreferencesInput.Enum3;
	/**
		Zoom using opposite direction
		
		Type: boolean, default False
	**/
	var ndof_zoom_invert : Bool;
	/**
		Adjusts softness of the low pressure response onset using a gamma curve
		
		Type: float in [-inf, inf], default 0.0
	**/
	var pressure_softness : Float;
	/**
		Raw input pressure value that is interpreted as 100% by Blender
		
		Type: float in [0, 1], default 1.0
	**/
	var pressure_threshold_max : Float;
	/**
		
		
		Type: boolean, default False
	**/
	var show_ui_keyconfig : Bool;
	/**
		Number of pixels you have to drag before tweak event is triggered
		
		Type: int in [3, 1024], default 0
	**/
	var tweak_threshold : Int;
	/**
		Main 1 to 0 keys act as the numpad ones (useful for laptops)
		
		Type: boolean, default False
	**/
	var use_emulate_numpad : Bool;
	/**
		Allow moving the mouse outside the view on some manipulations (transform, ui control drag)
		
		Type: boolean, default False
	**/
	var use_mouse_continuous : Bool;
	/**
		Emulate Middle Mouse with Alt+Left Mouse (doesn’t work with Left Mouse Select option)
		
		Type: boolean, default False
	**/
	var use_mouse_emulate_3_button : Bool;
	/**
		In text window, paste with middle mouse button instead of panning
		
		Type: boolean, default False
	**/
	var use_mouse_mmb_paste : Bool;
	/**
		
		
		Type: boolean, default True, (readonly)
	**/
	var use_ndof(default, never) : Bool;
	/**
		If your system uses ‘natural’ scrolling, this option keeps consistent trackpad usage throughout the UI
		
		Type: boolean, default False
	**/
	var use_trackpad_natural : Bool;
	/**
		Rotation style in the viewport
		
		Type: enum in [‘TURNTABLE’, ‘TRACKBALL’], default ‘TURNTABLE’
	**/
	var view_rotate_method : bpy.types.userpreferencesinput.UserPreferencesInput.Enum4;
	/**
		Axis of mouse movement to zoom in or out on
		
		Type: enum in [‘VERTICAL’, ‘HORIZONTAL’], default ‘VERTICAL’
	**/
	var view_zoom_axis : bpy.types.userpreferencesinput.UserPreferencesInput.Enum5;
	/**
		Which style to use for viewport scaling
		
		Type: enum in [‘CONTINUE’, ‘DOLLY’, ‘SCALE’], default ‘CONTINUE’
	**/
	var view_zoom_method : bpy.types.userpreferencesinput.UserPreferencesInput.Enum6;
	/**
		Settings for walk navigation mode
		
		Type: WalkNavigation, (readonly, never None)
	**/
	var walk_navigation(default, never) : bpy.types.walknavigation.WalkNavigation;
	/**
		Number of lines scrolled at a time with the mouse wheel
		
		Type: int in [0, 32], default 0
	**/
	var wheel_scroll_lines : Int;
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