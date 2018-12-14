package bpy.types.shaderfxshadow;
@:enum abstract Enum1(String) from String to String {
	var HORIZONTAL : String = "HORIZONTAL";
	var VERTICAL : String = "VERTICAL";
}/**
	Shadow effect
**/
@:pythonImport("bpy.types.ShaderFxShadow") extern class ShaderFxShadow {
	/**
		Amplitude of Wave
		
		Type: float in [0, inf], default 0.0
	**/
	var amplitude : Float;
	/**
		Number of pixels for bluring shadow (set to 0 to disable)
		
		Type: int array of 2 items in [0, inf], default (0, 0)
	**/
	var blur : Array<Int>;
	/**
		Object to determine center of rotation
		
		Type: Object
	**/
	var object : bpy.types.object.Object;
	/**
		Offset of the shadow
		
		Type: int array of 2 items in [-inf, inf], default (0, 0)
	**/
	var offset : Array<Int>;
	/**
		Direction of the wave
		
		Type: enum in [‘HORIZONTAL’, ‘VERTICAL’], default ‘HORIZONTAL’
	**/
	var orientation : bpy.types.shaderfxshadow.ShaderFxShadow.Enum1;
	/**
		Period of Wave
		
		Type: float in [0, inf], default 0.0
	**/
	var period : Float;
	/**
		Phase Shift of Wave
		
		Type: float in [-inf, inf], default 0.0
	**/
	var phase : Float;
	/**
		Rotation around center or object
		
		Type: float in [-6.28319, 6.28319], default 0.0
	**/
	var rotation : Float;
	/**
		Number of Blur Samples (zero, disable blur)
		
		Type: int in [0, 32], default 4
	**/
	var samples : Int;
	/**
		Offset of the shadow
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var scale : Array<Float>;
	/**
		Color used for Shadow
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var shadow_color : Array<Float>;
	/**
		Use object as center of rotation
		
		Type: boolean, default False
	**/
	var use_object : Bool;
	/**
		Use wave effect
		
		Type: boolean, default False
	**/
	var use_wave : Bool;
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
		Effect name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘FX_BLUR’, ‘FX_COLORIZE’, ‘FX_FLIP’, ‘FX_GLOW’, ‘FX_LIGHT’, ‘FX_PIXEL’, ‘FX_RIM’, ‘FX_SHADOW’, ‘FX_SWIRL’, ‘FX_WAVE’], default ‘FX_BLUR’, (readonly)
	**/
	var type(default, never) : bpy.types.shaderfx.ShaderFx.Enum1;
	/**
		Display effect in viewport
		
		Type: boolean, default False
	**/
	var show_viewport : Bool;
	/**
		Use effect during render
		
		Type: boolean, default False
	**/
	var show_render : Bool;
	/**
		Display effect in Edit mode
		
		Type: boolean, default False
	**/
	var show_in_editmode : Bool;
	/**
		Set effect expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
}