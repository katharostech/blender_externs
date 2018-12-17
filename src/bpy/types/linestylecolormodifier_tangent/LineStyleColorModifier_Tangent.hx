package bpy.types.linestylecolormodifier_tangent;
@:enum abstract Enum1(String) from String to String {
	var MIX : String = "MIX";
	var DARKEN : String = "DARKEN";
	var MULTIPLY : String = "MULTIPLY";
	var BURN : String = "BURN";
	var LIGHTEN : String = "LIGHTEN";
	var SCREEN : String = "SCREEN";
	var DODGE : String = "DODGE";
	var ADD : String = "ADD";
	var OVERLAY : String = "OVERLAY";
	var SOFT_LIGHT : String = "SOFT_LIGHT";
	var LINEAR_LIGHT : String = "LINEAR_LIGHT";
	var DIFFERENCE : String = "DIFFERENCE";
	var SUBTRACT : String = "SUBTRACT";
	var DIVIDE : String = "DIVIDE";
	var HUE : String = "HUE";
	var SATURATION : String = "SATURATION";
	var COLOR : String = "COLOR";
	var VALUE : String = "VALUE";
}@:enum abstract Enum2(String) from String to String {
	var ALONG_STROKE : String = "ALONG_STROKE";
	var CREASE_ANGLE : String = "CREASE_ANGLE";
	var pyCURVATURE_3D : String = "CURVATURE_3D";
	var DISTANCE_FROM_CAMERA : String = "DISTANCE_FROM_CAMERA";
	var DISTANCE_FROM_OBJECT : String = "DISTANCE_FROM_OBJECT";
	var MATERIAL : String = "MATERIAL";
	var NOISE : String = "NOISE";
	var TANGENT : String = "TANGENT";
}/**
	Change line color based on the direction of a stroke
**/
@:native("bpy.types.LineStyleColorModifier_Tangent") extern class LineStyleColorModifier_Tangent {
	/**
		Specify how the modifier value is blended into the base value
		
		Type: enum in [‘MIX’, ‘DARKEN’, ‘MULTIPLY’, ‘BURN’, ‘LIGHTEN’, ‘SCREEN’, ‘DODGE’, ‘ADD’, ‘OVERLAY’, ‘SOFT_LIGHT’, ‘LINEAR_LIGHT’, ‘DIFFERENCE’, ‘SUBTRACT’, ‘DIVIDE’, ‘HUE’, ‘SATURATION’, ‘COLOR’, ‘VALUE’], default ‘MIX’
	**/
	var blend : bpy.types.linestylecolormodifier_tangent.LineStyleColorModifier_Tangent.Enum1;
	/**
		Color ramp used to change line color
		
		Type: ColorRamp, (readonly)
	**/
	var color_ramp(default, never) : bpy.types.colorramp.ColorRamp;
	/**
		True if the modifier tab is expanded
		
		Type: boolean, default False
	**/
	var expanded : Bool;
	/**
		Influence factor by which the modifier changes the property
		
		Type: float in [0, 1], default 0.0
	**/
	var influence : Float;
	/**
		Name of the modifier
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Type of the modifier
		
		Type: enum in [‘ALONG_STROKE’, ‘CREASE_ANGLE’, ‘CURVATURE_3D’, ‘DISTANCE_FROM_CAMERA’, ‘DISTANCE_FROM_OBJECT’, ‘MATERIAL’, ‘NOISE’, ‘TANGENT’], default ‘ALONG_STROKE’, (readonly)
	**/
	var type(default, never) : bpy.types.linestylecolormodifier_tangent.LineStyleColorModifier_Tangent.Enum2;
	/**
		Enable or disable this modifier during stroke rendering
		
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