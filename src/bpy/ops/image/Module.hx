package bpy.ops.image;
/**
	Image Operators
**/
@:pythonImport("bpy.ops.image") extern class Module {
	/**
		Add a new render slot
	**/
	static function add_render_slot():Void;
	/**
		Interactively change the current frame number
		@param frame Frame — int in [-1048574, 1048574], (optional)
	**/
	static function change_frame(frame:Int):Void;
	/**
		Clear the boundaries of the border render and disable border render
	**/
	static function clear_render_border():Void;
	/**
		Clear the currently selected render slot
	**/
	static function clear_render_slot():Void;
	/**
		Set black point or white point for curves
		@param point Point, Set black point or white point for curves — enum in ['BLACK_POINT', 'WHITE_POINT'], (optional)
	**/
	static function curves_point_set(point:bpy.ops.image.Image.Enum1):Void;
	/**
		Cycle through all non-void render slots
		@param reverse Cycle in Reverse — boolean, (optional)
	**/
	static function cycle_render_slot(reverse:Bool):Void;
	/**
		Edit image in an external application
		@param filepath filepath — string, (optional, never None)
	**/
	static function external_edit(filepath:String):Void;
	/**
		Invert image’s channels
		@param invert_r Red, Invert Red Channel — boolean, (optional)
		@param invert_g Green, Invert Green Channel — boolean, (optional)
		@param invert_b Blue, Invert Blue Channel — boolean, (optional)
		@param invert_a Alpha, Invert Alpha Channel — boolean, (optional)
	**/
	static function invert(invert_r:Bool, invert_g:Bool, invert_b:Bool, invert_a:Bool):Void;
	/**
		Set image’s user’s length to the one of this video
	**/
	static function match_movie_length():Void;
	/**
		Create a new image
		@param name Name, Image data-block name — string, (optional, never None)
		@param width Width, Image width — int in [1, inf], (optional)
		@param height Height, Image height — int in [1, inf], (optional)
		@param color Color, Default fill color — float array of 4 items in [0, inf], (optional)
		@param alpha Alpha, Create an image with an alpha channel — boolean, (optional)
		@param generated_type Generated Type, Fill the image with a grid for UV map testingBLANK Blank, Generate a blank image.UV_GRID UV Grid, Generated grid to test UV mappings.COLOR_GRID Color Grid, Generated improved UV grid to test UV mappings. — enum in ['BLANK', 'UV_GRID', 'COLOR_GRID'], (optional)
		@param float 32 bit Float, Create image with 32 bit floating point bit depth — boolean, (optional)
		@param use_stereo_3d Stereo 3D, Create an image with left and right views — boolean, (optional)
	**/
	static function new(name:String, width:Int, height:Int, color:Array<Float>, alpha:Bool, generated_type:bpy.ops.image.Image.Enum2, float:Bool, use_stereo_3d:Bool):Void;
	/**
		Open image
		@param filepath File Path, Path to file — string, (optional, never None)
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
		@param use_sequence_detection Detect Sequences, Automatically detect animated sequences in selected images (based on file names) — boolean, (optional)
	**/
	static function open(filepath:String, directory:String, files:Dynamic, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.image.Image.Enum3, sort_method:bpy.ops.image.Image.Enum4, use_sequence_detection:Bool):Void;
	/**
		Pack an image as embedded data into the .blend file
		@param as_png Pack As PNG, Pack image as lossless PNG — boolean, (optional)
	**/
	static function pack(as_png:Bool):Void;
	/**
		Project edited image back onto the object
	**/
	static function project_apply():Void;
	/**
		Edit a snapshot of the view-port in an external image editor
	**/
	static function project_edit():Void;
	/**
		Toggle the properties region visibility
	**/
	static function properties():Void;
	/**
		Read all the current scene’s view layers from cache, as needed
	**/
	static function read_viewlayers():Void;
	/**
		Reload current image from disk
	**/
	static function reload():Void;
	/**
		Remove the current render slot
	**/
	static function remove_render_slot():Void;
	/**
		Set the boundaries of the border render and enable border render
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
	**/
	static function render_border(xmin:Int, xmax:Int, ymin:Int, ymax:Int):Void;
	/**
		Replace current image by another one from disk
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
	static function replace(filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.image.Image.Enum5, sort_method:bpy.ops.image.Image.Enum6):Void;
	/**
		Use mouse to sample a color in current image
	**/
	static function sample():Void;
	/**
		Sample a line and show it in Scope panels
		@param xstart X Start — int in [-inf, inf], (optional)
		@param xend X End — int in [-inf, inf], (optional)
		@param ystart Y Start — int in [-inf, inf], (optional)
		@param yend Y End — int in [-inf, inf], (optional)
		@param cursor Cursor, Mouse cursor style to use during the modal operator — int in [0, inf], (optional)
	**/
	static function sample_line(xstart:Int, xend:Int, ystart:Int, yend:Int, cursor:Int):Void;
	/**
		Save the image with current name and settings
	**/
	static function save():Void;
	/**
		Save the image with another name and/or settings
		@param save_as_render Save As Render, Apply render part of display transform when saving byte image — boolean, (optional)
		@param copy Copy, Create a new image file without modifying the current image in blender — boolean, (optional)
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
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param show_multiview Enable Multi-View — boolean, (optional)
		@param use_multiview Use Multi-View — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
	**/
	static function save_as(save_as_render:Bool, copy:Bool, filepath:String, check_existing:Bool, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.image.Image.Enum7, sort_method:bpy.ops.image.Image.Enum8):Void;
	/**
		Save all modified textures
	**/
	static function save_dirty():Void;
	/**
		Save a sequence of images
	**/
	static function save_sequence():Void;
	/**
		Toggles tool shelf display
	**/
	static function toolshelf():Void;
	/**
		Save an image packed in the .blend file to disk
		@param method Method, How to unpack — enum in ['USE_LOCAL', 'WRITE_LOCAL', 'USE_ORIGINAL', 'WRITE_ORIGINAL'], (optional)
		@param id Image Name, Image data-block name to unpack — string, (optional, never None)
	**/
	static function unpack(method:bpy.ops.image.Image.Enum9, id:String):Void;
	/**
		View the entire image
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
		View all selected UVs
	**/
	static function view_selected():Void;
	/**
		Zoom in/out the image
		@param factor Factor, Zoom factor, values higher than 1.0 zoom in, lower values zoom out — float in [-inf, inf], (optional)
	**/
	static function view_zoom(factor:Float):Void;
	/**
		Zoom in the view to the nearest item contained in the border
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param zoom_out Zoom Out — boolean, (optional)
	**/
	static function view_zoom_border(xmin:Int, xmax:Int, ymin:Int, ymax:Int, zoom_out:Bool):Void;
	/**
		Zoom in the image (centered around 2D cursor)
		@param location Location, Cursor location in screen coordinates — float array of 2 items in [-inf, inf], (optional)
	**/
	static function view_zoom_in(location:Array<Float>):Void;
	/**
		Zoom out the image (centered around 2D cursor)
		@param location Location, Cursor location in screen coordinates — float array of 2 items in [-inf, inf], (optional)
	**/
	static function view_zoom_out(location:Array<Float>):Void;
	/**
		Set zoom ratio of the view
		@param ratio Ratio, Zoom ratio, 1.0 is 1:1, higher is zoomed in, lower is zoomed out — float in [-inf, inf], (optional)
	**/
	static function view_zoom_ratio(ratio:Float):Void;
}