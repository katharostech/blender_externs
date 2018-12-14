package bpy.types.splinebezierpoints;
/**
	Collection of spline Bezier points
**/
@:pythonImport("bpy.types.SplineBezierPoints") extern class SplineBezierPoints {
	/**
		Add a number of points to this spline
		@param count Number, Number of points to add to the spline — int in [0, inf]
	**/
	function add(count:Int):Void;
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