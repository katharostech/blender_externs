package bpy.types.cycleslightsettings;
@:pythonImport("bpy.types.CyclesLightSettings") extern class CyclesLightSettings {
	/**
		Light casts shadows
		
		Type: boolean, default True
	**/
	var cast_shadow : Bool;
	/**
		Use this area light to guide sampling of the background, note that this will make the light invisible
		
		Type: boolean, default False
	**/
	var is_portal : Bool;
	/**
		Maximum number of bounces the light will contribute to the render
		
		Type: int in [0, 1024], default 1024
	**/
	var max_bounces : Int;
	/**
		Number of light samples to render for each AA sample
		
		Type: int in [1, 10000], default 1
	**/
	var samples : Int;
	/**
		Use multiple importance sampling for the light, reduces noise for area lights and sharp glossy materials
		
		Type: boolean, default True
	**/
	var use_multiple_importance_sampling : Bool;
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
}