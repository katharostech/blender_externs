package bpy.types.gpencilsculptsettings;
@:enum abstract Enum1(String) from String to String {
	var VIEW : String = "VIEW";
	var AXIS_Y : String = "AXIS_Y";
	var AXIS_X : String = "AXIS_X";
	var AXIS_Z : String = "AXIS_Z";
}@:enum abstract Enum2(String) from String to String {
	var SMOOTH : String = "SMOOTH";
	var THICKNESS : String = "THICKNESS";
	var STRENGTH : String = "STRENGTH";
	var GRAB : String = "GRAB";
	var PUSH : String = "PUSH";
	var TWIST : String = "TWIST";
	var PINCH : String = "PINCH";
	var RANDOMIZE : String = "RANDOMIZE";
	var CLONE : String = "CLONE";
}@:enum abstract Enum3(String) from String to String {
	var WEIGHT : String = "WEIGHT";
}/**
	Properties for Grease Pencil stroke sculpting tool
**/
@:native("bpy.types.GPencilSculptSettings") extern class GPencilSculptSettings {
	/**
		
		
		Type: GPencilSculptBrush, (readonly)
	**/
	var brush(default, never) : bpy.types.gpencilsculptbrush.GPencilSculptBrush;
	/**
		
		
		Type: enum in [‘VIEW’, ‘AXIS_Y’, ‘AXIS_X’, ‘AXIS_Z’], default ‘VIEW’
	**/
	var lock_axis : bpy.types.gpencilsculptsettings.GPencilSculptSettings.Enum1;
	/**
		Custom curve to control falloff of brush effect by Grease Pencil frames
		
		Type: CurveMapping, (readonly)
	**/
	var multiframe_falloff_curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		
		
		Type: enum in [‘SMOOTH’, ‘THICKNESS’, ‘STRENGTH’, ‘GRAB’, ‘PUSH’, ‘TWIST’, ‘PINCH’, ‘RANDOMIZE’, ‘CLONE’], default ‘SMOOTH’
	**/
	var sculpt_tool : bpy.types.gpencilsculptsettings.GPencilSculptSettings.Enum2;
	/**
		The brush affects the position of the point
		
		Type: boolean, default False
	**/
	var use_edit_position : Bool;
	/**
		The brush affects the color strength of the point
		
		Type: boolean, default False
	**/
	var use_edit_strength : Bool;
	/**
		The brush affects the thickness of the point
		
		Type: boolean, default False
	**/
	var use_edit_thickness : Bool;
	/**
		The brush affects the UV rotation of the point
		
		Type: boolean, default False
	**/
	var use_edit_uv : Bool;
	/**
		Use falloff effect when edit in multiframe mode to compute brush effect by frame
		
		Type: boolean, default False
	**/
	var use_multiframe_falloff : Bool;
	/**
		Only sculpt selected stroke points
		
		Type: boolean, default False
	**/
	var use_select_mask : Bool;
	/**
		Tool for weight painting
		
		Type: enum in [‘WEIGHT’], default ‘WEIGHT’
	**/
	var weight_tool : bpy.types.gpencilsculptsettings.GPencilSculptSettings.Enum3;
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