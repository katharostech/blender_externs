package bpy.types.fcurvesample;
/**
	Sample point for F-Curve
**/
@:pythonImport("bpy.types.FCurveSample") extern class FCurveSample {
	/**
		Point coordinates
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var co : Array<Float>;
	/**
		Selection status
		
		Type: boolean, default False
	**/
	var select : Bool;
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