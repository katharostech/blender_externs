package bpy.types.masksplines;
/**
	Collection of masking splines
**/
@:native("bpy.types.MaskSplines") extern class MaskSplines {
	/**
		Active spline of masking layer
		
		Type: MaskSpline
	**/
	var active : bpy.types.maskspline.MaskSpline;
	/**
		Active spline of masking layer
		
		Type: MaskSplinePoint
	**/
	var active_point : bpy.types.masksplinepoint.MaskSplinePoint;
	/**
		Add a new spline to the layer
		
		@returns MaskSpline
	**/
	function pyNew():bpy.types.maskspline.MaskSpline;
	/**
		Remove a spline from a layer
		@param spline The spline to remove — MaskSpline, (never None)
	**/
	function remove(spline:bpy.types.maskspline.MaskSpline):Void;
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