package bpy.types.gpussaosettings;
/**
	Settings for GPU based screen space ambient occlusion
**/
@:native("bpy.types.GPUSSAOSettings") extern class GPUSSAOSettings {
	/**
		Attenuation constant
		
		Type: float in [1, 100000], default 0.0
	**/
	var attenuation : Float;
	/**
		Color for screen space ambient occlusion effect
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		Distance of object that contribute to the SSAO effect
		
		Type: float in [0, 100000], default 0.0
	**/
	var distance_max : Float;
	/**
		Strength of the SSAO effect
		
		Type: float in [0, 250], default 0.0
	**/
	var factor : Float;
	/**
		Number of samples
		
		Type: int in [1, 500], default 0
	**/
	var samples : Int;
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