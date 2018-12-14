package bpy.types.timegpencilmodifier;
@:enum abstract Enum1(String) from String to String {
	var NORMAL : String = "NORMAL";
	var REVERSE : String = "REVERSE";
	var FIX : String = "FIX";
}/**
	Time offset modifier
**/
@:pythonImport("bpy.types.TimeGpencilModifier") extern class TimeGpencilModifier {
	/**
		Final frame of the range
		
		Type: int in [0, 1048574], default 250
	**/
	var frame_end : Int;
	/**
		Evaluation time in seconds
		
		Type: float in [0.001, 100], default 0.0
	**/
	var frame_scale : Float;
	/**
		First frame of the range
		
		Type: int in [0, 1048574], default 1
	**/
	var frame_start : Int;
	/**
		Inverse filter
		
		Type: boolean, default False
	**/
	var invert_layer_pass : Bool;
	/**
		Inverse filter
		
		Type: boolean, default False
	**/
	var invert_layers : Bool;
	/**
		Layer name
		
		Type: string, default “”, (never None)
	**/
	var layer : String;
	/**
		Layer pass index
		
		Type: int in [0, 100], default 0
	**/
	var layer_pass : Int;
	/**
		
		
		Type: enum in [‘NORMAL’, ‘REVERSE’, ‘FIX’], default ‘NORMAL’
	**/
	var mode : bpy.types.timegpencilmodifier.TimeGpencilModifier.Enum1;
	/**
		Number of frames to offset original keyframe number or frame to fix
		
		Type: int in [-inf, inf], default 0
	**/
	var offset : Int;
	/**
		Define a custom range of frames to use in modifier
		
		Type: boolean, default False
	**/
	var use_custom_frame_range : Bool;
	/**
		Retiming end frames and move to start of animation to keep loop
		
		Type: boolean, default False
	**/
	var use_keep_loop : Bool;
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
	/**
		Modifier name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘GP_ARRAY’, ‘GP_BUILD’, ‘GP_MIRROR’, ‘GP_SIMPLIFY’, ‘GP_SUBDIV’, ‘GP_ARMATURE’, ‘GP_HOOK’, ‘GP_LATTICE’, ‘GP_NOISE’, ‘GP_OFFSET’, ‘GP_SMOOTH’, ‘GP_THICK’, ‘GP_TIME’, ‘GP_COLOR’, ‘GP_OPACITY’, ‘GP_TINT’], default ‘GP_ARRAY’, (readonly)
	**/
	var type(default, never) : bpy.types.gpencilmodifier.GpencilModifier.Enum1;
	/**
		Display modifier in viewport
		
		Type: boolean, default False
	**/
	var show_viewport : Bool;
	/**
		Use modifier during render
		
		Type: boolean, default False
	**/
	var show_render : Bool;
	/**
		Display modifier in Edit mode
		
		Type: boolean, default False
	**/
	var show_in_editmode : Bool;
	/**
		Set modifier expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
}