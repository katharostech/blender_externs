package bpy.types.buildgpencilmodifier;
@:enum abstract Enum1(String) from String to String {
	var START : String = "START";
	var END : String = "END";
}@:enum abstract Enum2(String) from String to String {
	var SEQUENTIAL : String = "SEQUENTIAL";
	var CONCURRENT : String = "CONCURRENT";
}@:enum abstract Enum3(String) from String to String {
	var GROW : String = "GROW";
	var SHRINK : String = "SHRINK";
	var FADE : String = "FADE";
}/**
	Animate strokes appearing and disappearing
**/
@:native("bpy.types.BuildGpencilModifier") extern class BuildGpencilModifier {
	/**
		When should strokes start to appear/disappear
		
		Type: enum in [‘START’, ‘END’], default ‘START’
	**/
	var concurrent_time_alignment : bpy.types.buildgpencilmodifier.BuildGpencilModifier.Enum1;
	/**
		End Frame (when Restrict Frame Range is enabled)
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0
	**/
	var frame_end : Float;
	/**
		Start Frame (when Restrict Frame Range is enabled)
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0
	**/
	var frame_start : Float;
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
		Maximum number of frames that the build effect can run for (unless another GP keyframe occurs before this time has elapsed)
		
		Type: float in [1, 1.04857e+06], default 0.0
	**/
	var length : Float;
	/**
		How many strokes are being animated at a time
		
		Type: enum in [‘SEQUENTIAL’, ‘CONCURRENT’], default ‘SEQUENTIAL’
	**/
	var mode : bpy.types.buildgpencilmodifier.BuildGpencilModifier.Enum2;
	/**
		Number of frames after each GP keyframe before the modifier has any effect
		
		Type: float in [0, 1.04857e+06], default 0.0
	**/
	var start_delay : Float;
	/**
		How are strokes animated (i.e. are they appearing or disappearing)
		
		Type: enum in [‘GROW’, ‘SHRINK’, ‘FADE’], default ‘GROW’
	**/
	var transition : bpy.types.buildgpencilmodifier.BuildGpencilModifier.Enum3;
	/**
		Only modify strokes during the specified frame range
		
		Type: boolean, default False
	**/
	var use_restrict_frame_range : Bool;
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