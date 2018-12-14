package bpy.types.linestylethicknessmodifier_material;
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
	var LINE : String = "LINE";
	var LINE_R : String = "LINE_R";
	var LINE_G : String = "LINE_G";
	var LINE_B : String = "LINE_B";
	var LINE_A : String = "LINE_A";
	var DIFF : String = "DIFF";
	var DIFF_R : String = "DIFF_R";
	var DIFF_G : String = "DIFF_G";
	var DIFF_B : String = "DIFF_B";
	var SPEC : String = "SPEC";
	var SPEC_R : String = "SPEC_R";
	var SPEC_G : String = "SPEC_G";
	var SPEC_B : String = "SPEC_B";
	var SPEC_HARD : String = "SPEC_HARD";
	var ALPHA : String = "ALPHA";
}@:enum abstract Enum4(String) from String to String {
	var ALONG_STROKE : String = "ALONG_STROKE";
	var CALLIGRAPHY : String = "CALLIGRAPHY";
	var CREASE_ANGLE : String = "CREASE_ANGLE";
	var CURVATURE_3D : String = "CURVATURE_3D";
	var DISTANCE_FROM_CAMERA : String = "DISTANCE_FROM_CAMERA";
	var DISTANCE_FROM_OBJECT : String = "DISTANCE_FROM_OBJECT";
	var MATERIAL : String = "MATERIAL";
	var NOISE : String = "NOISE";
	var TANGENT : String = "TANGENT";
}/**
	Change line thickness based on a material attribute
**/
@:pythonImport("bpy.types.LineStyleThicknessModifier_Material") extern class LineStyleThicknessModifier_Material {
	/**
		Specify how the modifier value is blended into the base value
		
		Type: enum in [‘MIX’, ‘ADD’, ‘SUBTRACT’, ‘MULTIPLY’, ‘DIVIDE’, ‘DIFFERENCE’, ‘MINIMUM’, ‘MAXIMUM’], default ‘MIX’
	**/
	var blend : bpy.types.linestylethicknessmodifier_material.LineStyleThicknessModifier_Material.Enum1;
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
	var mapping : bpy.types.linestylethicknessmodifier_material.LineStyleThicknessModifier_Material.Enum2;
	/**
		Specify which material attribute is used
		
		Type: enum in [‘LINE’, ‘LINE_R’, ‘LINE_G’, ‘LINE_B’, ‘LINE_A’, ‘DIFF’, ‘DIFF_R’, ‘DIFF_G’, ‘DIFF_B’, ‘SPEC’, ‘SPEC_R’, ‘SPEC_G’, ‘SPEC_B’, ‘SPEC_HARD’, ‘ALPHA’], default ‘LINE’
	**/
	var material_attribute : bpy.types.linestylethicknessmodifier_material.LineStyleThicknessModifier_Material.Enum3;
	/**
		Name of the modifier
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Type of the modifier
		
		Type: enum in [‘ALONG_STROKE’, ‘CALLIGRAPHY’, ‘CREASE_ANGLE’, ‘CURVATURE_3D’, ‘DISTANCE_FROM_CAMERA’, ‘DISTANCE_FROM_OBJECT’, ‘MATERIAL’, ‘NOISE’, ‘TANGENT’], default ‘ALONG_STROKE’, (readonly)
	**/
	var type(default, never) : bpy.types.linestylethicknessmodifier_material.LineStyleThicknessModifier_Material.Enum4;
	/**
		Enable or disable this modifier during stroke rendering
		
		Type: boolean, default False
	**/
	var use : Bool;
	/**
		Maximum output value of the mapping
		
		Type: float in [-inf, inf], default 0.0
	**/
	var value_max : Float;
	/**
		Minimum output value of the mapping
		
		Type: float in [-inf, inf], default 0.0
	**/
	var value_min : Float;
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