package bpy.types.splinepoint;
/**
	Spline point without handles
**/
@:pythonImport("bpy.types.SplinePoint") extern class SplinePoint {
	/**
		Point coordinates
		
		Type: float array of 4 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var co : Array<Float>;
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
		Selection status
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Tilt in 3D View
		
		Type: float in [-376.991, 376.991], default 0.0
	**/
	var tilt : Float;
	/**
		NURBS weight
		
		Type: float in [-inf, inf], default 0.0
	**/
	var weight : Float;
	/**
		Softbody goal weight
		
		Type: float in [0.01, 100], default 0.0
	**/
	var weight_softbody : Float;
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