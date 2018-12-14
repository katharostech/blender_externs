package bpy.types.linestylethicknessmodifier_calligraphy;
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
	Change line thickness so that stroke looks like made with a calligraphic pen
**/
@:pythonImport("bpy.types.LineStyleThicknessModifier_Calligraphy") extern class LineStyleThicknessModifier_Calligraphy {
	/**
		Specify how the modifier value is blended into the base value
		
		Type: enum in [‘MIX’, ‘ADD’, ‘SUBTRACT’, ‘MULTIPLY’, ‘DIVIDE’, ‘DIFFERENCE’, ‘MINIMUM’, ‘MAXIMUM’], default ‘MIX’
	**/
	var blend : bpy.types.linestylethicknessmodifier_calligraphy.LineStyleThicknessModifier_Calligraphy.Enum1;
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
		Angle of the main direction
		
		Type: float in [-inf, inf], default 0.0
	**/
	var orientation : Float;
	/**
		Maximum thickness in the main direction
		
		Type: float in [0, 10000], default 0.0
	**/
	var thickness_max : Float;
	/**
		Minimum thickness in the direction perpendicular to the main direction
		
		Type: float in [0, 10000], default 0.0
	**/
	var thickness_min : Float;
	/**
		Type of the modifier
		
		Type: enum in [‘ALONG_STROKE’, ‘CALLIGRAPHY’, ‘CREASE_ANGLE’, ‘CURVATURE_3D’, ‘DISTANCE_FROM_CAMERA’, ‘DISTANCE_FROM_OBJECT’, ‘MATERIAL’, ‘NOISE’, ‘TANGENT’], default ‘ALONG_STROKE’, (readonly)
	**/
	var type(default, never) : bpy.types.linestylethicknessmodifier_calligraphy.LineStyleThicknessModifier_Calligraphy.Enum2;
	/**
		Enable or disable this modifier during stroke rendering
		
		Type: boolean, default False
	**/
	var use : Bool;
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