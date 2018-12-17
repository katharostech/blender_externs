package bpy.types.blendtexture;
@:enum abstract Enum1(String) from String to String {
	var LINEAR : String = "LINEAR";
	var QUADRATIC : String = "QUADRATIC";
	var EASING : String = "EASING";
	var DIAGONAL : String = "DIAGONAL";
	var SPHERICAL : String = "SPHERICAL";
	var QUADRATIC_SPHERE : String = "QUADRATIC_SPHERE";
	var RADIAL : String = "RADIAL";
}@:enum abstract Enum2(String) from String to String {
	var HORIZONTAL : String = "HORIZONTAL";
	var VERTICAL : String = "VERTICAL";
}/**
	Procedural color blending texture
**/
@:native("bpy.types.BlendTexture") extern class BlendTexture {
	/**
		Style of the color blending
		
		Type: enum in [‘LINEAR’, ‘QUADRATIC’, ‘EASING’, ‘DIAGONAL’, ‘SPHERICAL’, ‘QUADRATIC_SPHERE’, ‘RADIAL’], default ‘LINEAR’
	**/
	var progression : bpy.types.blendtexture.BlendTexture.Enum1;
	/**
		Flip the texture’s X and Y axis
		
		Type: enum in [‘HORIZONTAL’, ‘VERTICAL’], default ‘HORIZONTAL’
	**/
	var use_flip_axis : bpy.types.blendtexture.BlendTexture.Enum2;
	/**
		Materials that use this texture
		(readonly)
	**/
	var users_material(default, never) : Dynamic;
	/**
		Object modifiers that use this texture
		(readonly)
	**/
	var users_object_modifier(default, never) : Dynamic;
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
		
		
		Type: enum in [‘NONE’, ‘BLEND’, ‘CLOUDS’, ‘DISTORTED_NOISE’, ‘IMAGE’, ‘MAGIC’, ‘MARBLE’, ‘MUSGRAVE’, ‘NOISE’, ‘STUCCI’, ‘VORONOI’, ‘WOOD’], default ‘NONE’
	**/
	var type : bpy.types.texture.Texture.Enum1;
	/**
		Set negative texture RGB and intensity values to zero, for some uses like displacement this option can be disabled to get the full range
		
		Type: boolean, default False
	**/
	var use_clamp : Bool;
	/**
		Toggle color ramp operations
		
		Type: boolean, default False
	**/
	var use_color_ramp : Bool;
	/**
		
		
		Type: ColorRamp, (readonly)
	**/
	var color_ramp(default, never) : bpy.types.colorramp.ColorRamp;
	/**
		Adjust the brightness of the texture
		
		Type: float in [0, 2], default 0.0
	**/
	var intensity : Float;
	/**
		Adjust the contrast of the texture
		
		Type: float in [0, 5], default 0.0
	**/
	var contrast : Float;
	/**
		Adjust the saturation of colors in the texture
		
		Type: float in [0, 2], default 0.0
	**/
	var saturation : Float;
	/**
		
		
		Type: float in [0, 2], default 0.0
	**/
	var factor_red : Float;
	/**
		
		
		Type: float in [0, 2], default 0.0
	**/
	var factor_green : Float;
	/**
		
		
		Type: float in [0, 2], default 0.0
	**/
	var factor_blue : Float;
	/**
		Show Alpha in Preview Render
		
		Type: boolean, default False
	**/
	var use_preview_alpha : Bool;
	/**
		Make this a node-based texture
		
		Type: boolean, default False
	**/
	var use_nodes : Bool;
	/**
		Node tree for node-based textures
		
		Type: NodeTree, (readonly)
	**/
	var node_tree(default, never) : bpy.types.nodetree.NodeTree;
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Materials that use this texture
		(readonly)
	**/
	var users_material(default, never) : Dynamic;
	/**
		Object modifiers that use this texture
		(readonly)
	**/
	var users_object_modifier(default, never) : Dynamic;
	/**
		Materials that use this texture
		(readonly)
	**/
	var users_material(default, never) : Dynamic;
	/**
		Object modifiers that use this texture
		(readonly)
	**/
	var users_object_modifier(default, never) : Dynamic;
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
	/**
		Evaluate the texture at the coordinates given
		
		@returns float array of 4 items in [-inf, inf]
	**/
	function evaluate(value:Dynamic):Array<Float>;
}