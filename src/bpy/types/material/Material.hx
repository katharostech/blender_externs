package bpy.types.material;
@:enum abstract Enum1(String) from String to String {
	var OPAQUE : String = "OPAQUE";
	var ADD : String = "ADD";
	var MULTIPLY : String = "MULTIPLY";
	var CLIP : String = "CLIP";
	var HASHED : String = "HASHED";
	var BLEND : String = "BLEND";
}@:enum abstract Enum2(String) from String to String {
	var FLAT : String = "FLAT";
	var SPHERE : String = "SPHERE";
	var CUBE : String = "CUBE";
	var MONKEY : String = "MONKEY";
	var HAIR : String = "HAIR";
	var SPHERE_A : String = "SPHERE_A";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var OPAQUE : String = "OPAQUE";
	var CLIP : String = "CLIP";
	var HASHED : String = "HASHED";
}/**
	Material data-block to define the appearance of geometric objects for rendering
**/
@:native("bpy.types.Material") extern class Material {
	/**
		A pixel is rendered only if its alpha value is above this threshold
		
		Type: float in [0, 1], default 0.0
	**/
	var alpha_threshold : Float;
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Blend Mode for Transparent Faces
		
		Type: enum in [‘OPAQUE’, ‘ADD’, ‘MULTIPLY’, ‘CLIP’, ‘HASHED’, ‘BLEND’], default ‘OPAQUE’
	**/
	var blend_method : bpy.types.material.Material.Enum1;
	/**
		Cycles material settings
		
		Type: CyclesMaterialSettings, (readonly)
	**/
	var cycles(default, never) : bpy.types.cyclesmaterialsettings.CyclesMaterialSettings;
	/**
		Diffuse color of the material
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var diffuse_color : Array<Float>;
	/**
		Grease pencil color settings for material
		
		Type: MaterialGPencilStyle, (readonly)
	**/
	var grease_pencil(default, never) : bpy.types.materialgpencilstyle.MaterialGPencilStyle;
	/**
		True if this material has grease pencil data
		
		Type: boolean, default False, (readonly)
	**/
	var is_grease_pencil(default, never) : Bool;
	/**
		Line color used for Freestyle line rendering
		
		Type: float array of 4 items in [0, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var line_color : Array<Float>;
	/**
		The line color of a higher priority is used at material boundaries
		
		Type: int in [0, 32767], default 0
	**/
	var line_priority : Int;
	/**
		Amount of mirror reflection for raytrace
		
		Type: float in [0, 1], default 0.0
	**/
	var metallic : Float;
	/**
		Node tree for node based materials
		
		Type: NodeTree, (readonly)
	**/
	var node_tree(default, never) : bpy.types.nodetree.NodeTree;
	/**
		Index of active texture paint slot
		
		Type: int in [0, 32767], default 0
	**/
	var paint_active_slot : Int;
	/**
		Index of clone texture paint slot
		
		Type: int in [0, 32767], default 0
	**/
	var paint_clone_slot : Int;
	/**
		Index number for the “Material Index” render pass
		
		Type: int in [0, 32767], default 0
	**/
	var pass_index : Int;
	/**
		Type of preview render
		
		Type: enum in [‘FLAT’, ‘SPHERE’, ‘CUBE’, ‘MONKEY’, ‘HAIR’, ‘SPHERE_A’], default ‘FLAT’
	**/
	var preview_render_type : bpy.types.material.Material.Enum2;
	/**
		Approximate the thickness of the object to compute two refraction event (0 is disabled)
		
		Type: float in [0, inf], default 0.0
	**/
	var refraction_depth : Float;
	/**
		Roughness of the material
		
		Type: float in [0, 1], default 0.25
	**/
	var roughness : Float;
	/**
		Limit transparency to a single layer (avoids transparency sorting problems)
		
		Type: boolean, default False
	**/
	var show_transparent_backside : Bool;
	/**
		Specular color of the material
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var specular_color : Array<Float>;
	/**
		How intense (bright) the specular reflection is
		
		Type: float in [0, 1], default 0.5
	**/
	var specular_intensity : Float;
	/**
		Texture images used for texture painting
		
		Type: bpy_prop_collection of Image, (readonly)
	**/
	var texture_paint_images(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Texture slots defining the mapping and influence of textures
		
		Type: bpy_prop_collection of TexPaintSlot, (readonly)
	**/
	var texture_paint_slots(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Shadow method for transparent material
		
		Type: enum in [‘NONE’, ‘OPAQUE’, ‘CLIP’, ‘HASHED’], default ‘NONE’
	**/
	var transparent_shadow_method : bpy.types.material.Material.Enum3;
	/**
		Use shader nodes to render the material
		
		Type: boolean, default False
	**/
	var use_nodes : Bool;
	/**
		Use raytraced screen space refractions
		
		Type: boolean, default False
	**/
	var use_screen_refraction : Bool;
	/**
		Add translucency effect to subsurface
		
		Type: boolean, default False
	**/
	var use_sss_translucency : Bool;
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