package bpy.types.lightprobe;
@:enum abstract Enum1(String) from String to String {
	var ELIPSOID : String = "ELIPSOID";
	var BOX : String = "BOX";
}@:enum abstract Enum2(String) from String to String {
	var ELIPSOID : String = "ELIPSOID";
	var BOX : String = "BOX";
}@:enum abstract Enum3(String) from String to String {
	var CUBEMAP : String = "CUBEMAP";
	var PLANAR : String = "PLANAR";
	var GRID : String = "GRID";
}/**
	Light Probe data-block for lighting capture objects
**/
@:native("bpy.types.LightProbe") extern class LightProbe {
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Probe clip end, beyond which objects will not appear in reflections
		
		Type: float in [1e-06, inf], default 40.0
	**/
	var clip_end : Float;
	/**
		Probe clip start, below which objects will not appear in reflections
		
		Type: float in [1e-06, inf], default 0.8
	**/
	var clip_start : Float;
	/**
		Control how fast the probe influence decreases
		
		Type: float in [0, 1], default 0.2
	**/
	var falloff : Float;
	/**
		Number of sample along the x axis of the volume
		
		Type: int in [1, 256], default 4
	**/
	var grid_resolution_x : Int;
	/**
		Number of sample along the y axis of the volume
		
		Type: int in [1, 256], default 4
	**/
	var grid_resolution_y : Int;
	/**
		Number of sample along the z axis of the volume
		
		Type: int in [1, 256], default 4
	**/
	var grid_resolution_z : Int;
	/**
		Influence distance of the probe
		
		Type: float in [0, inf], default 2.5
	**/
	var influence_distance : Float;
	/**
		Type of influence volume
		
		Type: enum in [‘ELIPSOID’, ‘BOX’], default ‘ELIPSOID’
	**/
	var influence_type : bpy.types.lightprobe.LightProbe.Enum1;
	/**
		Modify the intensity of the lighting captured by this probe
		
		Type: float in [0, inf], default 1.0
	**/
	var intensity : Float;
	/**
		Invert visibility collection
		
		Type: boolean, default False
	**/
	var invert_visibility_collection : Bool;
	/**
		Lowest corner of the parallax bounding box
		
		Type: float in [0, inf], default 2.5
	**/
	var parallax_distance : Float;
	/**
		Type of parallax volume
		
		Type: enum in [‘ELIPSOID’, ‘BOX’], default ‘ELIPSOID’
	**/
	var parallax_type : bpy.types.lightprobe.LightProbe.Enum2;
	/**
		Show the clipping distances in the 3D view
		
		Type: boolean, default False
	**/
	var show_clip : Bool;
	/**
		Show captured lighting data into the 3D view for debugging purpose
		
		Type: boolean, default False
	**/
	var show_data : Bool;
	/**
		Show the influence volume in the 3D view
		
		Type: boolean, default False
	**/
	var show_influence : Bool;
	/**
		Show the parallax correction volume in the 3D view
		
		Type: boolean, default False
	**/
	var show_parallax : Bool;
	/**
		Type of light probe
		
		Type: enum in [‘CUBEMAP’, ‘PLANAR’, ‘GRID’], default ‘CUBEMAP’, (readonly)
	**/
	var type(default, never) : bpy.types.lightprobe.LightProbe.Enum3;
	/**
		Enable custom settings for the parallax correction volume
		
		Type: boolean, default False
	**/
	var use_custom_parallax : Bool;
	/**
		Bias for reducing light-bleed on variance shadow maps
		
		Type: float in [0, 1], default 0.0
	**/
	var visibility_bleed_bias : Float;
	/**
		Filter size of the visibilty blur
		
		Type: float in [0, 1], default 0.2
	**/
	var visibility_blur : Float;
	/**
		Bias for reducing self shadowing
		
		Type: float in [0.001, 9999], default 1.0
	**/
	var visibility_buffer_bias : Float;
	/**
		Restrict objects visible for this probe
		
		Type: Collection
	**/
	var visibility_collection : bpy.types.collection.Collection;
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