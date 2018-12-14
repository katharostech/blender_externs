package bpy.ops.clip;
/**
	Clip Operators
**/
@:pythonImport("bpy.ops.clip") extern class Module {
	/**
		Place new marker at specified location
		@param location Location, Location of marker on frame — float array of 2 items in [-inf, inf], (optional)
	**/
	static function add_marker(location:Array<Float>):Void;
	/**
		Place new marker at the desired (clicked) position
	**/
	static function add_marker_at_click():Void;
	/**
		Add new marker and move it on movie
		@param CLIP_OT_add_marker Add Marker, Place new marker at specified location — CLIP_OT_add_marker, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function add_marker_move(CLIP_OT_add_marker:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Add new marker and slide it with mouse until mouse button release
		@param CLIP_OT_add_marker Add Marker, Place new marker at specified location — CLIP_OT_add_marker, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function add_marker_slide(CLIP_OT_add_marker:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Apply scale on solution itself to make distance between selected tracks equals to desired
		@param distance Distance, Distance between selected tracks — float in [-inf, inf], (optional)
	**/
	static function apply_solution_scale(distance:Float):Void;
	/**
		Create vertex cloud using coordinates of reconstructed tracks
	**/
	static function bundles_to_mesh():Void;
	/**
		Add or remove a Tracking Camera Intrinsics Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
		@param use_focal_length Include Focal Length, Include focal length into the preset — boolean, (optional)
	**/
	static function camera_preset_add(name:String, remove_name:Bool, remove_active:Bool, use_focal_length:Bool):Void;
	/**
		Interactively change the current frame number
		@param frame Frame — int in [-1048574, 1048574], (optional)
	**/
	static function change_frame(frame:Int):Void;
	/**
		Clean tracks with high error values or few frames
		@param frames Tracked Frames, Effect on tracks which are tracked less than specified amount of frames — int in [0, inf], (optional)
		@param error Reprojection Error, Effect on tracks which have got larger re-projection error — float in [0, inf], (optional)
		@param action Action, Cleanup action to executeSELECT Select, Select unclean tracks.DELETE_TRACK Delete Track, Delete unclean tracks.DELETE_SEGMENTS Delete Segments, Delete unclean segments of tracks. — enum in ['SELECT', 'DELETE_TRACK', 'DELETE_SEGMENTS'], (optional)
	**/
	static function clean_tracks(frames:Int, error:Float, action:bpy.ops.clip.Clip.Enum1):Void;
	/**
		Clear all calculated data
	**/
	static function clear_solution():Void;
	/**
		Clear tracks after/before current position or clear the whole track
		@param action Action, Clear action to executeUPTO Clear up-to, Clear path up to current frame.REMAINED Clear remained, Clear path at remaining frames (after current).ALL Clear all, Clear the whole path. — enum in ['UPTO', 'REMAINED', 'ALL'], (optional)
		@param clear_active Clear Active, Clear active track only instead of all selected tracks — boolean, (optional)
	**/
	static function clear_track_path(action:bpy.ops.clip.Clip.Enum2, clear_active:Bool):Void;
	/**
		Create F-Curves for object which will copy object’s movement caused by this constraint
	**/
	static function constraint_to_fcurve():Void;
	/**
		Copy selected tracks to clipboard
	**/
	static function copy_tracks():Void;
	/**
		Create new plane track out of selected point tracks
	**/
	static function create_plane_track():Void;
	/**
		Set 2D cursor location
		@param location Location, Cursor location in normalized clip coordinates — float array of 2 items in [-inf, inf], (optional)
	**/
	static function cursor_set(location:Array<Float>):Void;
	/**
		Delete marker for current frame from selected tracks
	**/
	static function delete_marker():Void;
	/**
		Delete movie clip proxy files from the hard drive
	**/
	static function delete_proxy():Void;
	/**
		Delete selected tracks
	**/
	static function delete_track():Void;
	/**
		Automatically detect features and place markers to track
		@param placement Placement, Placement for detected featuresFRAME Whole Frame, Place markers across the whole frame.INSIDE_GPENCIL Inside Grease Pencil, Place markers only inside areas outlined with Grease Pencil.OUTSIDE_GPENCIL Outside Grease Pencil, Place markers only outside areas outlined with Grease Pencil. — enum in ['FRAME', 'INSIDE_GPENCIL', 'OUTSIDE_GPENCIL'], (optional)
		@param margin Margin, Only features further than margin pixels from the image edges are considered — int in [0, inf], (optional)
		@param threshold Threshold, Threshold level to consider feature good enough for tracking — float in [0.0001, inf], (optional)
		@param min_distance Distance, Minimal distance accepted between two features — int in [0, inf], (optional)
	**/
	static function detect_features(placement:bpy.ops.clip.Clip.Enum3, margin:Int, threshold:Float, min_distance:Int):Void;
	/**
		Disable/enable selected markers
		@param action Action, Disable action to executeDISABLE Disable, Disable selected markers.ENABLE Enable, Enable selected markers.TOGGLE Toggle, Toggle disabled flag for selected markers. — enum in ['DISABLE', 'ENABLE', 'TOGGLE'], (optional)
	**/
	static function disable_markers(action:bpy.ops.clip.Clip.Enum4):Void;
	/**
		Select movie tracking channel
		@param location Location, Mouse location to select channel — float array of 2 items in [-inf, inf], (optional)
		@param extend Extend, Extend selection rather than clearing the existing selection — boolean, (optional)
	**/
	static function dopesheet_select_channel(location:Array<Float>, extend:Bool):Void;
	/**
		Reset viewable area to show full keyframe range
	**/
	static function dopesheet_view_all():Void;
	/**
		Filter tracks which has weirdly looking spikes in motion curves
		@param track_threshold Track Threshold, Filter Threshold to select problematic tracks — float in [-inf, inf], (optional)
	**/
	static function filter_tracks(track_threshold:Float):Void;
	/**
		Jump to special frame
		@param position Position, Position to jump toPATHSTART Path Start, Jump to start of current path.PATHEND Path End, Jump to end of current path.FAILEDPREV Previous Failed, Jump to previous failed frame.FAILNEXT Next Failed, Jump to next failed frame. — enum in ['PATHSTART', 'PATHEND', 'FAILEDPREV', 'FAILNEXT'], (optional)
	**/
	static function frame_jump(position:bpy.ops.clip.Clip.Enum5):Void;
	/**
		Scroll view so current frame would be centered
	**/
	static function graph_center_current_frame():Void;
	/**
		Delete track corresponding to the selected curve
	**/
	static function graph_delete_curve():Void;
	/**
		Delete curve knots
	**/
	static function graph_delete_knot():Void;
	/**
		Disable/enable selected markers
		@param action Action, Disable action to executeDISABLE Disable, Disable selected markers.ENABLE Enable, Enable selected markers.TOGGLE Toggle, Toggle disabled flag for selected markers. — enum in ['DISABLE', 'ENABLE', 'TOGGLE'], (optional)
	**/
	static function graph_disable_markers(action:bpy.ops.clip.Clip.Enum6):Void;
	/**
		Select graph curves
		@param location Location, Mouse location to select nearest entity — float array of 2 items in [-inf, inf], (optional)
		@param extend Extend, Extend selection rather than clearing the existing selection — boolean, (optional)
	**/
	static function graph_select(location:Array<Float>, extend:Bool):Void;
	/**
		Change selection of all markers of active track
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function graph_select_all_markers(action:bpy.ops.clip.Clip.Enum7):Void;
	/**
		Select curve points using box selection
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function graph_select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool):Void;
	/**
		View all curves in editor
	**/
	static function graph_view_all():Void;
	/**
		Hide selected tracks
		@param unselected Unselected, Hide unselected tracks — boolean, (optional)
	**/
	static function hide_tracks(unselected:Bool):Void;
	/**
		Clear hide selected tracks
	**/
	static function hide_tracks_clear():Void;
	/**
		Join selected tracks
	**/
	static function join_tracks():Void;
	/**
		Delete a keyframe from selected tracks at current frame
	**/
	static function keyframe_delete():Void;
	/**
		Insert a keyframe to selected tracks at current frame
	**/
	static function keyframe_insert():Void;
	/**
		Lock/unlock selected tracks
		@param action Action, Lock action to executeLOCK Lock, Lock selected tracks.UNLOCK Unlock, Unlock selected tracks.TOGGLE Toggle, Toggle locked flag for selected tracks. — enum in ['LOCK', 'UNLOCK', 'TOGGLE'], (optional)
	**/
	static function lock_tracks(action:bpy.ops.clip.Clip.Enum8):Void;
	/**
		Set the clip interaction mode
		@param mode ModeTRACKING Tracking, Show tracking and solving tools.MASK Mask, Show mask editing tools. — enum in ['TRACKING', 'MASK'], (optional)
	**/
	static function mode_set(mode:bpy.ops.clip.Clip.Enum9):Void;
	/**
		Load a sequence of frames or a movie file
		@param directory Directory, Directory of the file — string, (optional, never None)
		@param files Files — bpy_prop_collection of OperatorFileListElement, (optional)
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
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param show_multiview Enable Multi-View — boolean, (optional)
		@param use_multiview Use Multi-View — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
	**/
	static function open(directory:String, files:Dynamic, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.clip.Clip.Enum10, sort_method:bpy.ops.clip.Clip.Enum11):Void;
	/**
		Paste tracks from clipboard
	**/
	static function paste_tracks():Void;
	/**
		Prefetch frames from disk for faster playback/tracking
	**/
	static function prefetch():Void;
	/**
		Toggle the properties region visibility
	**/
	static function properties():Void;
	/**
		Rebuild all selected proxies and timecode indices in the background
	**/
	static function rebuild_proxy():Void;
	/**
		Refine selected markers positions by running the tracker from track’s reference to current frame
		@param backwards Backwards, Do backwards tracking — boolean, (optional)
	**/
	static function refine_markers(backwards:Bool):Void;
	/**
		Reload clip
	**/
	static function reload():Void;
	/**
		Select tracking markers
		@param extend Extend, Extend selection rather than clearing the existing selection — boolean, (optional)
		@param location Location, Mouse location in normalized coordinates, 0.0 to 1.0 is within the image bounds — float array of 2 items in [-inf, inf], (optional)
	**/
	static function select(extend:Bool, location:Array<Float>):Void;
	/**
		Change selection of all tracking markers
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.clip.Clip.Enum12):Void;
	/**
		Select markers using box selection
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool):Void;
	/**
		Select markers using circle selection
		@param x X — int in [-inf, inf], (optional)
		@param y Y — int in [-inf, inf], (optional)
		@param radius Radius — int in [1, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
	**/
	static function select_circle(x:Int, y:Int, radius:Int, deselect:Bool):Void;
	/**
		Select all tracks from specified group
		@param group Action, Clear action to executeKEYFRAMED Keyframed tracks, Select all keyframed tracks.ESTIMATED Estimated tracks, Select all estimated tracks.TRACKED Tracked tracks, Select all tracked tracks.LOCKED Locked tracks, Select all locked tracks.DISABLED Disabled tracks, Select all disabled tracks.COLOR Tracks with same color, Select all tracks with same color as active track.FAILED Failed Tracks, Select all tracks which failed to be reconstructed. — enum in ['KEYFRAMED', 'ESTIMATED', 'TRACKED', 'LOCKED', 'DISABLED', 'COLOR', 'FAILED'], (optional)
	**/
	static function select_grouped(group:bpy.ops.clip.Clip.Enum13):Void;
	/**
		Select markers using lasso selection
		@param path Path — bpy_prop_collection of OperatorMousePath, (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_lasso(path:Dynamic, deselect:Bool, extend:Bool):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function set_active_clip():Void;
	/**
		Set direction of scene axis rotating camera (or its parent if present) and assume selected track lies on real axis, joining it with the origin
		@param axis Axis, Axis to use to align bundle alongX X, Align bundle align X axis.Y Y, Align bundle align Y axis. — enum in ['X', 'Y'], (optional)
	**/
	static function set_axis(axis:bpy.ops.clip.Clip.Enum14):Void;
	/**
		Set optical center to center of footage
	**/
	static function set_center_principal():Void;
	/**
		Set active marker as origin by moving camera (or its parent if present) in 3D space
		@param use_median Use Median, Set origin to median point of selected bundles — boolean, (optional)
	**/
	static function set_origin(use_median:Bool):Void;
	/**
		Set plane based on 3 selected bundles by moving camera (or its parent if present) in 3D space
		@param plane Plane, Plane to be used for orientationFLOOR Floor, Set floor plane.WALL Wall, Set wall plane. — enum in ['FLOOR', 'WALL'], (optional)
	**/
	static function set_plane(plane:bpy.ops.clip.Clip.Enum15):Void;
	/**
		Set scale of scene by scaling camera (or its parent if present)
		@param distance Distance, Distance between selected tracks — float in [-inf, inf], (optional)
	**/
	static function set_scale(distance:Float):Void;
	/**
		Set scene’s start and end frame to match clip’s start frame and length
	**/
	static function set_scene_frames():Void;
	/**
		Set object solution scale using distance between two selected tracks
		@param distance Distance, Distance between selected tracks — float in [-inf, inf], (optional)
	**/
	static function set_solution_scale(distance:Float):Void;
	/**
		Set keyframe used by solver
		@param keyframe Keyframe, Keyframe to set — enum in ['KEYFRAME_A', 'KEYFRAME_B'], (optional)
	**/
	static function set_solver_keyframe(keyframe:bpy.ops.clip.Clip.Enum16):Void;
	/**
		Set current movie clip as a camera background in 3D view-port (works only when a 3D view-port is visible)
	**/
	static function set_viewport_background():Void;
	/**
		Prepare scene for compositing 3D objects into this footage
	**/
	static function setup_tracking_scene():Void;
	/**
		Slide marker areas
		@param offset Offset, Offset in floating point units, 1.0 is the width and height of the image — float array of 2 items in [-inf, inf], (optional)
	**/
	static function slide_marker(offset:Array<Float>):Void;
	/**
		Slide plane marker areas
	**/
	static function slide_plane_marker():Void;
	/**
		Solve camera motion from tracks
	**/
	static function solve_camera():Void;
	/**
		Add selected tracks to 2D translation stabilization
	**/
	static function stabilize_2d_add():Void;
	/**
		Remove selected track from translation stabilization
	**/
	static function stabilize_2d_remove():Void;
	/**
		Add selected tracks to 2D rotation stabilization
	**/
	static function stabilize_2d_rotation_add():Void;
	/**
		Remove selected track from rotation stabilization
	**/
	static function stabilize_2d_rotation_remove():Void;
	/**
		Select tracks which are used for rotation stabilization
	**/
	static function stabilize_2d_rotation_select():Void;
	/**
		Select tracks which are used for translation stabilization
	**/
	static function stabilize_2d_select():Void;
	/**
		Toggle clip tools panel
	**/
	static function tools():Void;
	/**
		Add or remove a Clip Track Color Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function track_color_preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
	/**
		Copy color to all selected tracks
	**/
	static function track_copy_color():Void;
	/**
		Track selected markers
		@param backwards Backwards, Do backwards tracking — boolean, (optional)
		@param sequence Track Sequence, Track marker during image sequence rather than single image — boolean, (optional)
	**/
	static function track_markers(backwards:Bool, sequence:Bool):Void;
	/**
		Copy tracking settings from active track to default settings
	**/
	static function track_settings_as_default():Void;
	/**
		Copy tracking settings from active track to selected tracks
	**/
	static function track_settings_to_track():Void;
	/**
		Create an Empty object which will be copying movement of active track
	**/
	static function track_to_empty():Void;
	/**
		Add new object for tracking
	**/
	static function tracking_object_new():Void;
	/**
		Remove object for tracking
	**/
	static function tracking_object_remove():Void;
	/**
		Add or remove a motion tracking settings preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function tracking_settings_preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
	/**
		View whole image with markers
		@param fit_view Fit View, Fit frame to the viewport — boolean, (optional)
	**/
	static function view_all(fit_view:Bool):Void;
	/**
		Use a 3D mouse device to pan/zoom the view
	**/
	static function view_ndof():Void;
	/**
		Pan the view
		@param offset Offset, Offset in floating point units, 1.0 is the width and height of the image — float array of 2 items in [-inf, inf], (optional)
	**/
	static function view_pan(offset:Array<Float>):Void;
	/**
		View all selected elements
	**/
	static function view_selected():Void;
	/**
		Zoom in/out the view
		@param factor Factor, Zoom factor, values higher than 1.0 zoom in, lower values zoom out — float in [-inf, inf], (optional)
	**/
	static function view_zoom(factor:Float):Void;
	/**
		Zoom in the view
		@param location Location, Cursor location in screen coordinates — float array of 2 items in [-inf, inf], (optional)
	**/
	static function view_zoom_in(location:Array<Float>):Void;
	/**
		Zoom out the view
		@param location Location, Cursor location in normalized (0.0-1.0) coordinates — float array of 2 items in [-inf, inf], (optional)
	**/
	static function view_zoom_out(location:Array<Float>):Void;
	/**
		Set the zoom ratio (based on clip size)
		@param ratio Ratio, Zoom ratio, 1.0 is 1:1, higher is zoomed in, lower is zoomed out — float in [-inf, inf], (optional)
	**/
	static function view_zoom_ratio(ratio:Float):Void;
}