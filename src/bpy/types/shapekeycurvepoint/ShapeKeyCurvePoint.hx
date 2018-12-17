package bpy.types.shapekeycurvepoint;
/**
	Point in a shape key for curves
**/
@:native("bpy.types.ShapeKeyCurvePoint") extern class ShapeKeyCurvePoint {
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var co : Array<Float>;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var tilt : Float;
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