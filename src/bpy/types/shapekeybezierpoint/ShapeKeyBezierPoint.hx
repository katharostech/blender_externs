package bpy.types.shapekeybezierpoint;
/**
	Point in a shape key for Bezier curves
**/
@:pythonImport("bpy.types.ShapeKeyBezierPoint") extern class ShapeKeyBezierPoint {
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var co : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var handle_left : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var handle_right : Array<Float>;
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