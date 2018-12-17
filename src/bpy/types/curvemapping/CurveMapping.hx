package bpy.types.curvemapping;
@:enum abstract Enum1(String) from String to String {
	var STANDARD : String = "STANDARD";
	var FILMLIKE : String = "FILMLIKE";
}/**
	Curve mapping to map color, vector and scalar values to other values using a user defined curve
**/
@:native("bpy.types.CurveMapping") extern class CurveMapping {
	/**
		For RGB curves, the color that black is mapped to
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var black_level : Array<Float>;
	/**
		
		
		Type: float in [-100, 100], default 0.0
	**/
	var clip_max_x : Float;
	/**
		
		
		Type: float in [-100, 100], default 0.0
	**/
	var clip_max_y : Float;
	/**
		
		
		Type: float in [-100, 100], default 0.0
	**/
	var clip_min_x : Float;
	/**
		
		
		Type: float in [-100, 100], default 0.0
	**/
	var clip_min_y : Float;
	/**
		
		
		Type: bpy_prop_collection of CurveMap, (readonly)
	**/
	var curves(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Tone of the curve
		
		Type: enum in [‘STANDARD’, ‘FILMLIKE’], default ‘STANDARD’
	**/
	var tone : bpy.types.curvemapping.CurveMapping.Enum1;
	/**
		Force the curve view to fit a defined boundary
		
		Type: boolean, default False
	**/
	var use_clip : Bool;
	/**
		For RGB curves, the color that white is mapped to
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var white_level : Array<Float>;
	/**
		Update curve mapping after making changes
	**/
	function update():Void;
	/**
		Initialize curve
	**/
	function initialize():Void;
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