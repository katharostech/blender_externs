package bpy.ops.screen;
/**
	Screen Operators
**/
@:pythonImport("bpy.ops.screen") extern class Module {
	/**
		Handle area action zones for mouse actions/gestures
		@param modifier Modifier, Modifier state — int in [0, 2], (optional)
	**/
	static function actionzone(modifier:Int):Void;
	/**
		Cancel animation, returning to the original frame
		@param restore_frame Restore Frame, Restore the frame when animation was initialized — boolean, (optional)
	**/
	static function animation_cancel(restore_frame:Bool):Void;
	/**
		Play animation
		@param reverse Play in Reverse, Animation is played backwards — boolean, (optional)
		@param sync Sync, Drop frames to maintain framerate — boolean, (optional)
	**/
	static function animation_play(reverse:Bool, sync:Bool):Void;
	/**
		Step through animation by position
	**/
	static function animation_step():Void;
	/**
		Duplicate selected area into new window
	**/
	static function area_dupli():Void;
	/**
		Join selected areas into new window
		@param min_x X 1 — int in [-inf, inf], (optional)
		@param min_y Y 1 — int in [-inf, inf], (optional)
		@param max_x X 2 — int in [-inf, inf], (optional)
		@param max_y Y 2 — int in [-inf, inf], (optional)
	**/
	static function area_join(min_x:Int, min_y:Int, max_x:Int, max_y:Int):Void;
	/**
		Move selected area edges
		@param x X — int in [-inf, inf], (optional)
		@param y Y — int in [-inf, inf], (optional)
		@param delta Delta — int in [-inf, inf], (optional)
	**/
	static function area_move(x:Int, y:Int, delta:Int):Void;
	/**
		Operations for splitting and merging
	**/
	static function area_options():Void;
	/**
		Split selected area into new windows
		@param direction Direction — enum in ['HORIZONTAL', 'VERTICAL'], (optional)
		@param factor Factor — float in [0, 1], (optional)
		@param cursor Cursor — int array of 2 items in [-inf, inf], (optional)
	**/
	static function area_split(direction:bpy.ops.screen.Screen.Enum1, factor:Float, cursor:Array<Int>):Void;
	/**
		Swap selected areas screen positions
	**/
	static function area_swap():Void;
	/**
		Revert back to the original screen layout, before fullscreen area overlay
	**/
	static function back_to_previous():Void;
	/**
		Delete active screen
	**/
	static function delete():Void;
	/**
		Show drivers editor in a separate window
	**/
	static function drivers_editor_show():Void;
	/**
		Jump to first/last frame in frame range
		@param end Last Frame, Jump to the last frame of the frame range — boolean, (optional)
	**/
	static function frame_jump(end:Bool):Void;
	/**
		Move current frame forward/backward by a given number
		@param delta Delta — int in [-inf, inf], (optional)
	**/
	static function frame_offset(delta:Int):Void;
	/**
		Toggle header display
	**/
	static function header():Void;
	/**
		Display header region context menu
	**/
	static function header_context_menu():Void;
	/**
		Expand or collapse the header pulldown menus
	**/
	static function header_toggle_menus():Void;
	/**
		Jump to previous/next keyframe
		@param next Next Keyframe — boolean, (optional)
	**/
	static function keyframe_jump(next:Bool):Void;
	/**
		Jump to previous/next marker
		@param next Next Marker — boolean, (optional)
	**/
	static function marker_jump(next:Bool):Void;
	/**
		Add a new screen
	**/
	static function new():Void;
	/**
		Display menu for last action performed
	**/
	static function redo_last():Void;
	/**
		Blend in and out overlapping region
	**/
	static function region_blend():Void;
	/**
		Toggle the region’s alignment (left/right or top/bottom)
	**/
	static function region_flip():Void;
	/**
		Split selected area into camera, front, right &amp; top views
	**/
	static function region_quadview():Void;
	/**
		Scale selected area
	**/
	static function region_scale():Void;
	/**
		Display menu for previous actions performed
		@param index Index — int in [0, inf], (optional)
	**/
	static function repeat_history(index:Int):Void;
	/**
		Repeat last action
	**/
	static function repeat_last():Void;
	/**
		Toggle display selected area as fullscreen/maximized
		@param use_hide_panels Hide Panels, Hide all the panels — boolean, (optional)
	**/
	static function screen_full_area(use_hide_panels:Bool):Void;
	/**
		Cycle through available screens
		@param delta Delta — int in [-inf, inf], (optional)
	**/
	static function screen_set(delta:Int):Void;
	/**
		Capture a picture of the active area or whole Blender window
		@param filepath File Path, Path to file — string, (optional, never None)
		@param check_existing Check Existing, Check and warn on overwriting existing files — boolean, (optional)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param show_multiview Enable Multi-View — boolean, (optional)
		@param use_multiview Use Multi-View — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param full Full Screen, Capture the whole window (otherwise only capture the active area) — boolean, (optional)
	**/
	static function screenshot(filepath:String, check_existing:Bool, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.screen.Screen.Enum2, sort_method:bpy.ops.screen.Screen.Enum3, full:Bool):Void;
	/**
		Cycle through the editor context by activating the next/previous one
		@param direction Direction, Direction to cycle through — enum in ['PREV', 'NEXT'], (optional)
	**/
	static function space_context_cycle(direction:bpy.ops.screen.Screen.Enum4):Void;
	/**
		Set the space type or cycle subtype
		@param space_type TypeEMPTY Empty.VIEW_3D 3D Viewport, Manipulate objects in a 3D environment.IMAGE_EDITOR UV/Image Editor, View and edit images and UV Maps.NODE_EDITOR Node Editor, Editor for node-based shading and compositing tools.SEQUENCE_EDITOR Video Sequencer, Video editing tools.CLIP_EDITOR Movie Clip Editor, Motion tracking tools.DOPESHEET_EDITOR Dope Sheet, Adjust timing of keyframes.GRAPH_EDITOR Graph Editor, Edit drivers and keyframe interpolation.NLA_EDITOR Nonlinear Animation, Combine and layer Actions.TEXT_EDITOR Text Editor, Edit scripts and in-file documentation.CONSOLE Python Console, Interactive programmatic console for advanced editing and script development.INFO Info, Main menu bar and list of error messages (drag down to expand and display).TOPBAR Top Bar, Global bar at the top of the screen for global per-window settings.STATUSBAR Status Bar, Global bar at the bottom of the screen for general status information.OUTLINER Outliner, Overview of scene graph and all available data-blocks.PROPERTIES Properties, Edit properties of active object and related data-blocks.FILE_BROWSER File Browser, Browse for files and assets.USER_PREFERENCES User Preferences, Edit persistent configuration settings. — enum in ['EMPTY', 'VIEW_3D', 'IMAGE_EDITOR', 'NODE_EDITOR', 'SEQUENCE_EDITOR', 'CLIP_EDITOR', 'DOPESHEET_EDITOR', 'GRAPH_EDITOR', 'NLA_EDITOR', 'TEXT_EDITOR', 'CONSOLE', 'INFO', 'TOPBAR', 'STATUSBAR', 'OUTLINER', 'PROPERTIES', 'FILE_BROWSER', 'USER_PREFERENCES'], (optional)
	**/
	static function space_type_set_or_cycle(space_type:bpy.ops.screen.Screen.Enum5):Void;
	/**
		Remove unused settings for invisible editors
	**/
	static function spacedata_cleanup():Void;
	/**
		Edit user preferences and system settings
	**/
	static function userpref_show():Void;
	/**
		Cycle through workspaces
		@param direction Direction, Direction to cycle through — enum in ['PREV', 'NEXT'], (optional)
	**/
	static function workspace_cycle(direction:bpy.ops.screen.Screen.Enum6):Void;
}