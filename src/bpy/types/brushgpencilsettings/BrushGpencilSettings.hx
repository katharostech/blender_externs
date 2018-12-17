package bpy.types.brushgpencilsettings;
@:enum abstract Enum1(String) from String to String {
	var SOFT : String = "SOFT";
	var HARD : String = "HARD";
	var STROKE : String = "STROKE";
}@:enum abstract Enum2(String) from String to String {
	var STROKE : String = "STROKE";
	var CONTROL : String = "CONTROL";
	var BOTH : String = "BOTH";
}@:enum abstract Enum3(String) from String to String {
	var PENCIL : String = "PENCIL";
	var PEN : String = "PEN";
	var INK : String = "INK";
	var INKNOISE : String = "INKNOISE";
	var BLOCK : String = "BLOCK";
	var MARKER : String = "MARKER";
	var FILL : String = "FILL";
	var SOFT : String = "SOFT";
	var HARD : String = "HARD";
	var STROKE : String = "STROKE";
}/**
	Settings for grease pencil brush
**/
@:native("bpy.types.BrushGpencilSettings") extern class BrushGpencilSettings {
	/**
		Amount of smoothing while drawing
		
		Type: float in [0, 1], default 0.0
	**/
	var active_smooth_factor : Float;
	/**
		Direction of the stroke at which brush gives maximal thickness (0° for horizontal)
		
		Type: float in [-1.5708, 1.5708], default 0.0
	**/
	var angle : Float;
	/**
		Reduce brush thickness by this factor when stroke is perpendicular to ‘Angle’ direction
		
		Type: float in [0, 1], default 0.0
	**/
	var angle_factor : Float;
	/**
		Curve used for the jitter effect
		
		Type: CurveMapping, (readonly)
	**/
	var curve_jitter(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Curve used for the sensitivity
		
		Type: CurveMapping, (readonly)
	**/
	var curve_sensitivity(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Curve used for the strength
		
		Type: CurveMapping, (readonly)
	**/
	var curve_strength(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Eraser Mode
		
		Type: enum in [‘SOFT’, ‘HARD’, ‘STROKE’], default ‘SOFT’
	**/
	var eraser_mode : bpy.types.brushgpencilsettings.BrushGpencilSettings.Enum1;
	/**
		Amount of erasing for strength
		
		Type: float in [0, 100], default 0.0
	**/
	var eraser_strength_factor : Float;
	/**
		Amount of erasing for thickness
		
		Type: float in [0, 100], default 0.0
	**/
	var eraser_thickness_factor : Float;
	/**
		Mode to draw boundary limits
		
		Type: enum in [‘STROKE’, ‘CONTROL’, ‘BOTH’], default ‘BOTH’
	**/
	var fill_draw_mode : bpy.types.brushgpencilsettings.BrushGpencilSettings.Enum2;
	/**
		Size in pixels to consider the leak closed
		
		Type: int in [0, 100], default 0
	**/
	var fill_leak : Int;
	/**
		Number of simplify steps (large values reduce fill accuracy)
		
		Type: int in [0, 10], default 0
	**/
	var fill_simplify_level : Int;
	/**
		Threshold to consider color transparent for filling
		
		Type: float in [0, 1], default 0.0
	**/
	var fill_threshold : Float;
	/**
		
		
		Type: enum in [‘PENCIL’, ‘PEN’, ‘INK’, ‘INKNOISE’, ‘BLOCK’, ‘MARKER’, ‘FILL’, ‘SOFT’, ‘HARD’, ‘STROKE’], default ‘PENCIL’
	**/
	var gp_icon : bpy.types.brushgpencilsettings.BrushGpencilSettings.Enum3;
	/**
		Generate intermediate points for very fast mouse movements. Set to 0 to disable
		
		Type: int in [0, 10], default 0
	**/
	var input_samples : Int;
	/**
		Material used for strokes drawn using this brush
		
		Type: Material
	**/
	var material : bpy.types.material.Material;
	/**
		Jitter factor for new strokes
		
		Type: float in [0, 1], default 0.0
	**/
	var pen_jitter : Float;
	/**
		Pressure sensitivity factor for new strokes
		
		Type: float in [0.1, 3], default 0.0
	**/
	var pen_sensitivity_factor : Float;
	/**
		Amount of smoothing to apply after finish newly created strokes, to reduce jitter/noise
		
		Type: float in [0, 2], default 0.0
	**/
	var pen_smooth_factor : Float;
	/**
		Number of times to smooth newly created strokes
		
		Type: int in [1, 3], default 0
	**/
	var pen_smooth_steps : Int;
	/**
		Color strength for new strokes (affect alpha factor of color)
		
		Type: float in [0, 1], default 0.0
	**/
	var pen_strength : Float;
	/**
		Number of times to subdivide newly created strokes, for less jagged strokes
		
		Type: int in [0, 3], default 0
	**/
	var pen_subdivision_steps : Int;
	/**
		Amount of thickness smoothing to apply after finish newly created strokes, to reduce jitter/noise
		
		Type: float in [0, 2], default 0.0
	**/
	var pen_thick_smooth_factor : Float;
	/**
		Number of times to smooth thickness for newly created strokes
		
		Type: int in [1, 3], default 0
	**/
	var pen_thick_smooth_steps : Int;
	/**
		Randomness factor for pressure in new strokes
		
		Type: float in [0, 1], default 0.0
	**/
	var random_pressure : Float;
	/**
		Randomness factor strength in new strokes
		
		Type: float in [0, 1], default 0.0
	**/
	var random_strength : Float;
	/**
		Randomness factor for new strokes after subdivision
		
		Type: float in [0, 1], default 0.0
	**/
	var random_subdiv : Float;
	/**
		Show transparent lines to use as boundary for filling
		
		Type: boolean, default True
	**/
	var show_fill : Bool;
	/**
		Show help lines for filling to see boundaries
		
		Type: boolean, default True
	**/
	var show_fill_boundary : Bool;
	/**
		Do not draw fill color while drawing the stroke
		
		Type: boolean, default False
	**/
	var show_lasso : Bool;
	/**
		Enable cursor on screen
		
		Type: boolean, default True
	**/
	var use_cursor : Bool;
	/**
		Use this brush when enable eraser with fast switch key
		
		Type: boolean, default True
	**/
	var use_default_eraser : Bool;
	/**
		Use tablet pressure for jitter
		
		Type: boolean, default False
	**/
	var use_jitter_pressure : Bool;
	/**
		Keep material assigned to brush
		
		Type: boolean, default False
	**/
	var use_material_pin : Bool;
	/**
		Use tablet pressure
		
		Type: boolean, default False
	**/
	var use_pressure : Bool;
	/**
		Additional post processing options for new strokes
		
		Type: boolean, default False
	**/
	var use_settings_postprocess : Bool;
	/**
		Random brush settings
		
		Type: boolean, default False
	**/
	var use_settings_random : Bool;
	/**
		Draw lines with a delay to allow smooth strokes. Press Shift key to override while drawing
		
		Type: boolean, default True
	**/
	var use_settings_stabilizer : Bool;
	/**
		Use tablet pressure for color strength
		
		Type: boolean, default False
	**/
	var use_strength_pressure : Bool;
	/**
		Random factor for autogenerated UV rotation
		
		Type: float in [0, 1], default 0.0
	**/
	var uv_random : Float;
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