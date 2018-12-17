package bpy.types.view3dshading;
@:enum abstract Enum1(String) from String to String {
	var THEME : String = "THEME";
	var WORLD : String = "WORLD";
	var VIEWPORT : String = "VIEWPORT";
}@:enum abstract Enum2(String) from String to String {
	var WORLD : String = "WORLD";
	var SCREEN : String = "SCREEN";
	var BOTH : String = "BOTH";
}@:enum abstract Enum3(String) from String to String {
	var SINGLE : String = "SINGLE";
	var MATERIAL : String = "MATERIAL";
	var RANDOM : String = "RANDOM";
	var TEXTURE : String = "TEXTURE";
}@:enum abstract Enum4(String) from String to String {
	var FLAT : String = "FLAT";
	var STUDIO : String = "STUDIO";
	var MATCAP : String = "MATCAP";
}@:enum abstract Enum5(String) from String to String {
	var DEFAULT : String = "DEFAULT";
}@:enum abstract Enum6(String) from String to String {
	var WIREFRAME : String = "WIREFRAME";
	var SOLID : String = "SOLID";
	var MATERIAL : String = "MATERIAL";
	var RENDERED : String = "RENDERED";
}/**
	Settings for shading in the 3D viewport
**/
@:native("bpy.types.View3DShading") extern class View3DShading {
	/**
		Color for custom background color
		
		Type: float array of 3 items in [0, 1], default (0.05, 0.05, 0.05)
	**/
	var background_color : Array<Float>;
	/**
		Way to draw the background
		
		Type: enum in [‘THEME’, ‘WORLD’, ‘VIEWPORT’], default ‘THEME’
	**/
	var background_type : bpy.types.view3dshading.View3DShading.Enum1;
	/**
		Factor for the cavity ridges
		
		Type: float in [0, 250], default 1.0
	**/
	var cavity_ridge_factor : Float;
	/**
		Way to draw the cavity shading
		
		Type: enum in [‘WORLD’, ‘SCREEN’, ‘BOTH’], default ‘WORLD’
	**/
	var cavity_type : bpy.types.view3dshading.View3DShading.Enum2;
	/**
		Factor for the cavity valleys
		
		Type: float in [0, 250], default 1.0
	**/
	var cavity_valley_factor : Float;
	/**
		Color Type
		
		Type: enum in [‘SINGLE’, ‘MATERIAL’, ‘RANDOM’, ‘TEXTURE’], default ‘MATERIAL’
	**/
	var color_type : bpy.types.view3dshading.View3DShading.Enum3;
	/**
		Factor for the curvature ridges
		
		Type: float in [0, 2], default 1.0
	**/
	var curvature_ridge_factor : Float;
	/**
		Factor for the curvature valleys
		
		Type: float in [0, 2], default 1.0
	**/
	var curvature_valley_factor : Float;
	/**
		Lighting Method for Solid/Texture Viewport Shading
		
		Type: enum in [‘FLAT’, ‘STUDIO’, ‘MATCAP’], default ‘FLAT’
	**/
	var light : bpy.types.view3dshading.View3DShading.Enum4;
	/**
		Color for object outline
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var object_outline_color : Array<Float>;
	/**
		Selected StudioLight
		
		Type: StudioLight, (readonly)
	**/
	var selected_studio_light(default, never) : bpy.types.studiolight.StudioLight;
	/**
		Darkness of shadows
		
		Type: float in [0, 1], default 0.5
	**/
	var shadow_intensity : Float;
	/**
		Show Cavity
		
		Type: boolean, default False
	**/
	var show_cavity : Bool;
	/**
		Show Object Outline
		
		Type: boolean, default False
	**/
	var show_object_outline : Bool;
	/**
		Show Shadow
		
		Type: boolean, default False
	**/
	var show_shadows : Bool;
	/**
		Render specular highlights
		
		Type: boolean, default False
	**/
	var show_specular_highlight : Bool;
	/**
		Show whole scene transparent
		
		Type: boolean, default False
	**/
	var show_xray : Bool;
	/**
		Show whole scene transparent
		
		Type: boolean, default False
	**/
	var show_xray_wireframe : Bool;
	/**
		Color for single color mode
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var single_color : Array<Float>;
	/**
		Studio lighting setup
		
		Type: enum in [‘DEFAULT’], default ‘DEFAULT’
	**/
	var studio_light : bpy.types.view3dshading.View3DShading.Enum5;
	/**
		Show the studiolight in the background
		
		Type: float in [0, 1], default 0.0
	**/
	var studiolight_background_alpha : Float;
	/**
		Rotation of the studiolight around the Z-Axis
		
		Type: float in [-3.14159, 3.14159], default 0.0
	**/
	var studiolight_rotate_z : Float;
	/**
		Method to display/shade objects in the 3D View
		
		Type: enum in [‘WIREFRAME’, ‘SOLID’, ‘MATERIAL’, ‘RENDERED’], default ‘WIREFRAME’
	**/
	var type : bpy.types.view3dshading.View3DShading.Enum6;
	/**
		Render lights and light probes of the scene
		
		Type: boolean, default False
	**/
	var use_scene_lights : Bool;
	/**
		Use scene world for lighting
		
		Type: boolean, default False
	**/
	var use_scene_world : Bool;
	/**
		Make the lighting fixed and not follow the camera
		
		Type: boolean, default False
	**/
	var use_world_space_lighting : Bool;
	/**
		Amount of alpha to use
		
		Type: float in [0, 1], default 0.5
	**/
	var xray_alpha : Float;
	/**
		Amount of alpha to use
		
		Type: float in [0, 1], default 0.5
	**/
	var xray_alpha_wireframe : Float;
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