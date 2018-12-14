package bpy.types.curvepaintsettings;
@:enum abstract Enum1(String) from String to String {
	var POLY : String = "POLY";
	var BEZIER : String = "BEZIER";
}@:enum abstract Enum2(String) from String to String {
	var CURSOR : String = "CURSOR";
	var SURFACE : String = "SURFACE";
}@:enum abstract Enum3(String) from String to String {
	var REFIT : String = "REFIT";
	var SPLIT : String = "SPLIT";
}@:enum abstract Enum4(String) from String to String {
	var NORMAL_VIEW : String = "NORMAL_VIEW";
	var NORMAL_SURFACE : String = "NORMAL_SURFACE";
	var VIEW : String = "VIEW";
}@:pythonImport("bpy.types.CurvePaintSettings") extern class CurvePaintSettings {
	/**
		Angles above this are considered corners
		
		Type: float in [0, 3.14159], default 0.0
	**/
	var corner_angle : Float;
	/**
		Type of curve to use for new strokes
		
		Type: enum in [‘POLY’, ‘BEZIER’], default ‘POLY’
	**/
	var curve_type : bpy.types.curvepaintsettings.CurvePaintSettings.Enum1;
	/**
		Method of projecting depth
		
		Type: enum in [‘CURSOR’, ‘SURFACE’], default ‘CURSOR’
	**/
	var depth_mode : bpy.types.curvepaintsettings.CurvePaintSettings.Enum2;
	/**
		Allow deviation for a smoother, less precise line
		
		Type: int in [1, 100], default 0
	**/
	var error_threshold : Int;
	/**
		Curve fitting method
		
		Type: enum in [‘REFIT’, ‘SPLIT’], default ‘REFIT’
	**/
	var fit_method : bpy.types.curvepaintsettings.CurvePaintSettings.Enum3;
	/**
		Radius to use when the maximum pressure is applied (or when a tablet isn’t used)
		
		Type: float in [0, 100], default 0.0
	**/
	var radius_max : Float;
	/**
		Minimum radius when the minimum pressure is applied (also the minimum when tapering)
		
		Type: float in [0, 100], default 0.0
	**/
	var radius_min : Float;
	/**
		Taper factor for the radius of each point along the curve
		
		Type: float in [0, 10], default 0.0
	**/
	var radius_taper_end : Float;
	/**
		Taper factor for the radius of each point along the curve
		
		Type: float in [0, 1], default 0.0
	**/
	var radius_taper_start : Float;
	/**
		Offset the stroke from the surface
		
		Type: float in [-10, 10], default 0.0
	**/
	var surface_offset : Float;
	/**
		Plane for projected stroke
		
		Type: enum in [‘NORMAL_VIEW’, ‘NORMAL_SURFACE’, ‘VIEW’], default ‘NORMAL_VIEW’
	**/
	var surface_plane : bpy.types.curvepaintsettings.CurvePaintSettings.Enum4;
	/**
		Detect corners and use non-aligned handles
		
		Type: boolean, default False
	**/
	var use_corners_detect : Bool;
	/**
		Apply a fixed offset (don’t scale by the radius)
		
		Type: boolean, default False
	**/
	var use_offset_absolute : Bool;
	/**
		Map tablet pressure to curve radius
		
		Type: boolean, default False
	**/
	var use_pressure_radius : Bool;
	/**
		Use the start of the stroke for the depth
		
		Type: boolean, default False
	**/
	var use_stroke_endpoints : Bool;
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