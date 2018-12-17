package bpy.types.linestylethicknessmodifier_creaseangle;
@:enum abstract Enum1(String) from String to String {
	var MIX : String = "MIX";
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
	var MULTIPLY : String = "MULTIPLY";
	var DIVIDE : String = "DIVIDE";
	var DIFFERENCE : String = "DIFFERENCE";
	var MINIMUM : String = "MINIMUM";
	var MAXIMUM : String = "MAXIMUM";
}@:enum abstract Enum2(String) from String to String {
	var LINEAR : String = "LINEAR";
	var CURVE : String = "CURVE";
}@:enum abstract Enum3(String) from String to String {
	var ALONG_STROKE : String = "ALONG_STROKE";
	var CALLIGRAPHY : String = "CALLIGRAPHY";
	var CREASE_ANGLE : String = "CREASE_ANGLE";
	var pyCURVATURE_3D : String = "CURVATURE_3D";
	var DISTANCE_FROM_CAMERA : String = "DISTANCE_FROM_CAMERA";
	var DISTANCE_FROM_OBJECT : String = "DISTANCE_FROM_OBJECT";
	var MATERIAL : String = "MATERIAL";
	var NOISE : String = "NOISE";
	var TANGENT : String = "TANGENT";
}/**
	Line thickness based on the angle between two adjacent faces
**/
@:native("bpy.types.LineStyleThicknessModifier_CreaseAngle") extern class LineStyleThicknessModifier_CreaseAngle {
	/**
		Maximum angle to modify thickness
		
		Type: float in [-inf, inf], default 0.0
	**/
	var angle_max : Float;
	/**
		Minimum angle to modify thickness
		
		Type: float in [-inf, inf], default 0.0
	**/
	var angle_min : Float;
	/**
		Specify how the modifier value is blended into the base value
		
		Type: enum in [‘MIX’, ‘ADD’, ‘SUBTRACT’, ‘MULTIPLY’, ‘DIVIDE’, ‘DIFFERENCE’, ‘MINIMUM’, ‘MAXIMUM’], default ‘MIX’
	**/
	var blend : bpy.types.linestylethicknessmodifier_creaseangle.LineStyleThicknessModifier_CreaseAngle.Enum1;
	/**
		Curve used for the curve mapping
		
		Type: CurveMapping, (readonly)
	**/
	var curve(default, never) : bpy.types.curvemapping.CurveMapping;
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
		Invert the fade-out direction of the linear mapping
		
		Type: boolean, default False
	**/
	var invert : Bool;
	/**
		Select the mapping type
		
		Type: enum in [‘LINEAR’, ‘CURVE’], default ‘LINEAR’
	**/
	var mapping : bpy.types.linestylethicknessmodifier_creaseangle.LineStyleThicknessModifier_CreaseAngle.Enum2;
	/**
		Name of the modifier
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Maximum thickness
		
		Type: float in [0, 10000], default 0.0
	**/
	var thickness_max : Float;
	/**
		Minimum thickness
		
		Type: float in [0, 10000], default 0.0
	**/
	var thickness_min : Float;
	/**
		Type of the modifier
		
		Type: enum in [‘ALONG_STROKE’, ‘CALLIGRAPHY’, ‘CREASE_ANGLE’, ‘CURVATURE_3D’, ‘DISTANCE_FROM_CAMERA’, ‘DISTANCE_FROM_OBJECT’, ‘MATERIAL’, ‘NOISE’, ‘TANGENT’], default ‘ALONG_STROKE’, (readonly)
	**/
	var type(default, never) : bpy.types.linestylethicknessmodifier_creaseangle.LineStyleThicknessModifier_CreaseAngle.Enum3;
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