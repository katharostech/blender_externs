package bpy.types.beziersplinepoint;
@:enum abstract Enum1(String) from String to String {
	var FREE : String = "FREE";
	var VECTOR : String = "VECTOR";
	var ALIGNED : String = "ALIGNED";
	var AUTO : String = "AUTO";
}@:enum abstract Enum2(String) from String to String {
	var FREE : String = "FREE";
	var VECTOR : String = "VECTOR";
	var ALIGNED : String = "ALIGNED";
	var AUTO : String = "AUTO";
}/**
	Bezier curve point with two handles
**/
@:native("bpy.types.BezierSplinePoint") extern class BezierSplinePoint {
	/**
		Coordinates of the control point
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var co : Array<Float>;
	/**
		Coordinates of the first handle
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var handle_left : Array<Float>;
	/**
		Handle types
		
		Type: enum in [‘FREE’, ‘VECTOR’, ‘ALIGNED’, ‘AUTO’], default ‘FREE’
	**/
	var handle_left_type : bpy.types.beziersplinepoint.BezierSplinePoint.Enum1;
	/**
		Coordinates of the second handle
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var handle_right : Array<Float>;
	/**
		Handle types
		
		Type: enum in [‘FREE’, ‘VECTOR’, ‘ALIGNED’, ‘AUTO’], default ‘FREE’
	**/
	var handle_right_type : bpy.types.beziersplinepoint.BezierSplinePoint.Enum2;
	/**
		Visibility status
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		Radius for beveling
		
		Type: float in [0, inf], default 0.0
	**/
	var radius : Float;
	/**
		Control point selection status
		
		Type: boolean, default False
	**/
	var select_control_point : Bool;
	/**
		Handle 1 selection status
		
		Type: boolean, default False
	**/
	var select_left_handle : Bool;
	/**
		Handle 2 selection status
		
		Type: boolean, default False
	**/
	var select_right_handle : Bool;
	/**
		Tilt in 3D View
		
		Type: float in [-376.991, 376.991], default 0.0
	**/
	var tilt : Float;
	/**
		Softbody goal weight
		
		Type: float in [0.01, 100], default 0.0
	**/
	var weight_softbody : Float;
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