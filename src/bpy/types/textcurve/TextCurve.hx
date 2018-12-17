package bpy.types.textcurve;
@:enum abstract Enum1(String) from String to String {
	var LEFT : String = "LEFT";
	var CENTER : String = "CENTER";
	var RIGHT : String = "RIGHT";
	var JUSTIFY : String = "JUSTIFY";
	var FLUSH : String = "FLUSH";
}@:enum abstract Enum2(String) from String to String {
	var TOP_BASELINE : String = "TOP_BASELINE";
	var TOP : String = "TOP";
	var CENTER : String = "CENTER";
	var BOTTOM : String = "BOTTOM";
	var BOTTOM_BASELINE : String = "BOTTOM_BASELINE";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var SCALE : String = "SCALE";
	var TRUNCATE : String = "TRUNCATE";
}/**
	Curve data-block used for storing text
**/
@:native("bpy.types.TextCurve") extern class TextCurve {
	/**
		
		
		Type: int in [-inf, inf], default 0
	**/
	var active_textbox : Int;
	/**
		Text horizontal align from the object center
		
		Type: enum in [‘LEFT’, ‘CENTER’, ‘RIGHT’, ‘JUSTIFY’, ‘FLUSH’], default ‘LEFT’
	**/
	var align_x : bpy.types.textcurve.TextCurve.Enum1;
	/**
		Text vertical align from the object center
		
		Type: enum in [‘TOP_BASELINE’, ‘TOP’, ‘CENTER’, ‘BOTTOM’, ‘BOTTOM_BASELINE’], default ‘TOP_BASELINE’
	**/
	var align_y : bpy.types.textcurve.TextCurve.Enum2;
	/**
		Content of this text object
		
		Type: string, default “”, (never None)
	**/
	var body : String;
	/**
		Stores the style of each character
		
		Type: bpy_prop_collection of TextCharacterFormat, (readonly)
	**/
	var body_format(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Editing settings character formatting
		
		Type: TextCharacterFormat, (readonly)
	**/
	var edit_format(default, never) : bpy.types.textcharacterformat.TextCharacterFormat;
	/**
		Use Objects as font characters (give font objects a common name followed by the character they represent, eg. ‘family-a’, ‘family-b’, etc, set this setting to ‘family-‘, and turn on Vertex Duplication)
		
		Type: string, default “”, (never None)
	**/
	var family : String;
	/**
		Curve deforming text object
		
		Type: Object
	**/
	var follow_curve : bpy.types.object.Object;
	/**
		
		
		Type: VectorFont
	**/
	var font : bpy.types.vectorfont.VectorFont;
	/**
		
		
		Type: VectorFont
	**/
	var font_bold : bpy.types.vectorfont.VectorFont;
	/**
		
		
		Type: VectorFont
	**/
	var font_bold_italic : bpy.types.vectorfont.VectorFont;
	/**
		
		
		Type: VectorFont
	**/
	var font_italic : bpy.types.vectorfont.VectorFont;
	/**
		Horizontal offset from the object origin
		
		Type: float in [-inf, inf], default 0.0
	**/
	var offset_x : Float;
	/**
		Vertical offset from the object origin
		
		Type: float in [-inf, inf], default 0.0
	**/
	var offset_y : Float;
	/**
		Handle the text behaviour when it doesn’t fit in the text boxes
		
		Type: enum in [‘NONE’, ‘SCALE’, ‘TRUNCATE’], default ‘NONE’
	**/
	var overflow : bpy.types.textcurve.TextCurve.Enum3;
	/**
		Italic angle of the characters
		
		Type: float in [-1, 1], default 0.0
	**/
	var shear : Float;
	/**
		
		
		Type: float in [0.0001, 10000], default 0.0
	**/
	var size : Float;
	/**
		Scale of small capitals
		
		Type: float in [-inf, inf], default 0.0
	**/
	var small_caps_scale : Float;
	/**
		
		
		Type: float in [0, 10], default 0.0
	**/
	var space_character : Float;
	/**
		
		
		Type: float in [0, 10], default 0.0
	**/
	var space_line : Float;
	/**
		
		
		Type: float in [0, 10], default 0.0
	**/
	var space_word : Float;
	/**
		
		
		Type: bpy_prop_collection of TextBox, (readonly)
	**/
	var text_boxes(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: float in [0, 0.8], default 0.0
	**/
	var underline_height : Float;
	/**
		Vertical position of underline
		
		Type: float in [-0.2, 0.8], default 0.0
	**/
	var underline_position : Float;
	/**
		Don’t fill polygons while editing
		
		Type: boolean, default False
	**/
	var use_fast_edit : Bool;
	/**
		Uses the UV values as Generated textured coordinates
		
		Type: boolean, default False
	**/
	var use_uv_as_generated : Bool;
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
		
		
		Type: Key, (readonly)
	**/
	var shape_keys(default, never) : bpy.types.key.Key;
	/**
		Collection of splines in this curve data object
		
		Type: CurveSplines bpy_prop_collection of Spline, (readonly)
	**/
	var splines(default, never) : bpy.types.curvesplines.CurveSplines;
	/**
		The number of frames that are needed to traverse the path, defining the maximum value for the ‘Evaluation Time’ setting
		
		Type: int in [1, 1048574], default 0
	**/
	var path_duration : Int;
	/**
		Enable the curve to become a translation path
		
		Type: boolean, default False
	**/
	var use_path : Bool;
	/**
		Make curve path children to rotate along the path
		
		Type: boolean, default False
	**/
	var use_path_follow : Bool;
	/**
		Option for curve-deform: make deformed child to stretch along entire path
		
		Type: boolean, default False
	**/
	var use_stretch : Bool;
	/**
		Option for curve-deform: Use the mesh bounds to clamp the deformation
		
		Type: boolean, default False
	**/
	var use_deform_bounds : Bool;
	/**
		Option for paths and curve-deform: apply the curve radius with path following it and deforming
		
		Type: boolean, default False
	**/
	var use_radius : Bool;
	/**
		Bevel resolution when depth is non-zero and no specific bevel object has been defined
		
		Type: int in [0, 32], default 0
	**/
	var bevel_resolution : Int;
	/**
		Offset the curve to adjust the width of a text
		
		Type: float in [-inf, inf], default 0.0
	**/
	var offset : Float;
	/**
		Amount of curve extrusion when not using a bevel object
		
		Type: float in [0, inf], default 0.0
	**/
	var extrude : Float;
	/**
		Bevel depth when not using a bevel object
		
		Type: float in [-inf, inf], default 0.0
	**/
	var bevel_depth : Float;
	/**
		Surface resolution in U direction
		
		Type: int in [1, 1024], default 0
	**/
	var resolution_u : Int;
	/**
		Surface resolution in V direction
		
		Type: int in [1, 1024], default 0
	**/
	var resolution_v : Int;
	/**
		Surface resolution in U direction used while rendering (zero uses preview resolution)
		
		Type: int in [0, 1024], default 0
	**/
	var render_resolution_u : Int;
	/**
		Surface resolution in V direction used while rendering (zero uses preview resolution)
		
		Type: int in [0, 1024], default 0
	**/
	var render_resolution_v : Int;
	/**
		Parametric position along the length of the curve that Objects ‘following’ it should be at (position is evaluated by dividing by the ‘Path Length’ value)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var eval_time : Float;
	/**
		Curve object name that defines the bevel shape
		
		Type: Object
	**/
	var bevel_object : bpy.types.object.Object;
	/**
		Curve object name that defines the taper (width)
		
		Type: Object
	**/
	var taper_object : bpy.types.object.Object;
	/**
		Select 2D or 3D curve type
		
		Type: enum in [‘2D’, ‘3D’], default ‘2D’
	**/
	var dimensions : bpy.types.curve.Curve.Enum3;
	/**
		Mode of filling curve
		
		Type: enum in [‘FULL’, ‘BACK’, ‘FRONT’, ‘HALF’], default ‘FULL’
	**/
	var fill_mode : bpy.types.curve.Curve.Enum4;
	/**
		The type of tilt calculation for 3D Curves
		
		Type: enum in [‘Z_UP’, ‘MINIMUM’, ‘TANGENT’], default ‘Z_UP’
	**/
	var twist_mode : bpy.types.curve.Curve.Enum5;
	/**
		Determines how the start bevel factor is mapped to a spline
		
		Type: enum in [‘RESOLUTION’, ‘SEGMENTS’, ‘SPLINE’], default ‘RESOLUTION’
	**/
	var bevel_factor_mapping_start : bpy.types.curve.Curve.Enum2;
	/**
		Determines how the end bevel factor is mapped to a spline
		
		Type: enum in [‘RESOLUTION’, ‘SEGMENTS’, ‘SPLINE’], default ‘RESOLUTION’
	**/
	var bevel_factor_mapping_end : bpy.types.curve.Curve.Enum1;
	/**
		Smoothing iteration for tangents
		
		Type: float in [-inf, inf], default 0.0
	**/
	var twist_smooth : Float;
	/**
		Fill curve after applying shape keys and all modifiers
		
		Type: boolean, default False
	**/
	var use_fill_deform : Bool;
	/**
		Fill caps for beveled curves
		
		Type: boolean, default False
	**/
	var use_fill_caps : Bool;
	/**
		Map effect of taper object on actually beveled curve
		
		Type: boolean, default False
	**/
	var use_map_taper : Bool;
	/**
		Adjust active object’s texture space automatically when transforming object
		
		Type: boolean, default False
	**/
	var use_auto_texspace : Bool;
	/**
		Texture space location
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var texspace_location : Array<Float>;
	/**
		Texture space size
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var texspace_size : Array<Float>;
	/**
		Uses the UV values as Generated textured coordinates
		
		Type: boolean, default False
	**/
	var use_uv_as_generated : Bool;
	/**
		
		
		Type: IDMaterials bpy_prop_collection of Material, (readonly)
	**/
	var materials(default, never) : bpy.types.idmaterials.IDMaterials;
	/**
		Factor that defines from where beveling of spline happens (0=from the very beginning, 1=from the very end)
		
		Type: float in [0, 1], default 0.0
	**/
	var bevel_factor_start : Float;
	/**
		Factor that defines to where beveling of spline happens (0=to the very beginning, 1=to the very end)
		
		Type: float in [0, 1], default 0.0
	**/
	var bevel_factor_end : Float;
	/**
		True when used in editmode
		
		Type: boolean, default False, (readonly)
	**/
	var is_editmode(default, never) : Bool;
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Cycles mesh settings
		
		Type: CyclesMeshSettings, (readonly)
	**/
	var cycles(default, never) : bpy.types.cyclesmeshsettings.CyclesMeshSettings;
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
		Transform curve by a matrix
		@param matrix Matrix — float multi-dimensional array of 4 * 4 items in [-inf, inf]
		@param shape_keys Transform Shape Keys — boolean, (optional)
	**/
	function transform(matrix:Array<Float>, shape_keys:Bool):Void;
	/**
		Validate material indices of splines or letters, return True when the curve has had invalid indices corrected (to default 0)
		
		@returns boolean
	**/
	function validate_material_indices():Bool;
	/**
		update_gpu_tag
	**/
	function update_gpu_tag():Void;
}