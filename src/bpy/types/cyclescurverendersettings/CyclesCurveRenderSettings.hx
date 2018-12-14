package bpy.types.cyclescurverendersettings;
@:enum abstract Enum1(String) from String to String {
	var TRIANGLES : String = "TRIANGLES";
	var LINE_SEGMENTS : String = "LINE_SEGMENTS";
	var CURVE_SEGMENTS : String = "CURVE_SEGMENTS";
}@:enum abstract Enum2(String) from String to String {
	var RIBBONS : String = "RIBBONS";
	var THICK : String = "THICK";
}@:pythonImport("bpy.types.CyclesCurveRenderSettings") extern class CyclesCurveRenderSettings {
	/**
		Do not test the back-face of each strand
		
		Type: boolean, default True
	**/
	var cull_backfacing : Bool;
	/**
		Maximum extension that strand radius can be increased by
		
		Type: float in [0, 100], default 0.1
	**/
	var maximum_width : Float;
	/**
		Minimal pixel width for strands (0 - deactivated)
		
		Type: float in [0, 100], default 0.0
	**/
	var minimum_width : Float;
	/**
		Type of primitive used for hair rendering
		
		Type: enum in [‘TRIANGLES’, ‘LINE_SEGMENTS’, ‘CURVE_SEGMENTS’], default ‘LINE_SEGMENTS’
	**/
	var primitive : bpy.types.cyclescurverendersettings.CyclesCurveRenderSettings.Enum1;
	/**
		Resolution of generated mesh
		
		Type: int in [3, 64], default 3
	**/
	var resolution : Int;
	/**
		Form of hair
		
		Type: enum in [‘RIBBONS’, ‘THICK’], default ‘THICK’
	**/
	var shape : bpy.types.cyclescurverendersettings.CyclesCurveRenderSettings.Enum2;
	/**
		Number of subdivisions used in Cardinal curve intersection (power of 2)
		
		Type: int in [0, 24], default 4
	**/
	var subdivisions : Int;
	/**
		Activate Cycles hair rendering for particle system
		
		Type: boolean, default True
	**/
	var use_curves : Bool;
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