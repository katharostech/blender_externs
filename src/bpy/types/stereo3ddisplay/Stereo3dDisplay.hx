package bpy.types.stereo3ddisplay;
@:enum abstract Enum1(String) from String to String {
	var RED_CYAN : String = "RED_CYAN";
	var GREEN_MAGENTA : String = "GREEN_MAGENTA";
	var YELLOW_BLUE : String = "YELLOW_BLUE";
}@:enum abstract Enum2(String) from String to String {
	var ANAGLYPH : String = "ANAGLYPH";
	var INTERLACE : String = "INTERLACE";
	var TIMESEQUENTIAL : String = "TIMESEQUENTIAL";
	var SIDEBYSIDE : String = "SIDEBYSIDE";
	var TOPBOTTOM : String = "TOPBOTTOM";
}@:enum abstract Enum3(String) from String to String {
	var ROW_INTERLEAVED : String = "ROW_INTERLEAVED";
	var COLUMN_INTERLEAVED : String = "COLUMN_INTERLEAVED";
	var CHECKERBOARD_INTERLEAVED : String = "CHECKERBOARD_INTERLEAVED";
}/**
	Settings for stereo 3D display
**/
@:pythonImport("bpy.types.Stereo3dDisplay") extern class Stereo3dDisplay {
	/**
		
		
		Type: enum in [‘RED_CYAN’, ‘GREEN_MAGENTA’, ‘YELLOW_BLUE’], default ‘RED_CYAN’
	**/
	var anaglyph_type : bpy.types.stereo3ddisplay.Stereo3dDisplay.Enum1;
	/**
		
		
		Type: enum in [‘ANAGLYPH’, ‘INTERLACE’, ‘TIMESEQUENTIAL’, ‘SIDEBYSIDE’, ‘TOPBOTTOM’], default ‘ANAGLYPH’
	**/
	var display_mode : bpy.types.stereo3ddisplay.Stereo3dDisplay.Enum2;
	/**
		
		
		Type: enum in [‘ROW_INTERLEAVED’, ‘COLUMN_INTERLEAVED’, ‘CHECKERBOARD_INTERLEAVED’], default ‘ROW_INTERLEAVED’
	**/
	var interlace_type : bpy.types.stereo3ddisplay.Stereo3dDisplay.Enum3;
	/**
		Swap left and right stereo channels
		
		Type: boolean, default False
	**/
	var use_interlace_swap : Bool;
	/**
		Right eye should see left image and vice-versa
		
		Type: boolean, default False
	**/
	var use_sidebyside_crosseyed : Bool;
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