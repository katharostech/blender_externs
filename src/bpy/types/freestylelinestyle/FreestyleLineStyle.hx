package bpy.types.freestylelinestyle;
@:enum abstract Enum1(String) from String to String {
	var BUTT : String = "BUTT";
	var ROUND : String = "ROUND";
	var SQUARE : String = "SQUARE";
}@:enum abstract Enum2(String) from String to String {
	var PLAIN : String = "PLAIN";
	var SKETCHY : String = "SKETCHY";
}@:enum abstract Enum3(String) from String to String {
	var MEAN : String = "MEAN";
	var MIN : String = "MIN";
	var MAX : String = "MAX";
	var FIRST : String = "FIRST";
	var LAST : String = "LAST";
}@:enum abstract Enum4(String) from String to String {
	var STROKES : String = "STROKES";
	var COLOR : String = "COLOR";
	var ALPHA : String = "ALPHA";
	var THICKNESS : String = "THICKNESS";
	var GEOMETRY : String = "GEOMETRY";
	var TEXTURE : String = "TEXTURE";
}@:enum abstract Enum5(String) from String to String {
	var DISTANCE_FROM_CAMERA : String = "DISTANCE_FROM_CAMERA";
	var 2D_LENGTH : String = "2D_LENGTH";
	var PROJECTED_X : String = "PROJECTED_X";
	var PROJECTED_Y : String = "PROJECTED_Y";
}@:enum abstract Enum6(String) from String to String {
	var DEFAULT : String = "DEFAULT";
	var REVERSE : String = "REVERSE";
}@:enum abstract Enum7(String) from String to String {
	var CENTER : String = "CENTER";
	var INSIDE : String = "INSIDE";
	var OUTSIDE : String = "OUTSIDE";
	var RELATIVE : String = "RELATIVE";
}/**
	Freestyle line style, reusable by multiple line sets
**/
@:pythonImport("bpy.types.FreestyleLineStyle") extern class FreestyleLineStyle {
	/**
		Active texture slot being displayed
		
		Type: Texture
	**/
	var active_texture : bpy.types.texture.Texture;
	/**
		Index of active texture slot
		
		Type: int in [0, 17], default 0
	**/
	var active_texture_index : Int;
	/**
		Base alpha transparency, possibly modified by alpha transparency modifiers
		
		Type: float in [0, 1], default 0.0
	**/
	var alpha : Float;
	/**
		List of alpha transparency modifiers
		
		Type: LineStyleAlphaModifiers bpy_prop_collection of LineStyleAlphaModifier, (readonly)
	**/
	var alpha_modifiers(default, never) : bpy.types.linestylealphamodifiers.LineStyleAlphaModifiers;
	/**
		Maximum 2D angle for splitting chains
		
		Type: float in [0, 3.14159], default 0.0
	**/
	var angle_max : Float;
	/**
		Minimum 2D angle for splitting chains
		
		Type: float in [0, 3.14159], default 0.0
	**/
	var angle_min : Float;
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Select the shape of both ends of strokes
		
		Type: enum in [‘BUTT’, ‘ROUND’, ‘SQUARE’], default ‘BUTT’
	**/
	var caps : bpy.types.freestylelinestyle.FreestyleLineStyle.Enum1;
	/**
		Chain count for the selection of first N chains
		
		Type: int in [0, inf], default 0
	**/
	var chain_count : Int;
	/**
		Select the way how feature edges are jointed to form chains
		
		Type: enum in [‘PLAIN’, ‘SKETCHY’], default ‘PLAIN’
	**/
	var chaining : bpy.types.freestylelinestyle.FreestyleLineStyle.Enum2;
	/**
		Base line color, possibly modified by line color modifiers
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		List of line color modifiers
		
		Type: LineStyleColorModifiers bpy_prop_collection of LineStyleColorModifier, (readonly)
	**/
	var color_modifiers(default, never) : bpy.types.linestylecolormodifiers.LineStyleColorModifiers;
	/**
		Length of the 1st dash for dashed lines
		
		Type: int in [0, 65535], default 0
	**/
	var dash1 : Int;
	/**
		Length of the 2nd dash for dashed lines
		
		Type: int in [0, 65535], default 0
	**/
	var dash2 : Int;
	/**
		Length of the 3rd dash for dashed lines
		
		Type: int in [0, 65535], default 0
	**/
	var dash3 : Int;
	/**
		Length of the 1st gap for dashed lines
		
		Type: int in [0, 65535], default 0
	**/
	var gap1 : Int;
	/**
		Length of the 2nd gap for dashed lines
		
		Type: int in [0, 65535], default 0
	**/
	var gap2 : Int;
	/**
		Length of the 3rd gap for dashed lines
		
		Type: int in [0, 65535], default 0
	**/
	var gap3 : Int;
	/**
		List of stroke geometry modifiers
		
		Type: LineStyleGeometryModifiers bpy_prop_collection of LineStyleGeometryModifier, (readonly)
	**/
	var geometry_modifiers(default, never) : bpy.types.linestylegeometrymodifiers.LineStyleGeometryModifiers;
	/**
		Select the way how the sort key is computed for each chain
		
		Type: enum in [‘MEAN’, ‘MIN’, ‘MAX’, ‘FIRST’, ‘LAST’], default ‘MEAN’
	**/
	var integration_type : bpy.types.freestylelinestyle.FreestyleLineStyle.Enum3;
	/**
		Maximum curvilinear 2D length for the selection of chains
		
		Type: float in [0, 10000], default 0.0
	**/
	var length_max : Float;
	/**
		Minimum curvilinear 2D length for the selection of chains
		
		Type: float in [0, 10000], default 0.0
	**/
	var length_min : Float;
	/**
		If true, chains of feature edges are split at material boundaries
		
		Type: boolean, default False
	**/
	var material_boundary : Bool;
	/**
		Node tree for node-based shaders
		
		Type: NodeTree, (readonly)
	**/
	var node_tree(default, never) : bpy.types.nodetree.NodeTree;
	/**
		Select the property panel to be shown
		
		Type: enum in [‘STROKES’, ‘COLOR’, ‘ALPHA’, ‘THICKNESS’, ‘GEOMETRY’, ‘TEXTURE’], default ‘STROKES’
	**/
	var panel : bpy.types.freestylelinestyle.FreestyleLineStyle.Enum4;
	/**
		Number of rounds in a sketchy multiple touch
		
		Type: int in [1, 1000], default 0
	**/
	var rounds : Int;
	/**
		Select the sort key to determine the stacking order of chains
		
		Type: enum in [‘DISTANCE_FROM_CAMERA’, ‘2D_LENGTH’, ‘PROJECTED_X’, ‘PROJECTED_Y’], default ‘DISTANCE_FROM_CAMERA’
	**/
	var sort_key : bpy.types.freestylelinestyle.FreestyleLineStyle.Enum5;
	/**
		Select the sort order
		
		Type: enum in [‘DEFAULT’, ‘REVERSE’], default ‘DEFAULT’
	**/
	var sort_order : bpy.types.freestylelinestyle.FreestyleLineStyle.Enum6;
	/**
		Length of the 1st dash for splitting
		
		Type: int in [0, 65535], default 0
	**/
	var split_dash1 : Int;
	/**
		Length of the 2nd dash for splitting
		
		Type: int in [0, 65535], default 0
	**/
	var split_dash2 : Int;
	/**
		Length of the 3rd dash for splitting
		
		Type: int in [0, 65535], default 0
	**/
	var split_dash3 : Int;
	/**
		Length of the 1st gap for splitting
		
		Type: int in [0, 65535], default 0
	**/
	var split_gap1 : Int;
	/**
		Length of the 2nd gap for splitting
		
		Type: int in [0, 65535], default 0
	**/
	var split_gap2 : Int;
	/**
		Length of the 3rd gap for splitting
		
		Type: int in [0, 65535], default 0
	**/
	var split_gap3 : Int;
	/**
		Curvilinear 2D length for chain splitting
		
		Type: float in [0, 10000], default 0.0
	**/
	var split_length : Float;
	/**
		Texture slots defining the mapping and influence of textures
		
		Type: LineStyleTextureSlots bpy_prop_collection of LineStyleTextureSlot, (readonly)
	**/
	var texture_slots(default, never) : bpy.types.linestyletextureslots.LineStyleTextureSlots;
	/**
		Spacing for textures along stroke length
		
		Type: float in [0.01, 100], default 0.0
	**/
	var texture_spacing : Float;
	/**
		Base line thickness, possibly modified by line thickness modifiers
		
		Type: float in [0, 10000], default 0.0
	**/
	var thickness : Float;
	/**
		List of line thickness modifiers
		
		Type: LineStyleThicknessModifiers bpy_prop_collection of LineStyleThicknessModifier, (readonly)
	**/
	var thickness_modifiers(default, never) : bpy.types.linestylethicknessmodifiers.LineStyleThicknessModifiers;
	/**
		Thickness position of silhouettes and border edges (applicable when plain chaining is used with the Same Object option)
		
		Type: enum in [‘CENTER’, ‘INSIDE’, ‘OUTSIDE’, ‘RELATIVE’], default ‘CENTER’
	**/
	var thickness_position : bpy.types.freestylelinestyle.FreestyleLineStyle.Enum7;
	/**
		A number between 0 (inside) and 1 (outside) specifying the relative position of stroke thickness
		
		Type: float in [0, 1], default 0.0
	**/
	var thickness_ratio : Float;
	/**
		Split chains at points with angles larger than the maximum 2D angle
		
		Type: boolean, default False
	**/
	var use_angle_max : Bool;
	/**
		Split chains at points with angles smaller than the minimum 2D angle
		
		Type: boolean, default False
	**/
	var use_angle_min : Bool;
	/**
		Enable the selection of first N chains
		
		Type: boolean, default False
	**/
	var use_chain_count : Bool;
	/**
		Enable chaining of feature edges
		
		Type: boolean, default False
	**/
	var use_chaining : Bool;
	/**
		Enable or disable dashed line
		
		Type: boolean, default False
	**/
	var use_dashed_line : Bool;
	/**
		Enable the selection of chains by a maximum 2D length
		
		Type: boolean, default False
	**/
	var use_length_max : Bool;
	/**
		Enable the selection of chains by a minimum 2D length
		
		Type: boolean, default False
	**/
	var use_length_min : Bool;
	/**
		Use shader nodes for the line style
		
		Type: boolean, default False
	**/
	var use_nodes : Bool;
	/**
		If true, only feature edges of the same object are joined
		
		Type: boolean, default False
	**/
	var use_same_object : Bool;
	/**
		Arrange the stacking order of strokes
		
		Type: boolean, default False
	**/
	var use_sorting : Bool;
	/**
		Enable chain splitting by curvilinear 2D length
		
		Type: boolean, default False
	**/
	var use_split_length : Bool;
	/**
		Enable chain splitting by dashed line patterns
		
		Type: boolean, default False
	**/
	var use_split_pattern : Bool;
	/**
		Enable or disable textured strokes
		
		Type: boolean, default False
	**/
	var use_texture : Bool;
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