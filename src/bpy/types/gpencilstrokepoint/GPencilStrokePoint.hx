package bpy.types.gpencilstrokepoint;
/**
	Data point for freehand stroke curve
**/
@:pythonImport("bpy.types.GPencilStrokePoint") extern class GPencilStrokePoint {
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var co : Array<Float>;
	/**
		Pressure of tablet at point when drawing it
		
		Type: float in [0, 1], default 0.0
	**/
	var pressure : Float;
	/**
		Point is selected for viewport editing
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Color intensity (alpha factor)
		
		Type: float in [0, 1], default 0.0
	**/
	var strength : Float;
	/**
		Internal UV factor
		
		Type: float in [0, 1], default 0.0
	**/
	var uv_factor : Float;
	/**
		Internal UV factor for dot mode
		
		Type: float in [0, 6.28319], default 0.0
	**/
	var uv_rotation : Float;
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