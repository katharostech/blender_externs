package bpy.types.freestylesettings;
@:enum abstract Enum1(String) from String to String {
	var SCRIPT : String = "SCRIPT";
	var EDITOR : String = "EDITOR";
}/**
	Freestyle settings for a ViewLayer data-block
**/
@:native("bpy.types.FreestyleSettings") extern class FreestyleSettings {
	/**
		Angular threshold for detecting crease edges
		
		Type: float in [0, 3.14159], default 0.0
	**/
	var crease_angle : Float;
	/**
		Kr derivative epsilon for computing suggestive contours
		
		Type: float in [-1000, 1000], default 0.0
	**/
	var kr_derivative_epsilon : Float;
	/**
		
		
		Type: Linesets bpy_prop_collection of FreestyleLineSet, (readonly)
	**/
	var linesets(default, never) : bpy.types.linesets.Linesets;
	/**
		Select the Freestyle control mode
		
		Type: enum in [‘SCRIPT’, ‘EDITOR’], default ‘SCRIPT’
	**/
	var mode : bpy.types.freestylesettings.FreestyleSettings.Enum1;
	/**
		A list of style modules (to be applied from top to bottom)
		
		Type: FreestyleModules bpy_prop_collection of FreestyleModuleSettings, (readonly)
	**/
	var modules(default, never) : bpy.types.freestylemodules.FreestyleModules;
	/**
		Sphere radius for computing curvatures
		
		Type: float in [0, 1000], default 0.0
	**/
	var sphere_radius : Float;
	/**
		Enable advanced edge detection options (sphere radius and Kr derivative epsilon)
		
		Type: boolean, default False
	**/
	var use_advanced_options : Bool;
	/**
		If enabled, out-of-view edges are ignored
		
		Type: boolean, default False
	**/
	var use_culling : Bool;
	/**
		Enable material boundaries
		
		Type: boolean, default False
	**/
	var use_material_boundaries : Bool;
	/**
		Enable ridges and valleys
		
		Type: boolean, default False
	**/
	var use_ridges_and_valleys : Bool;
	/**
		Take face smoothness into account in view map calculation
		
		Type: boolean, default False
	**/
	var use_smoothness : Bool;
	/**
		Enable suggestive contours
		
		Type: boolean, default False
	**/
	var use_suggestive_contours : Bool;
	/**
		Keep the computed view map and avoid re-calculating it if mesh geometry is unchanged
		
		Type: boolean, default False
	**/
	var use_view_map_cache : Bool;
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
}