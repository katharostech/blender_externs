package bpy.ops.view3d;
/**
	View3D Operators
**/
@:pythonImport("bpy.ops.view3d") extern class Module {
	/**
		Add a new background image
		@param name Name, Image name to assign — string, (optional, never None)
		@param filepath File Path, Path to file — string, (optional, never None)
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
	static function background_image_add(name:String, filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.view3d.View3d.Enum1, sort_method:bpy.ops.view3d.View3d.Enum2):Void;
	/**
		Remove a background image from the 3D view
		@param index Index, Background image index to remove — int in [0, inf], (optional)
	**/
	static function background_image_remove(index:Int):Void;
	/**
		Set camera view to active view
	**/
	static function camera_to_view():Void;
	/**
		Move the camera so selected objects are framed
	**/
	static function camera_to_view_selected():Void;
	/**
		Clear the boundaries of the border render and disable border render
	**/
	static function clear_render_border():Void;
	/**
		Selected objects are saved in a temp file
	**/
	static function copybuffer():Void;
	/**
		Set the location of the 3D cursor
		@param use_depth Surface Project, Project onto the surface — boolean, (optional)
		@param orientation Orientation, Preset viewpoint to useNONE None, Leave orientation unchanged.VIEW View, Orient to the viewport.XFORM Transform, Orient to the current transform setting.GEOM Geometry, Match the surface normal. — enum in ['NONE', 'VIEW', 'XFORM', 'GEOM'], (optional)
	**/
	static function cursor3d(use_depth:Bool, orientation:bpy.ops.view3d.View3d.Enum3):Void;
	/**
		Dolly in/out in the view
		@param mx Region Position X — int in [0, inf], (optional)
		@param my Region Position Y — int in [0, inf], (optional)
		@param delta Delta — int in [-inf, inf], (optional)
		@param use_mouse_init Mouse Init, Use initial mouse position — boolean, (optional)
	**/
	static function dolly(mx:Int, my:Int, delta:Int, use_mouse_init:Bool):Void;
	/**
		Extrude individual elements and move
	**/
	static function edit_mesh_extrude_individual_move():Void;
	/**
		Extrude and move along normals
	**/
	static function edit_mesh_extrude_move_normal():Void;
	/**
		Extrude and move along individual normals
	**/
	static function edit_mesh_extrude_move_shrink_fatten():Void;
	/**
		Interactively fly around the scene
	**/
	static function fly():Void;
	/**
		Toggle display of selected object(s) separately and centered in view
	**/
	static function localview():Void;
	/**
		Move the view
		@param use_mouse_init Mouse Init, Use initial mouse position — boolean, (optional)
	**/
	static function move(use_mouse_init:Bool):Void;
	/**
		Interactively navigate around the scene (uses the mode (walk/fly) preference)
	**/
	static function navigate():Void;
	/**
		Pan and rotate the view with the 3D mouse
	**/
	static function ndof_all():Void;
	/**
		Orbit the view using the 3D mouse
	**/
	static function ndof_orbit():Void;
	/**
		Orbit and zoom the view using the 3D mouse
	**/
	static function ndof_orbit_zoom():Void;
	/**
		Pan the view with the 3D mouse
	**/
	static function ndof_pan():Void;
	/**
		Set the active object as the active camera for this view or scene
	**/
	static function object_as_camera():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function object_mode_pie_or_toggle():Void;
	/**
		Contents of copy buffer gets pasted
		@param autoselect Select, Select pasted objects — boolean, (optional)
		@param active_collection Active Collection, Put pasted objects on the active collection — boolean, (optional)
	**/
	static function pastebuffer(autoselect:Bool, active_collection:Bool):Void;
	/**
		Toggle the properties region visibility
	**/
	static function properties():Void;
	/**
		Set the boundaries of the border render and enable border render
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
	**/
	static function render_border(xmin:Int, xmax:Int, ymin:Int, ymax:Int):Void;
	/**
		Rotate the view
		@param use_mouse_init Mouse Init, Use initial mouse position — boolean, (optional)
	**/
	static function rotate(use_mouse_init:Bool):Void;
	/**
		Interactive ruler
	**/
	static function ruler():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function ruler_add():Void;
	/**
		Select and activate item(s)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param deselect Deselect, Remove from selection — boolean, (optional)
		@param toggle Toggle Selection, Toggle the selection — boolean, (optional)
		@param center Center, Use the object center when selecting, in editmode used to extend object selection — boolean, (optional)
		@param enumerate Enumerate, List objects under the mouse (object mode only) — boolean, (optional)
		@param object Object, Use object selection (editmode only) — boolean, (optional)
		@param location Location, Mouse location — int array of 2 items in [-inf, inf], (optional)
	**/
	static function select(extend:Bool, deselect:Bool, toggle:Bool, center:Bool, enumerate:Bool, object:Bool, location:Array<Int>):Void;
	/**
		Select items using box selection
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param mode Mode — enum in ['SET', 'ADD', 'SUB', 'XOR', 'AND'], (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, mode:bpy.ops.view3d.View3d.Enum4):Void;
	/**
		Select items using circle selection
		@param x X — int in [-inf, inf], (optional)
		@param y Y — int in [-inf, inf], (optional)
		@param radius Radius — int in [1, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
	**/
	static function select_circle(x:Int, y:Int, radius:Int, deselect:Bool):Void;
	/**
		Select items using lasso selection
		@param path Path — bpy_prop_collection of OperatorMousePath, (optional)
		@param mode Mode — enum in ['SET', 'ADD', 'SUB', 'XOR', 'AND'], (optional)
	**/
	static function select_lasso(path:Dynamic, mode:bpy.ops.view3d.View3d.Enum5):Void;
	/**
		Menu object selection
		@param name Object Name — enum in [], (optional)
		@param toggle Toggle, Toggle selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_menu(name:bpy.ops.view3d.View3d.Enum6, toggle:Bool):Void;
	/**
		Select element under the mouse, deselect everything is there’s nothing under the mouse
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param toggle Toggle, Toggle the selection — boolean, (optional)
		@param deselect Deselect, Remove from selection — boolean, (optional)
		@param center Center, Use the object center when selecting, in editmode used to extend object selection — boolean, (optional)
		@param enumerate Enumerate, List objects under the mouse (object mode only) — boolean, (optional)
		@param object Object, Use object selection (editmode only) — boolean, (optional)
	**/
	static function select_or_deselect_all(extend:Bool, toggle:Bool, deselect:Bool, center:Bool, enumerate:Bool, object:Bool):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function smoothview():Void;
	/**
		Snap 3D cursor to the active item
	**/
	static function snap_cursor_to_active():Void;
	/**
		Snap 3D cursor to the world origin
	**/
	static function snap_cursor_to_center():Void;
	/**
		Snap 3D cursor to the nearest grid division
	**/
	static function snap_cursor_to_grid():Void;
	/**
		Snap 3D cursor to the middle of the selected item(s)
	**/
	static function snap_cursor_to_selected():Void;
	/**
		Snap selected item(s) to the active item
	**/
	static function snap_selected_to_active():Void;
	/**
		Snap selected item(s) to the 3D cursor
		@param use_offset Offset, If the selection should be snapped as a whole or by each object center — boolean, (optional)
	**/
	static function snap_selected_to_cursor(use_offset:Bool):Void;
	/**
		Snap selected item(s) to their nearest grid division
	**/
	static function snap_selected_to_grid():Void;
	/**
		Flip MatCap
	**/
	static function toggle_matcap_flip():Void;
	/**
		Toggle shading type in 3D viewport
		@param type Type, Shading type to toggleWIREFRAME Wireframe, Toggle wireframe shading.SOLID Solid, Toggle solid shading.MATERIAL LookDev, Toggle lookdev shading.RENDERED Rendered, Toggle rendered shading. — enum in ['WIREFRAME', 'SOLID', 'MATERIAL', 'RENDERED'], (optional)
	**/
	static function toggle_shading(type:bpy.ops.view3d.View3d.Enum7):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function toggle_xray():Void;
	/**
		Toggles tool shelf display
	**/
	static function toolshelf():Void;
	/**
		View all objects in scene
		@param use_all_regions All Regions, View selected for all regions — boolean, (optional)
		@param center Center — boolean, (optional)
	**/
	static function view_all(use_all_regions:Bool, center:Bool):Void;
	/**
		Use a preset viewpoint
		@param type View, Preset viewpoint to useLEFT Left, View From the Left.RIGHT Right, View From the Right.BOTTOM Bottom, View From the Bottom.TOP Top, View From the Top.FRONT Front, View From the Front.BACK Back, View From the Back. — enum in ['LEFT', 'RIGHT', 'BOTTOM', 'TOP', 'FRONT', 'BACK'], (optional)
		@param align_active Align Active, Align to the active object’s axis — boolean, (optional)
		@param relative Relative, Rotate relative to the current orientation — boolean, (optional)
	**/
	static function view_axis(type:bpy.ops.view3d.View3d.Enum8, align_active:Bool, relative:Bool):Void;
	/**
		Toggle the camera view
	**/
	static function view_camera():Void;
	/**
		Center the camera view
	**/
	static function view_center_camera():Void;
	/**
		Center the view so that the cursor is in the middle of the view
	**/
	static function view_center_cursor():Void;
	/**
		Center the view lock offset
	**/
	static function view_center_lock():Void;
	/**
		Center the view to the Z-depth position under the mouse cursor
	**/
	static function view_center_pick():Void;
	/**
		Clear all view locking
	**/
	static function view_lock_clear():Void;
	/**
		Lock the view to the active object/bone
	**/
	static function view_lock_to_active():Void;
	/**
		Orbit the view
		@param angle Roll — float in [-inf, inf], (optional)
		@param type Orbit, Direction of View OrbitORBITLEFT Orbit Left, Orbit the view around to the Left.ORBITRIGHT Orbit Right, Orbit the view around to the Right.ORBITUP Orbit Up, Orbit the view Up.ORBITDOWN Orbit Down, Orbit the view Down. — enum in ['ORBITLEFT', 'ORBITRIGHT', 'ORBITUP', 'ORBITDOWN'], (optional)
	**/
	static function view_orbit(angle:Float, type:bpy.ops.view3d.View3d.Enum9):Void;
	/**
		Pan the view in a given direction
		@param type Pan, Direction of View PanPANLEFT Pan Left, Pan the view to the Left.PANRIGHT Pan Right, Pan the view to the Right.PANUP Pan Up, Pan the view Up.PANDOWN Pan Down, Pan the view Down. — enum in ['PANLEFT', 'PANRIGHT', 'PANUP', 'PANDOWN'], (optional)
	**/
	static function view_pan(type:bpy.ops.view3d.View3d.Enum10):Void;
	/**
		Switch the current view from perspective/orthographic projection
	**/
	static function view_persportho():Void;
	/**
		Roll the view
		@param angle Roll — float in [-inf, inf], (optional)
		@param type Roll Angle Source, How roll angle is calculatedANGLE Roll Angle, Roll the view using an angle value.LEFT Roll Left, Roll the view around to the Left.RIGHT Roll Right, Roll the view around to the Right. — enum in ['ANGLE', 'LEFT', 'RIGHT'], (optional)
	**/
	static function view_roll(angle:Float, type:bpy.ops.view3d.View3d.Enum11):Void;
	/**
		Move the view to the selection center
		@param use_all_regions All Regions, View selected for all regions — boolean, (optional)
	**/
	static function view_selected(use_all_regions:Bool):Void;
	/**
		Interactively walk around the scene
	**/
	static function walk():Void;
	/**
		Zoom in/out in the view
		@param mx Region Position X — int in [0, inf], (optional)
		@param my Region Position Y — int in [0, inf], (optional)
		@param delta Delta — int in [-inf, inf], (optional)
		@param use_mouse_init Mouse Init, Use initial mouse position — boolean, (optional)
	**/
	static function zoom(mx:Int, my:Int, delta:Int, use_mouse_init:Bool):Void;
	/**
		Zoom in the view to the nearest object contained in the border
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param zoom_out Zoom Out — boolean, (optional)
	**/
	static function zoom_border(xmin:Int, xmax:Int, ymin:Int, ymax:Int, zoom_out:Bool):Void;
	/**
		Match the camera to 1:1 to the render output
	**/
	static function zoom_camera_1_to_1():Void;
}