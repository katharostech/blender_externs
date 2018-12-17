package bpy.types.histogram;
@:enum abstract Enum1(String) from String to String {
	var LUMA : String = "LUMA";
	var RGB : String = "RGB";
	var R : String = "R";
	var G : String = "G";
	var B : String = "B";
	var A : String = "A";
}/**
	Statistical view of the levels of color in an image
**/
@:native("bpy.types.Histogram") extern class Histogram {
	/**
		Channels to display when drawing the histogram
		
		Type: enum in [‘LUMA’, ‘RGB’, ‘R’, ‘G’, ‘B’, ‘A’], default ‘LUMA’
	**/
	var mode : bpy.types.histogram.Histogram.Enum1;
	/**
		Display lines rather than filled shapes
		
		Type: boolean, default False
	**/
	var show_line : Bool;
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