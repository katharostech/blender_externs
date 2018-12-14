package bpy.types.curve;
@:enum abstract Enum1(String) from String to String {
	var RESOLUTION : String = "RESOLUTION";
	var SEGMENTS : String = "SEGMENTS";
	var SPLINE : String = "SPLINE";
}@:enum abstract Enum2(String) from String to String {
	var RESOLUTION : String = "RESOLUTION";
	var SEGMENTS : String = "SEGMENTS";
	var SPLINE : String = "SPLINE";
}@:enum abstract Enum3(String) from String to String {
	var 2D : String = "2D";
	var 3D : String = "3D";
}@:enum abstract Enum4(String) from String to String {
	var FULL : String = "FULL";
	var BACK : String = "BACK";
	var FRONT : String = "FRONT";
	var HALF : String = "HALF";
}@:enum abstract Enum5(String) from String to String {
	var Z_UP : String = "Z_UP";
	var MINIMUM : String = "MINIMUM";
	var TANGENT : String = "TANGENT";
}/**
	Curve data-block storing curves, splines and NURBS
**/
@:pythonImport("bpy.types.Curve") extern class Curve {
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Bevel depth when not using a bevel object
		
		Type: float in [-inf, inf], default 0.0
	**/
	var bevel_depth : Float;
	/**
		Factor that defines to where beveling of spline happens (0=to the very beginning, 1=to the very end)
		
		Type: float in [0, 1], default 0.0
	**/
	var bevel_factor_end : Float;
	/**
		Determines how the end bevel factor is mapped to a spline
		
		Type: enum in [‘RESOLUTION’, ‘SEGMENTS’, ‘SPLINE’], default ‘RESOLUTION’
	**/
	var bevel_factor_mapping_end : bpy.types.curve.Curve.Enum1;
	/**
		Determines how the start bevel factor is mapped to a spline
		
		Type: enum in [‘RESOLUTION’, ‘SEGMENTS’, ‘SPLINE’], default ‘RESOLUTION’
	**/
	var bevel_factor_mapping_start : bpy.types.curve.Curve.Enum2;
	/**
		Factor that defines from where beveling of spline happens (0=from the very beginning, 1=from the very end)
		
		Type: float in [0, 1], default 0.0
	**/
	var bevel_factor_start : Float;
	/**
		Curve object name that defines the bevel shape
		
		Type: Object
	**/
	var bevel_object : bpy.types.object.Object;
	/**
		Bevel resolution when depth is non-zero and no specific bevel object has been defined
		
		Type: int in [0, 32], default 0
	**/
	var bevel_resolution : Int;
	/**
		Cycles mesh settings
		
		Type: CyclesMeshSettings, (readonly)
	**/
	var cycles(default, never) : bpy.types.cyclesmeshsettings.CyclesMeshSettings;
	/**
		Select 2D or 3D curve type
		
		Type: enum in [‘2D’, ‘3D’], default ‘2D’
	**/
	var dimensions : bpy.types.curve.Curve.Enum3;
	/**
		Parametric position along the length of the curve that Objects ‘following’ it should be at (position is evaluated by dividing by the ‘Path Length’ value)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var eval_time : Float;
	/**
		Amount of curve extrusion when not using a bevel object
		
		Type: float in [0, inf], default 0.0
	**/
	var extrude : Float;
	/**
		Mode of filling curve
		
		Type: enum in [‘FULL’, ‘BACK’, ‘FRONT’, ‘HALF’], default ‘FULL’
	**/
	var fill_mode : bpy.types.curve.Curve.Enum4;
	/**
		True when used in editmode
		
		Type: boolean, default False, (readonly)
	**/
	var is_editmode(default, never) : Bool;
	/**
		
		
		Type: IDMaterials bpy_prop_collection of Material, (readonly)
	**/
	var materials(default, never) : bpy.types.idmaterials.IDMaterials;
	/**
		Offset the curve to adjust the width of a text
		
		Type: float in [-inf, inf], default 0.0
	**/
	var offset : Float;
	/**
		The number of frames that are needed to traverse the path, defining the maximum value for the ‘Evaluation Time’ setting
		
		Type: int in [1, 1048574], default 0
	**/
	var path_duration : Int;
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
		
		
		Type: Key, (readonly)
	**/
	var shape_keys(default, never) : bpy.types.key.Key;
	/**
		Collection of splines in this curve data object
		
		Type: CurveSplines bpy_prop_collection of Spline, (readonly)
	**/
	var splines(default, never) : bpy.types.curvesplines.CurveSplines;
	/**
		Curve object name that defines the taper (width)
		
		Type: Object
	**/
	var taper_object : bpy.types.object.Object;
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
		The type of tilt calculation for 3D Curves
		
		Type: enum in [‘Z_UP’, ‘MINIMUM’, ‘TANGENT’], default ‘Z_UP’
	**/
	var twist_mode : bpy.types.curve.Curve.Enum5;
	/**
		Smoothing iteration for tangents
		
		Type: float in [-inf, inf], default 0.0
	**/
	var twist_smooth : Float;
	/**
		Adjust active object’s texture space automatically when transforming object
		
		Type: boolean, default False
	**/
	var use_auto_texspace : Bool;
	/**
		Option for curve-deform: Use the mesh bounds to clamp the deformation
		
		Type: boolean, default False
	**/
	var use_deform_bounds : Bool;
	/**
		Fill caps for beveled curves
		
		Type: boolean, default False
	**/
	var use_fill_caps : Bool;
	/**
		Fill curve after applying shape keys and all modifiers
		
		Type: boolean, default False
	**/
	var use_fill_deform : Bool;
	/**
		Map effect of taper object on actually beveled curve
		
		Type: boolean, default False
	**/
	var use_map_taper : Bool;
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
		Option for paths and curve-deform: apply the curve radius with path following it and deforming
		
		Type: boolean, default False
	**/
	var use_radius : Bool;
	/**
		Option for curve-deform: make deformed child to stretch along entire path
		
		Type: boolean, default False
	**/
	var use_stretch : Bool;
	/**
		Uses the UV values as Generated textured coordinates
		
		Type: boolean, default False
	**/
	var use_uv_as_generated : Bool;
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
	function validate_material_indices():Dynamic;
	/**
		update_gpu_tag
	**/
	function update_gpu_tag():Void;
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