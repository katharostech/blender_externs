package bpy.types.maskspline;
@:enum abstract Enum1(String) from String to String {
	var EVEN : String = "EVEN";
	var SMOOTH : String = "SMOOTH";
}@:enum abstract Enum2(String) from String to String {
	var LINEAR : String = "LINEAR";
	var EASE : String = "EASE";
}/**
	Single spline used for defining mask shape
**/
@:pythonImport("bpy.types.MaskSpline") extern class MaskSpline {
	/**
		The method used for calculating the feather offset
		
		Type: enum in [‘EVEN’, ‘SMOOTH’], default ‘EVEN’
	**/
	var offset_mode : bpy.types.maskspline.MaskSpline.Enum1;
	/**
		Collection of points
		
		Type: MaskSplinePoints bpy_prop_collection of MaskSplinePoint, (readonly)
	**/
	var points(default, never) : bpy.types.masksplinepoints.MaskSplinePoints;
	/**
		Make this spline a closed loop
		
		Type: boolean, default False
	**/
	var use_cyclic : Bool;
	/**
		Make this spline filled
		
		Type: boolean, default False
	**/
	var use_fill : Bool;
	/**
		Prevent feather from self-intersections
		
		Type: boolean, default False
	**/
	var use_self_intersection_check : Bool;
	/**
		The type of weight interpolation for spline
		
		Type: enum in [‘LINEAR’, ‘EASE’], default ‘LINEAR’
	**/
	var weight_interpolation : bpy.types.maskspline.MaskSpline.Enum2;
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