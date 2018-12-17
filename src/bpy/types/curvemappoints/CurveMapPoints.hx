package bpy.types.curvemappoints;
/**
	Collection of Curve Map Points
**/
@:native("bpy.types.CurveMapPoints") extern class CurveMapPoints {
	/**
		Add point to CurveMap
		@param position Position, Position to add point — float in [-inf, inf]
		@param value Value, Value of point — float in [-inf, inf]
		
		@returns CurveMapPoint
	**/
	function pyNew(position:Float, value:Float):bpy.types.curvemappoint.CurveMapPoint;
	/**
		Delete point from CurveMap
		@param point PointElement to remove — CurveMapPoint, (never None)
	**/
	function remove(point:bpy.types.curvemappoint.CurveMapPoint):Void;
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