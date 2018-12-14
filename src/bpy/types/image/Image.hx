package bpy.types.image;
@:enum abstract Enum1(String) from String to String {
	var STRAIGHT : String = "STRAIGHT";
	var PREMUL : String = "PREMUL";
}@:enum abstract Enum2(String) from String to String {
	var BMP : String = "BMP";
	var IRIS : String = "IRIS";
	var PNG : String = "PNG";
	var JPEG : String = "JPEG";
	var JPEG2000 : String = "JPEG2000";
	var TARGA : String = "TARGA";
	var TARGA_RAW : String = "TARGA_RAW";
	var CINEON : String = "CINEON";
	var DPX : String = "DPX";
	var OPEN_EXR_MULTILAYER : String = "OPEN_EXR_MULTILAYER";
	var OPEN_EXR : String = "OPEN_EXR";
	var HDR : String = "HDR";
	var TIFF : String = "TIFF";
	var AVI_JPEG : String = "AVI_JPEG";
	var AVI_RAW : String = "AVI_RAW";
	var FFMPEG : String = "FFMPEG";
}@:enum abstract Enum3(String) from String to String {
	var BLANK : String = "BLANK";
	var UV_GRID : String = "UV_GRID";
	var COLOR_GRID : String = "COLOR_GRID";
}@:enum abstract Enum4(String) from String to String {
	var FILE : String = "FILE";
	var SEQUENCE : String = "SEQUENCE";
	var MOVIE : String = "MOVIE";
	var GENERATED : String = "GENERATED";
	var VIEWER : String = "VIEWER";
}@:enum abstract Enum5(String) from String to String {
	var IMAGE : String = "IMAGE";
	var MULTILAYER : String = "MULTILAYER";
	var UV_TEST : String = "UV_TEST";
	var RENDER_RESULT : String = "RENDER_RESULT";
	var COMPOSITING : String = "COMPOSITING";
}@:enum abstract Enum6(String) from String to String {
	var INDIVIDUAL : String = "INDIVIDUAL";
	var STEREO_3D : String = "STEREO_3D";
}@:enum abstract Enum7(String) from String to String {
	var USE_LOCAL : String = "USE_LOCAL";
	var WRITE_LOCAL : String = "WRITE_LOCAL";
	var USE_ORIGINAL : String = "USE_ORIGINAL";
	var WRITE_ORIGINAL : String = "WRITE_ORIGINAL";
}/**
	Image data-block referencing an external or packed image
**/
@:pythonImport("bpy.types.Image") extern class Image {
	/**
		Representation of alpha information in the RGBA pixels
		
		Type: enum in [‘STRAIGHT’, ‘PREMUL’], default ‘STRAIGHT’
	**/
	var alpha_mode : bpy.types.image.Image.Enum1;
	/**
		OpenGL bindcode
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var bindcode(default, never) : Int;
	/**
		Number of channels in pixels buffer
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var channels(default, never) : Int;
	/**
		Input color space settings
		
		Type: ColorManagedInputColorspaceSettings, (readonly)
	**/
	var colorspace_settings(default, never) : bpy.types.colormanagedinputcolorspacesettings.ColorManagedInputColorspaceSettings;
	/**
		Image bit depth
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var depth(default, never) : Int;
	/**
		Display Aspect for this image, does not affect rendering
		
		Type: float array of 2 items in [0.1, inf], default (0.0, 0.0)
	**/
	var display_aspect : Array<Float>;
	/**
		Format used for re-saving this file
		
		Type: enum in [‘BMP’, ‘IRIS’, ‘PNG’, ‘JPEG’, ‘JPEG2000’, ‘TARGA’, ‘TARGA_RAW’, ‘CINEON’, ‘DPX’, ‘OPEN_EXR_MULTILAYER’, ‘OPEN_EXR’, ‘HDR’, ‘TIFF’, ‘AVI_JPEG’, ‘AVI_RAW’, ‘FFMPEG’], default ‘TARGA’
	**/
	var file_format : bpy.types.image.Image.Enum2;
	/**
		Image/Movie file name
		
		Type: string, default “”, (never None)
	**/
	var filepath : String;
	/**
		Image/Movie file name (without data refreshing)
		
		Type: string, default “”, (never None)
	**/
	var filepath_raw : String;
	/**
		Duration (in frames) of the image (1 when not a video/sequence)
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var frame_duration(default, never) : Int;
	/**
		Fill color for the generated image
		
		Type: float array of 4 items in [0, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var generated_color : Array<Float>;
	/**
		Generated image height
		
		Type: int in [1, 65536], default 0
	**/
	var generated_height : Int;
	/**
		Generated image type
		
		Type: enum in [‘BLANK’, ‘UV_GRID’, ‘COLOR_GRID’], default ‘BLANK’
	**/
	var generated_type : bpy.types.image.Image.Enum3;
	/**
		Generated image width
		
		Type: int in [1, 65536], default 0
	**/
	var generated_width : Int;
	/**
		True if the image data is loaded into memory
		
		Type: boolean, default False, (readonly)
	**/
	var has_data(default, never) : Bool;
	/**
		Image has changed and is not saved
		
		Type: boolean, default False, (readonly)
	**/
	var is_dirty(default, never) : Bool;
	/**
		True if this image is stored in float buffer
		
		Type: boolean, default False, (readonly)
	**/
	var is_float(default, never) : Bool;
	/**
		Image has more than one view
		
		Type: boolean, default False, (readonly)
	**/
	var is_multiview(default, never) : Bool;
	/**
		Image has left and right views
		
		Type: boolean, default False, (readonly)
	**/
	var is_stereo_3d(default, never) : Bool;
	/**
		First packed file of the image
		
		Type: PackedFile, (readonly)
	**/
	var packed_file(default, never) : bpy.types.packedfile.PackedFile;
	/**
		Collection of packed images
		
		Type: bpy_prop_collection of ImagePackedFile, (readonly)
	**/
	var packed_files(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Image pixels in floating point values
		
		Type: float in [-inf, inf], default 0.0
	**/
	var pixels : Float;
	/**
		Render slots of the image
		
		Type: RenderSlots bpy_prop_collection of RenderSlot, (readonly)
	**/
	var render_slots(default, never) : bpy.types.renderslots.RenderSlots;
	/**
		X/Y pixels per meter
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var resolution : Array<Float>;
	/**
		Width and height in pixels, zero when image data cant be loaded
		
		Type: int array of 2 items in [-inf, inf], default (0, 0), (readonly)
	**/
	var size(default, never) : Array<Int>;
	/**
		Where the image comes from
		
		Type: enum in [‘FILE’, ‘SEQUENCE’, ‘MOVIE’, ‘GENERATED’, ‘VIEWER’], default ‘FILE’
	**/
	var source : bpy.types.image.Image.Enum4;
	/**
		Settings for stereo 3d
		
		Type: Stereo3dFormat, (readonly, never None)
	**/
	var stereo_3d_format(default, never) : bpy.types.stereo3dformat.Stereo3dFormat;
	/**
		How to generate the image
		
		Type: enum in [‘IMAGE’, ‘MULTILAYER’, ‘UV_TEST’, ‘RENDER_RESULT’, ‘COMPOSITING’], default ‘IMAGE’, (readonly)
	**/
	var type(default, never) : bpy.types.image.Image.Enum5;
	/**
		Use the alpha channel information from the image or make image fully opaque
		
		Type: boolean, default False
	**/
	var use_alpha : Bool;
	/**
		Deinterlace movie file on load
		
		Type: boolean, default False
	**/
	var use_deinterlace : Bool;
	/**
		Generate floating point buffer
		
		Type: boolean, default False
	**/
	var use_generated_float : Bool;
	/**
		Use Multiple Views (when available)
		
		Type: boolean, default False
	**/
	var use_multiview : Bool;
	/**
		Apply render part of display transformation when displaying this image on the screen
		
		Type: boolean, default False
	**/
	var use_view_as_render : Bool;
	/**
		Mode to load image views
		
		Type: enum in [‘INDIVIDUAL’, ‘STEREO_3D’], default ‘INDIVIDUAL’
	**/
	var views_format : bpy.types.image.Image.Enum6;
	/**
		Save image to a specific path using a scenes render settings
		@param filepath Save path — string, (never None)
		@param scene Scene to take image parameters from — Scene, (optional)
	**/
	function save_render(filepath:String, scene:Dynamic):Void;
	/**
		Save image to its source path
	**/
	function save():Void;
	/**
		Pack an image as embedded data into the .blend file
		@param as_png as_png, Pack the image as PNG (needed for generated/dirty images) — boolean, (optional)
		@param data data, Raw data (bytes, exact content of the embedded file) — string, (optional, never None)
		@param data_len data_len, length of given data (mandatory if data is provided) — int in [0, inf], (optional)
	**/
	function pack(as_png:Bool, data:String, data_len:Int):Void;
	/**
		Save an image packed in the .blend file to disk
		@param method method, How to unpack — enum in ['USE_LOCAL', 'WRITE_LOCAL', 'USE_ORIGINAL', 'WRITE_ORIGINAL'], (optional)
	**/
	function unpack(method:bpy.types.image.Image.Enum7):Void;
	/**
		Reload the image from its source path
	**/
	function reload():Void;
	/**
		Update the display image from the floating point buffer
	**/
	function update():Void;
	/**
		Scale the image in pixels
		@param width Width — int in [1, 10000]
		@param height Height — int in [1, 10000]
	**/
	function scale(width:Int, height:Int):Void;
	/**
		Delay the image from being cleaned from the cache due inactivity
		@param frame Frame, Frame of image sequence or movie — int in [0, inf], (optional)
		@param filter Filter, The texture minifying function to use if the image wasn’t loaded — int in [-inf, inf], (optional)
		@param mag Magnification, The texture magnification function to use if the image wasn’t loaded — int in [-inf, inf], (optional)
		
		@returns int in [-inf, inf]
	**/
	function gl_touch(frame:Int, filter:Int, mag:Int):Int;
	/**
		Load the image into OpenGL graphics memory
		@param frame Frame, Frame of image sequence or movie — int in [0, inf], (optional)
		@param filter Filter, The texture minifying function — int in [-inf, inf], (optional)
		@param mag Magnification, The texture magnification function — int in [-inf, inf], (optional)
		
		@returns int in [-inf, inf]
	**/
	function gl_load(frame:Int, filter:Int, mag:Int):Int;
	/**
		Free the image from OpenGL graphics memory
	**/
	function gl_free():Void;
	/**
		Return the absolute path to the filepath of an image frame specified by the image user
		@param image_user Image user of the image to get filepath for — ImageUser, (optional)
		
		@returns string, (never None)
	**/
	function filepath_from_user(image_user:bpy.types.imageuser.ImageUser):String;
	/**
		Free the image buffers from memory
	**/
	function buffers_free():Void;
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
		Unique data-block ID name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Unique data-block ID name, including library one is any
		
		Type: string, default “”, (readonly, never None)
	**/
	var name_full(default, never) : String;
	/**
		Whether this ID is runtime-only, evaluated data-block, or actual data from .blend file
		
		Type: boolean, default False, (readonly)
	**/
	var is_evaluated(default, never) : Bool;
	/**
		Actual data-block from .blend file (Main database) that generated that evaluated one
		
		Type: ID, (readonly)
	**/
	var original(default, never) : bpy.types.id.ID;
	/**
		Number of times this data-block is referenced
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var users(default, never) : Int;
	/**
		Save this data-block even if it has no users
		
		Type: boolean, default False
	**/
	var use_fake_user : Bool;
	/**
		Tools can use this to tag data for their own purposes (initial state is undefined)
		
		Type: boolean, default False
	**/
	var tag : Bool;
	/**
		Is this ID block linked indirectly
		
		Type: boolean, default False, (readonly)
	**/
	var is_library_indirect(default, never) : Bool;
	/**
		Library file the data-block is linked from
		
		Type: Library, (readonly)
	**/
	var library(default, never) : bpy.types.library.Library;
	/**
		Static override data
		
		Type: IDOverrideStatic, (readonly)
	**/
	var override_static(default, never) : bpy.types.idoverridestatic.IDOverrideStatic;
	/**
		Preview image and icon of this data-block (None if not supported for this type of data)
		
		Type: ImagePreview, (readonly)
	**/
	var preview(default, never) : bpy.types.imagepreview.ImagePreview;
	/**
		Create a copy of this data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function copy():bpy.types.id.ID;
	/**
		Create an overridden local copy of this linked data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function override_create():bpy.types.id.ID;
	/**
		Clear the user count of a data-block so its not saved, on reload the data will be removed
		
		This function is for advanced use only, misuse can crash blender since the user
		count is used to prevent data being removed when it is used.
	**/
	function user_clear():Void;
	/**
		Replace all usage in the .blend file of this ID by new given one
		@param new_id New ID to use — ID, (never None)
	**/
	function user_remap(new_id:bpy.types.id.ID):Void;
	/**
		Make this datablock local, return local one (may be a copy of the original, in case it is also indirectly used)
		@param clear_proxy Whether to clear proxies (the default behavior, note that if object has to be duplicated to be made local, proxies are always cleared) — boolean, (optional)
		
		@returns ID
	**/
	function make_local(clear_proxy:Bool):bpy.types.id.ID;
	/**
		Count the number of times that ID uses/references given one
		@param id ID to count usages — ID, (never None)
		
		@returns int in [0, inf]
	**/
	function user_of_id(id:bpy.types.id.ID):Int;
	/**
		Create animation data to this ID, note that not all ID types support this
		
		@returns AnimData
	**/
	function animation_data_create():bpy.types.animdata.AnimData;
	/**
		Clear animation on this this ID
	**/
	function animation_data_clear():Void;
	/**
		Tag the ID to update its display data, e.g. when calling bpy.types.Scene.update
		@param refresh Type of updates to perform — enum set in {'OBJECT', 'DATA', 'TIME'}, (optional)
	**/
	function update_tag(refresh:Dynamic):Void;
}