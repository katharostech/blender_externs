package bpy.types.shaderfxwave;
@:enum abstract Enum1(String) from String to String {
	var HORIZONTAL : String = "HORIZONTAL";
	var VERTICAL : String = "VERTICAL";
}/**
	Wave Deformation effect
**/
@:native("bpy.types.ShaderFxWave") extern class ShaderFxWave {
	/**
		Amplitude of Wave
		
		Type: float in [0, inf], default 0.0
	**/
	var amplitude : Float;
	/**
		Direction of the wave
		
		Type: enum in [‘HORIZONTAL’, ‘VERTICAL’], default ‘HORIZONTAL’
	**/
	var orientation : bpy.types.shaderfxwave.ShaderFxWave.Enum1;
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