package bpy.types.scopes;
@:enum abstract Enum1(String) from String to String {
	var LUMA : String = "LUMA";
	var PARADE : String = "PARADE";
	var pyYCBCR601 : String = "YCBCR601";
	var pyYCBCR709 : String = "YCBCR709";
	var YCBCRJPG : String = "YCBCRJPG";
	var RGB : String = "RGB";
}/**
	Scopes for statistical view of an image
**/
@:native("bpy.types.Scopes") extern class Scopes {
	/**
		Proportion of original image source pixel lines to sample
		
		Type: float in [0, 100], default 0.0
	**/
	var accuracy : Float;
	/**
		Histogram for viewing image statistics
		
		Type: Histogram, (readonly)
	**/
	var histogram(default, never) : bpy.types.histogram.Histogram;
	/**
		Sample every pixel of the image
		
		Type: boolean, default False
	**/
	var use_full_resolution : Bool;
	/**
		Opacity of the points
		
		Type: float in [0, 1], default 0.0
	**/
	var vectorscope_alpha : Float;
	/**
		Opacity of the points
		
		Type: float in [0, 1], default 0.0
	**/
	var waveform_alpha : Float;
	/**
		
		
		Type: enum in [‘LUMA’, ‘PARADE’, ‘YCBCR601’, ‘YCBCR709’, ‘YCBCRJPG’, ‘RGB’], default ‘LUMA’
	**/
	var waveform_mode : bpy.types.scopes.Scopes.Enum1;
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