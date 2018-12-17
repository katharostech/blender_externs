package bpy.types.curvemap;
@:enum abstract Enum1(String) from String to String {
	var HORIZONTAL : String = "HORIZONTAL";
	var EXTRAPOLATED : String = "EXTRAPOLATED";
}/**
	Curve in a curve mapping
**/
@:native("bpy.types.CurveMap") extern class CurveMap {
	/**
		Extrapolate the curve or extend it horizontally
		
		Type: enum in [‘HORIZONTAL’, ‘EXTRAPOLATED’], default ‘HORIZONTAL’
	**/
	var extend : bpy.types.curvemap.CurveMap.Enum1;
	/**
		
		
		Type: CurveMapPoints bpy_prop_collection of CurveMapPoint, (readonly)
	**/
	var points(default, never) : bpy.types.curvemappoints.CurveMapPoints;
	/**
		Evaluate curve at given location
		@param position Position, Position to evaluate curve at — float in [-inf, inf]
		
		@returns float in [-inf, inf]
	**/
	function evaluate(position:Float):Float;
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