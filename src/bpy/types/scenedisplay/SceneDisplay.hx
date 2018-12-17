package bpy.types.scenedisplay;
/**
	Scene display settings for 3d viewport
**/
@:native("bpy.types.SceneDisplay") extern class SceneDisplay {
	/**
		Direction of the light for shadows and highlights
		
		Type: float array of 3 items in [-inf, inf], default (-0.57735, -0.57735, 0.57735)
	**/
	var light_direction : Array<Float>;
	/**
		Attenuation constant
		
		Type: float in [1, 100000], default 1.0
	**/
	var matcap_ssao_attenuation : Float;
	/**
		Distance of object that contribute to the Cavity/Edge effect
		
		Type: float in [0, 100000], default 0.2
	**/
	var matcap_ssao_distance : Float;
	/**
		Number of samples
		
		Type: int in [1, 500], default 16
	**/
	var matcap_ssao_samples : Int;
	/**
		Shading settings for OpenGL render engine
		
		Type: View3DShading, (readonly)
	**/
	var shading(default, never) : bpy.types.view3dshading.View3DShading;
	/**
		Shadow termination angle
		
		Type: float in [0, 1], default 0.1
	**/
	var shadow_shift : Float;
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