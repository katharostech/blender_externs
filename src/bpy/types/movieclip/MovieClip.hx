package bpy.types.movieclip;
@:enum abstract Enum1(String) from String to String {
	var SEQUENCE : String = "SEQUENCE";
	var MOVIE : String = "MOVIE";
}/**
	MovieClip data-block referencing an external movie file
**/
@:native("bpy.types.MovieClip") extern class MovieClip {
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Input color space settings
		
		Type: ColorManagedInputColorspaceSettings, (readonly)
	**/
	var colorspace_settings(default, never) : bpy.types.colormanagedinputcolorspacesettings.ColorManagedInputColorspaceSettings;
	/**
		Display Aspect for this clip, does not affect rendering
		
		Type: float array of 2 items in [0.1, inf], default (0.0, 0.0)
	**/
	var display_aspect : Array<Float>;
	/**
		Filename of the movie or sequence file
		
		Type: string, default “”, (never None)
	**/
	var filepath : String;
	/**
		Detected frame rate of the movie clip in frames per second
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var fps(default, never) : Float;
	/**
		Detected duration of movie clip in frames
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var frame_duration(default, never) : Int;
	/**
		Offset of footage first frame relative to it’s file name (affects only how footage is loading, does not change data associated with a clip)
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_offset : Int;
	/**
		Global scene frame number at which this movie starts playing (affects all data associated with a clip)
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_start : Int;
	/**
		Grease pencil data for this movie clip
		
		Type: GreasePencil
	**/
	var grease_pencil : bpy.types.greasepencil.GreasePencil;
	/**
		
		
		Type: MovieClipProxy, (readonly)
	**/
	var proxy(default, never) : bpy.types.movieclipproxy.MovieClipProxy;
	/**
		Width and height in pixels, zero when image data cant be loaded
		
		Type: int array of 2 items in [-inf, inf], default (0, 0), (readonly)
	**/
	var size(default, never) : Array<Int>;
	/**
		Where the clip comes from
		
		Type: enum in [‘SEQUENCE’, ‘MOVIE’], default ‘SEQUENCE’, (readonly)
	**/
	var source(default, never) : bpy.types.movieclip.MovieClip.Enum1;
	/**
		
		
		Type: MovieTracking, (readonly)
	**/
	var tracking(default, never) : bpy.types.movietracking.MovieTracking;
	/**
		Use a preview proxy and/or timecode index for this clip
		
		Type: boolean, default False
	**/
	var use_proxy : Bool;
	/**
		Create proxy images in a custom directory (default is movie location)
		
		Type: boolean, default False
	**/
	var use_proxy_custom_directory : Bool;
	/**
		Retrieve metadata of the movie file
		
		@returns IDPropertyWrapPtr
	**/
	function metadata():bpy.types.idpropertywrapptr.IDPropertyWrapPtr;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:String):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:String):Dynamic;
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