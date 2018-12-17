package bpy.types.curvesplines;
@:enum abstract Enum1(String) from String to String {
	var POLY : String = "POLY";
	var BEZIER : String = "BEZIER";
	var BSPLINE : String = "BSPLINE";
	var CARDINAL : String = "CARDINAL";
	var NURBS : String = "NURBS";
}/**
	Collection of curve splines
**/
@:native("bpy.types.CurveSplines") extern class CurveSplines {
	/**
		Active curve spline
		
		Type: Spline
	**/
	var active : bpy.types.spline.Spline;
	/**
		Add a new spline to the curve
		@param type type for the new spline — enum in ['POLY', 'BEZIER', 'BSPLINE', 'CARDINAL', 'NURBS']
		
		@returns Spline
	**/
	function pyNew(type:bpy.types.curvesplines.CurveSplines.Enum1):bpy.types.spline.Spline;
	/**
		Remove a spline from a curve
		@param spline The spline to remove — Spline, (never None)
	**/
	function remove(spline:bpy.types.spline.Spline):Void;
	/**
		Remove all splines from a curve
	**/
	function clear():Void;
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