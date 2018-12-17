package bpy.types.usersolidlight;
/**
	Light used for OpenGL lighting in solid draw mode
**/
@:native("bpy.types.UserSolidLight") extern class UserSolidLight {
	/**
		Color of the light’s diffuse highlight
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var diffuse_color : Array<Float>;
	/**
		Direction that the OpenGL light is shining
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 1.0, 0.0)
	**/
	var direction : Array<Float>;
	/**
		Smooth the lighting from this light
		
		Type: float in [0, 1], default 0.5
	**/
	var smooth : Float;
	/**
		Color of the light’s specular highlight
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var specular_color : Array<Float>;
	/**
		Enable this OpenGL light in solid draw mode
		
		Type: boolean, default False
	**/
	var use : Bool;
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