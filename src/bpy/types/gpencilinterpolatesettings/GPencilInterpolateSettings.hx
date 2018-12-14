package bpy.types.gpencilinterpolatesettings;
@:enum abstract Enum1(String) from String to String {
	var AUTO : String = "AUTO";
	var EASE_IN : String = "EASE_IN";
	var EASE_OUT : String = "EASE_OUT";
	var EASE_IN_OUT : String = "EASE_IN_OUT";
}@:enum abstract Enum2(String) from String to String {
	var LINEAR : String = "LINEAR";
	var CUSTOM : String = "CUSTOM";
	var SINE : String = "SINE";
	var QUAD : String = "QUAD";
	var CUBIC : String = "CUBIC";
	var QUART : String = "QUART";
	var QUINT : String = "QUINT";
	var EXPO : String = "EXPO";
	var CIRC : String = "CIRC";
	var BACK : String = "BACK";
	var BOUNCE : String = "BOUNCE";
	var ELASTIC : String = "ELASTIC";
}/**
	Settings for Grease Pencil interpolation tools
**/
@:pythonImport("bpy.types.GPencilInterpolateSettings") extern class GPencilInterpolateSettings {
	/**
		Amount to boost elastic bounces for ‘elastic’ easing
		
		Type: float in [0, inf], default 0.0
	**/
	var amplitude : Float;
	/**
		Amount of overshoot for ‘back’ easing
		
		Type: float in [-inf, inf], default 0.0
	**/
	var back : Float;
	/**
		Which ends of the segment between the preceding and following grease pencil frames easing interpolation is applied to
		
		Type: enum in [‘AUTO’, ‘EASE_IN’, ‘EASE_OUT’, ‘EASE_IN_OUT’], default ‘AUTO’
	**/
	var easing : bpy.types.gpencilinterpolatesettings.GPencilInterpolateSettings.Enum1;
	/**
		Interpolate all layers, not only active
		
		Type: boolean, default False
	**/
	var interpolate_all_layers : Bool;
	/**
		Interpolate only selected strokes in the original frame
		
		Type: boolean, default False
	**/
	var interpolate_selected_only : Bool;
	/**
		Custom curve to control ‘sequence’ interpolation between Grease Pencil frames
		
		Type: CurveMapping, (readonly)
	**/
	var interpolation_curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Time between bounces for elastic easing
		
		Type: float in [-inf, inf], default 0.0
	**/
	var period : Float;
	/**
		Interpolation method to use the next time ‘Interpolate Sequence’ is run
		
		Type: enum in [‘LINEAR’, ‘CUSTOM’, ‘SINE’, ‘QUAD’, ‘CUBIC’, ‘QUART’, ‘QUINT’, ‘EXPO’, ‘CIRC’, ‘BACK’, ‘BOUNCE’, ‘ELASTIC’], default ‘LINEAR’
	**/
	var type : bpy.types.gpencilinterpolatesettings.GPencilInterpolateSettings.Enum2;
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