package bpy.types.masksplinepointuw;
/**
	Single point in spline segment defining feather
**/
@:native("bpy.types.MaskSplinePointUW") extern class MaskSplinePointUW {
	/**
		Selection status
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		U coordinate of point along spline segment
		
		Type: float in [0, 1], default 0.0
	**/
	var u : Float;
	/**
		Weight of feather point
		
		Type: float in [0, 1], default 0.0
	**/
	var weight : Float;
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