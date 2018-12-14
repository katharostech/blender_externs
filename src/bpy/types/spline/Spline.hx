package bpy.types.spline;
@:enum abstract Enum1(String) from String to String {
	var LINEAR : String = "LINEAR";
	var CARDINAL : String = "CARDINAL";
	var BSPLINE : String = "BSPLINE";
	var EASE : String = "EASE";
}@:enum abstract Enum2(String) from String to String {
	var LINEAR : String = "LINEAR";
	var CARDINAL : String = "CARDINAL";
	var BSPLINE : String = "BSPLINE";
	var EASE : String = "EASE";
}@:enum abstract Enum3(String) from String to String {
	var POLY : String = "POLY";
	var BEZIER : String = "BEZIER";
	var BSPLINE : String = "BSPLINE";
	var CARDINAL : String = "CARDINAL";
	var NURBS : String = "NURBS";
}/**
	Element of a curve, either NURBS, Bezier or Polyline or a character with text objects
**/
@:pythonImport("bpy.types.Spline") extern class Spline {
	/**
		Collection of points for Bezier curves only
		
		Type: SplineBezierPoints bpy_prop_collection of BezierSplinePoint, (readonly)
	**/
	var bezier_points(default, never) : bpy.types.splinebezierpoints.SplineBezierPoints;
	/**
		Location of this character in the text data (only for text curves)
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var character_index(default, never) : Int;
	/**
		Hide this curve in Edit mode
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		
		
		Type: int in [0, 32767], default 0
	**/
	var material_index : Int;
	/**
		NURBS order in the U direction (for splines and surfaces, higher values let points influence a greater area)
		
		Type: int in [2, 6], default 0
	**/
	var order_u : Int;
	/**
		NURBS order in the V direction (for surfaces only, higher values let points influence a greater area)
		
		Type: int in [2, 6], default 0
	**/
	var order_v : Int;
	/**
		Total number points for the curve or surface in the U direction
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var point_count_u(default, never) : Int;
	/**
		Total number points for the surface on the V direction
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var point_count_v(default, never) : Int;
	/**
		Collection of points that make up this poly or nurbs spline
		
		Type: SplinePoints bpy_prop_collection of SplinePoint, (readonly)
	**/
	var points(default, never) : bpy.types.splinepoints.SplinePoints;
	/**
		The type of radius interpolation for Bezier curves
		
		Type: enum in [‘LINEAR’, ‘CARDINAL’, ‘BSPLINE’, ‘EASE’], default ‘LINEAR’
	**/
	var radius_interpolation : bpy.types.spline.Spline.Enum1;
	/**
		Curve or Surface subdivisions per segment
		
		Type: int in [1, 1024], default 0
	**/
	var resolution_u : Int;
	/**
		Surface subdivisions per segment
		
		Type: int in [1, 1024], default 0
	**/
	var resolution_v : Int;
	/**
		The type of tilt interpolation for 3D, Bezier curves
		
		Type: enum in [‘LINEAR’, ‘CARDINAL’, ‘BSPLINE’, ‘EASE’], default ‘LINEAR’
	**/
	var tilt_interpolation : bpy.types.spline.Spline.Enum2;
	/**
		The interpolation type for this curve element
		
		Type: enum in [‘POLY’, ‘BEZIER’, ‘BSPLINE’, ‘CARDINAL’, ‘NURBS’], default ‘POLY’
	**/
	var type : bpy.types.spline.Spline.Enum3;
	/**
		Make this nurbs curve or surface act like a Bezier spline in the U direction (Order U must be 3 or 4, Cyclic U must be disabled)
		
		Type: boolean, default False
	**/
	var use_bezier_u : Bool;
	/**
		Make this nurbs surface act like a Bezier spline in the V direction (Order V must be 3 or 4, Cyclic V must be disabled)
		
		Type: boolean, default False
	**/
	var use_bezier_v : Bool;
	/**
		Make this curve or surface a closed loop in the U direction
		
		Type: boolean, default False
	**/
	var use_cyclic_u : Bool;
	/**
		Make this surface a closed loop in the V direction
		
		Type: boolean, default False
	**/
	var use_cyclic_v : Bool;
	/**
		Make this nurbs curve or surface meet the endpoints in the U direction (Cyclic U must be disabled)
		
		Type: boolean, default False
	**/
	var use_endpoint_u : Bool;
	/**
		Make this nurbs surface meet the endpoints in the V direction (Cyclic V must be disabled)
		
		Type: boolean, default False
	**/
	var use_endpoint_v : Bool;
	/**
		Smooth the normals of the surface or beveled curve
		
		Type: boolean, default False
	**/
	var use_smooth : Bool;
	/**
		Calculate spline length
		@param resolution Resolution, Spline resolution to be used, 0 defaults to the resolution_u — int in [0, 1024], (optional)
		
		@returns float in [0, inf]
	**/
	function calc_length(resolution:Int):Float;
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