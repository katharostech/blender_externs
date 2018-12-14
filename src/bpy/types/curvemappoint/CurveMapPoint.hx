package bpy.types.curvemappoint;
@:enum abstract Enum1(String) from String to String {
	var AUTO : String = "AUTO";
	var AUTO_CLAMPED : String = "AUTO_CLAMPED";
	var VECTOR : String = "VECTOR";
}/**
	Point of a curve used for a curve mapping
**/
@:pythonImport("bpy.types.CurveMapPoint") extern class CurveMapPoint {
	/**
		Curve interpolation at this point: Bezier or vector
		
		Type: enum in [‘AUTO’, ‘AUTO_CLAMPED’, ‘VECTOR’], default ‘AUTO’
	**/
	var handle_type : bpy.types.curvemappoint.CurveMapPoint.Enum1;
	/**
		X/Y coordinates of the curve point
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var location : Array<Float>;
	/**
		Selection state of the curve point
		
		Type: boolean, default False
	**/
	var select : Bool;
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