package bpy.types.unifiedpaintsettings;
/**
	Overrides for some of the active brush’s settings
**/
@:pythonImport("bpy.types.UnifiedPaintSettings") extern class UnifiedPaintSettings {
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var secondary_color : Array<Float>;
	/**
		Radius of the brush
		
		Type: int in [1, 5000], default 0
	**/
	var size : Int;
	/**
		How powerful the effect of the brush is when applied
		
		Type: float in [0, 10], default 0.5
	**/
	var strength : Float;
	/**
		Radius of brush in Blender units
		
		Type: float in [0.001, inf], default 0.0
	**/
	var unprojected_radius : Float;
	/**
		When locked brush stays same size relative to object; when unlocked brush size is given in pixels
		
		Type: boolean, default False
	**/
	var use_locked_size : Bool;
	/**
		Enable tablet pressure sensitivity for size
		
		Type: boolean, default False
	**/
	var use_pressure_size : Bool;
	/**
		Enable tablet pressure sensitivity for strength
		
		Type: boolean, default False
	**/
	var use_pressure_strength : Bool;
	/**
		Instead of per-brush color, the color is shared across brushes
		
		Type: boolean, default False
	**/
	var use_unified_color : Bool;
	/**
		Instead of per-brush radius, the radius is shared across brushes
		
		Type: boolean, default False
	**/
	var use_unified_size : Bool;
	/**
		Instead of per-brush strength, the strength is shared across brushes
		
		Type: boolean, default False
	**/
	var use_unified_strength : Bool;
	/**
		Instead of per-brush weight, the weight is shared across brushes
		
		Type: boolean, default False
	**/
	var use_unified_weight : Bool;
	/**
		Weight to assign in vertex groups
		
		Type: float in [0, 1], default 0.5
	**/
	var weight : Float;
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