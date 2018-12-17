package bpy.types.themegradientcolors;
/**
	Theme settings for background colors and gradient
**/
@:native("bpy.types.ThemeGradientColors") extern class ThemeGradientColors {
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var gradient : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var high_gradient : Array<Float>;
	/**
		Do a gradient for the background of the viewport working area
		
		Type: boolean, default False
	**/
	var show_grad : Bool;
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