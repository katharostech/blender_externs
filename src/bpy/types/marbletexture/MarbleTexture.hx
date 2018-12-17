package bpy.types.marbletexture;
@:enum abstract Enum1(String) from String to String {
	var SOFT : String = "SOFT";
	var SHARP : String = "SHARP";
	var SHARPER : String = "SHARPER";
}@:enum abstract Enum2(String) from String to String {
	var BLENDER_ORIGINAL : String = "BLENDER_ORIGINAL";
	var ORIGINAL_PERLIN : String = "ORIGINAL_PERLIN";
	var IMPROVED_PERLIN : String = "IMPROVED_PERLIN";
	var pyVORONOI_F1 : String = "VORONOI_F1";
	var pyVORONOI_F2 : String = "VORONOI_F2";
	var pyVORONOI_F3 : String = "VORONOI_F3";
	var pyVORONOI_F4 : String = "VORONOI_F4";
	var pyVORONOI_F2_F1 : String = "VORONOI_F2_F1";
	var VORONOI_CRACKLE : String = "VORONOI_CRACKLE";
	var CELL_NOISE : String = "CELL_NOISE";
}@:enum abstract Enum3(String) from String to String {
	var SIN : String = "SIN";
	var SAW : String = "SAW";
	var TRI : String = "TRI";
}@:enum abstract Enum4(String) from String to String {
	var SOFT_NOISE : String = "SOFT_NOISE";
	var HARD_NOISE : String = "HARD_NOISE";
}/**
	Procedural noise texture
**/
@:native("bpy.types.MarbleTexture") extern class MarbleTexture {
	/**
		
		
		Type: enum in [‘SOFT’, ‘SHARP’, ‘SHARPER’], default ‘SOFT’
	**/
	var marble_type : bpy.types.marbletexture.MarbleTexture.Enum1;
	/**
		Size of derivative offset used for calculating normal
		
		Type: float in [0.001, 0.1], default 0.0
	**/
	var nabla : Float;
	/**
		Noise basis used for turbulence
		
		Type: enum in [‘BLENDER_ORIGINAL’, ‘ORIGINAL_PERLIN’, ‘IMPROVED_PERLIN’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2_F1’, ‘VORONOI_CRACKLE’, ‘CELL_NOISE’], default ‘BLENDER_ORIGINAL’
	**/
	var noise_basis : bpy.types.marbletexture.MarbleTexture.Enum2;
	/**
		
		
		Type: enum in [‘SIN’, ‘SAW’, ‘TRI’], default ‘SIN’
	**/
	var pynoise_basis_2 : bpy.types.marbletexture.MarbleTexture.Enum3;
	/**
		Depth of the cloud calculation
		
		Type: int in [0, 30], default 0
	**/
	var noise_depth : Int;
	/**
		Scaling for noise input
		
		Type: float in [0.0001, inf], default 0.0
	**/
	var noise_scale : Float;
	/**
		
		
		Type: enum in [‘SOFT_NOISE’, ‘HARD_NOISE’], default ‘SOFT_NOISE’
	**/
	var noise_type : bpy.types.marbletexture.MarbleTexture.Enum4;
	/**
		Turbulence of the bandnoise and ringnoise types
		
		Type: float in [0.0001, inf], default 0.0
	**/
	var turbulence : Float;
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