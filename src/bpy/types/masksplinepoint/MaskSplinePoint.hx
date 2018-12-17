package bpy.types.masksplinepoint;
@:enum abstract Enum1(String) from String to String {
	var AUTO : String = "AUTO";
	var VECTOR : String = "VECTOR";
	var ALIGNED : String = "ALIGNED";
	var ALIGNED_DOUBLESIDE : String = "ALIGNED_DOUBLESIDE";
	var FREE : String = "FREE";
}@:enum abstract Enum2(String) from String to String {
	var AUTO : String = "AUTO";
	var VECTOR : String = "VECTOR";
	var ALIGNED : String = "ALIGNED";
	var ALIGNED_DOUBLESIDE : String = "ALIGNED_DOUBLESIDE";
	var FREE : String = "FREE";
}@:enum abstract Enum3(String) from String to String {
	var AUTO : String = "AUTO";
	var VECTOR : String = "VECTOR";
	var ALIGNED : String = "ALIGNED";
	var ALIGNED_DOUBLESIDE : String = "ALIGNED_DOUBLESIDE";
	var FREE : String = "FREE";
}/**
	Single point in spline used for defining mask
**/
@:native("bpy.types.MaskSplinePoint") extern class MaskSplinePoint {
	/**
		Coordinates of the control point
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var co : Array<Float>;
	/**
		Points defining feather
		
		Type: bpy_prop_collection of MaskSplinePointUW, (readonly)
	**/
	var feather_points(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Coordinates of the first handle
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var handle_left : Array<Float>;
	/**
		Handle type
		
		Type: enum in [‘AUTO’, ‘VECTOR’, ‘ALIGNED’, ‘ALIGNED_DOUBLESIDE’, ‘FREE’], default ‘FREE’
	**/
	var handle_left_type : bpy.types.masksplinepoint.MaskSplinePoint.Enum1;
	/**
		Coordinates of the second handle
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var handle_right : Array<Float>;
	/**
		Handle type
		
		Type: enum in [‘AUTO’, ‘VECTOR’, ‘ALIGNED’, ‘ALIGNED_DOUBLESIDE’, ‘FREE’], default ‘FREE’
	**/
	var handle_right_type : bpy.types.masksplinepoint.MaskSplinePoint.Enum2;
	/**
		Handle type
		
		Type: enum in [‘AUTO’, ‘VECTOR’, ‘ALIGNED’, ‘ALIGNED_DOUBLESIDE’, ‘FREE’], default ‘FREE’
	**/
	var handle_type : bpy.types.masksplinepoint.MaskSplinePoint.Enum3;
	/**
		
		
		Type: MaskParent, (readonly)
	**/
	var parent(default, never) : bpy.types.maskparent.MaskParent;
	/**
		Selection status
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Weight of the point
		
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