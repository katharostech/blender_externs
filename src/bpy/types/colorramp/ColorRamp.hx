package bpy.types.colorramp;
@:enum abstract Enum1(String) from String to String {
	var RGB : String = "RGB";
	var HSV : String = "HSV";
	var HSL : String = "HSL";
}@:enum abstract Enum2(String) from String to String {
	var NEAR : String = "NEAR";
	var FAR : String = "FAR";
	var CW : String = "CW";
	var CCW : String = "CCW";
}@:enum abstract Enum3(String) from String to String {
	var EASE : String = "EASE";
	var CARDINAL : String = "CARDINAL";
	var LINEAR : String = "LINEAR";
	var B_SPLINE : String = "B_SPLINE";
	var CONSTANT : String = "CONSTANT";
}/**
	Color ramp mapping a scalar value to a color
**/
@:native("bpy.types.ColorRamp") extern class ColorRamp {
	/**
		Set color mode to use for interpolation
		
		Type: enum in [‘RGB’, ‘HSV’, ‘HSL’], default ‘RGB’
	**/
	var color_mode : bpy.types.colorramp.ColorRamp.Enum1;
	/**
		
		
		Type: ColorRampElements bpy_prop_collection of ColorRampElement, (readonly)
	**/
	var elements(default, never) : bpy.types.colorrampelements.ColorRampElements;
	/**
		Set color interpolation
		
		Type: enum in [‘NEAR’, ‘FAR’, ‘CW’, ‘CCW’], default ‘NEAR’
	**/
	var hue_interpolation : bpy.types.colorramp.ColorRamp.Enum2;
	/**
		Set interpolation between color stops
		
		Type: enum in [‘EASE’, ‘CARDINAL’, ‘LINEAR’, ‘B_SPLINE’, ‘CONSTANT’], default ‘LINEAR’
	**/
	var interpolation : bpy.types.colorramp.ColorRamp.Enum3;
	/**
		Evaluate ColorRamp
		@param position Position, Evaluate ColorRamp at position — float in [0, 1]
		
		@returns float array of 4 items in [-inf, inf]
	**/
	function evaluate(position:Float):Array<Float>;
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