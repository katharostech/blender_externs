package bpy.types.arealight;
@:enum abstract Enum1(String) from String to String {
	var CONSTANT : String = "CONSTANT";
	var INVERSE_LINEAR : String = "INVERSE_LINEAR";
	var INVERSE_SQUARE : String = "INVERSE_SQUARE";
	var INVERSE_COEFFICIENTS : String = "INVERSE_COEFFICIENTS";
	var CUSTOM_CURVE : String = "CUSTOM_CURVE";
	var LINEAR_QUADRATIC_WEIGHTED : String = "LINEAR_QUADRATIC_WEIGHTED";
}@:enum abstract Enum2(String) from String to String {
	var SQUARE : String = "SQUARE";
	var RECTANGLE : String = "RECTANGLE";
	var DISK : String = "DISK";
	var ELLIPSE : String = "ELLIPSE";
}/**
	Directional area Light
**/
@:pythonImport("bpy.types.AreaLight") extern class AreaLight {
	/**
		Constant distance attenuation coefficient
		
		Type: float in [0, inf], default 0.0
	**/
	var constant_coefficient : Float;
	/**
		Bias to avoid self shadowing
		
		Type: float in [0.001, 9999], default 0.03
	**/
	var contact_shadow_bias : Float;
	/**
		World space distance in which to search for screen space occluder
		
		Type: float in [0, 9999], default 0.2
	**/
	var contact_shadow_distance : Float;
	/**
		Control how soft the contact shadows will be
		
		Type: float in [0, 9999], default 0.2
	**/
	var contact_shadow_soft_size : Float;
	/**
		Pixel thickness used to detect occlusion
		
		Type: float in [0, 9999], default 0.2
	**/
	var contact_shadow_thickness : Float;
	/**
		Custom light falloff curve
		
		Type: CurveMapping, (readonly)
	**/
	var falloff_curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Intensity Decay with distance
		
		Type: enum in [‘CONSTANT’, ‘INVERSE_LINEAR’, ‘INVERSE_SQUARE’, ‘INVERSE_COEFFICIENTS’, ‘CUSTOM_CURVE’, ‘LINEAR_QUADRATIC_WEIGHTED’], default ‘CONSTANT’
	**/
	var falloff_type : bpy.types.arealight.AreaLight.Enum1;
	/**
		Linear distance attenuation
		
		Type: float in [0, 1], default 0.0
	**/
	var linear_attenuation : Float;
	/**
		Linear distance attenuation coefficient
		
		Type: float in [0, inf], default 0.0
	**/
	var linear_coefficient : Float;
	/**
		Quadratic distance attenuation
		
		Type: float in [0, 1], default 0.0
	**/
	var quadratic_attenuation : Float;
	/**
		Quadratic distance attenuation coefficient
		
		Type: float in [0, inf], default 0.0
	**/
	var quadratic_coefficient : Float;
	/**
		Bias for reducing self shadowing
		
		Type: float in [0.001, 9999], default 1.0
	**/
	var shadow_buffer_bias : Float;
	/**
		Bias for reducing light-bleed on variance shadow maps
		
		Type: float in [0, 1], default 0.0
	**/
	var shadow_buffer_bleed_bias : Float;
	/**
		Shadow map clip end, beyond which objects will not generate shadows
		
		Type: float in [0, 9999], default 40.0
	**/
	var shadow_buffer_clip_end : Float;
	/**
		Shadow map clip start, below which objects will not generate shadows
		
		Type: float in [0, 9999], default 0.5
	**/
	var shadow_buffer_clip_start : Float;
	/**
		Bias for reducing light-bleed on exponential shadow maps
		
		Type: float in [1, 9999], default 2.5
	**/
	var shadow_buffer_exp : Float;
	/**
		Number of shadow buffer samples
		
		Type: int in [1, 16], default 0
	**/
	var shadow_buffer_samples : Int;
	/**
		Resolution of the shadow buffer, higher values give crisper shadows but use more memory
		
		Type: int in [128, 10240], default 0
	**/
	var shadow_buffer_size : Int;
	/**
		Size of shadow buffer sampling area
		
		Type: float in [0, 100], default 3.0
	**/
	var shadow_buffer_soft : Float;
	/**
		Color of shadows cast by the light
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var shadow_color : Array<Float>;
	/**
		Light size for ray shadow sampling (Raytraced shadows)
		
		Type: float in [0, inf], default 0.25
	**/
	var shadow_soft_size : Float;
	/**
		Shape of the area Light
		
		Type: enum in [‘SQUARE’, ‘RECTANGLE’, ‘DISK’, ‘ELLIPSE’], default ‘SQUARE’
	**/
	var shape : bpy.types.arealight.AreaLight.Enum2;
	/**
		Size of the area of the area light, X direction size for rectangle shapes
		
		Type: float in [0, inf], default 0.25
	**/
	var size : Float;
	/**
		Size of the area of the area light in the Y direction for rectangle shapes
		
		Type: float in [0, inf], default 0.25
	**/
	var size_y : Float;
	/**
		Use screen space raytracing to have correct shadowing near occluder, or for small features that does not appear in shadow maps
		
		Type: boolean, default False
	**/
	var use_contact_shadow : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_shadow : Bool;
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
		Type of Light
		
		Type: enum in [‘POINT’, ‘SUN’, ‘SPOT’, ‘AREA’], default ‘POINT’
	**/
	var type : bpy.types.light.Light.Enum1;
	/**
		Falloff distance - the light is at half the original intensity at this point
		
		Type: float in [0, inf], default 0.0
	**/
	var distance : Float;
	/**
		Amount of light emitted
		
		Type: float in [-inf, inf], default 10.0
	**/
	var energy : Float;
	/**
		Light color
		
		Type: float array of 3 items in [0, inf], default (1.0, 1.0, 1.0)
	**/
	var color : Array<Float>;
	/**
		Specular reflection multiplier
		
		Type: float in [0, 9999], default 1.0
	**/
	var specular_factor : Float;
	/**
		Use custom attenuation distance instead of global light threshold
		
		Type: boolean, default False
	**/
	var use_custom_distance : Bool;
	/**
		Distance at which the light influence will be set to 0
		
		Type: float in [0, inf], default 1.0
	**/
	var cutoff_distance : Float;
	/**
		Node tree for node based lights
		
		Type: NodeTree, (readonly)
	**/
	var node_tree(default, never) : bpy.types.nodetree.NodeTree;
	/**
		Use shader nodes to render the light
		
		Type: boolean, default False
	**/
	var use_nodes : Bool;
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Cycles light settings
		
		Type: CyclesLightSettings, (readonly)
	**/
	var cycles(default, never) : bpy.types.cycleslightsettings.CyclesLightSettings;
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