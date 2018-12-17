package bpy.types.masklayer;
@:enum abstract Enum1(String) from String to String {
	var MERGE_ADD : String = "MERGE_ADD";
	var MERGE_SUBTRACT : String = "MERGE_SUBTRACT";
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
	var LIGHTEN : String = "LIGHTEN";
	var DARKEN : String = "DARKEN";
	var MUL : String = "MUL";
	var REPLACE : String = "REPLACE";
	var DIFFERENCE : String = "DIFFERENCE";
}@:enum abstract Enum2(String) from String to String {
	var SMOOTH : String = "SMOOTH";
	var SPHERE : String = "SPHERE";
	var ROOT : String = "ROOT";
	var INVERSE_SQUARE : String = "INVERSE_SQUARE";
	var SHARP : String = "SHARP";
	var LINEAR : String = "LINEAR";
}/**
	Single layer used for masking pixels
**/
@:native("bpy.types.MaskLayer") extern class MaskLayer {
	/**
		Render Opacity
		
		Type: float in [-inf, inf], default 0.0
	**/
	var alpha : Float;
	/**
		Method of blending mask layers
		
		Type: enum in [‘MERGE_ADD’, ‘MERGE_SUBTRACT’, ‘ADD’, ‘SUBTRACT’, ‘LIGHTEN’, ‘DARKEN’, ‘MUL’, ‘REPLACE’, ‘DIFFERENCE’], default ‘ADD’
	**/
	var blend : bpy.types.masklayer.MaskLayer.Enum1;
	/**
		Falloff type the feather
		
		Type: enum in [‘SMOOTH’, ‘SPHERE’, ‘ROOT’, ‘INVERSE_SQUARE’, ‘SHARP’, ‘LINEAR’], default ‘SMOOTH’
	**/
	var falloff : bpy.types.masklayer.MaskLayer.Enum2;
	/**
		Restrict visibility in the viewport
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		Restrict renderability
		
		Type: boolean, default False
	**/
	var hide_render : Bool;
	/**
		Restrict selection in the viewport
		
		Type: boolean, default False
	**/
	var hide_select : Bool;
	/**
		Invert the mask black/white
		
		Type: boolean, default False
	**/
	var invert : Bool;
	/**
		Unique name of layer
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Layer is selected for editing in the Dope Sheet
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Collection of splines which defines this layer
		
		Type: MaskSplines bpy_prop_collection of MaskSpline, (readonly)
	**/
	var splines(default, never) : bpy.types.masksplines.MaskSplines;
	/**
		Calculate holes when filling overlapping curves
		
		Type: boolean, default False
	**/
	var use_fill_holes : Bool;
	/**
		Calculate self intersections and overlap before filling
		
		Type: boolean, default False
	**/
	var use_fill_overlap : Bool;
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