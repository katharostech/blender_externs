package bpy.types.masksplinepoints;
/**
	Collection of masking spline points
**/
@:native("bpy.types.MaskSplinePoints") extern class MaskSplinePoints {
	/**
		Add a number of point to this spline
		@param count Number, Number of points to add to the spline — int in [0, inf]
	**/
	function add(count:Int):Void;
	/**
		Remove a point from a spline
		@param point The point to remove — MaskSplinePoint, (never None)
	**/
	function remove(point:bpy.types.masksplinepoint.MaskSplinePoint):Void;
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