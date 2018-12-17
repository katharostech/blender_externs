package bpy.types.shaderfxblur;
/**
	Gaussian Blur effect
**/
@:native("bpy.types.ShaderFxBlur") extern class ShaderFxBlur {
	/**
		Define circle of confusion for depth of field
		
		Type: float in [0.001, 1], default 0.025
	**/
	var coc : Float;
	/**
		Factor of Blur
		
		Type: int array of 2 items in [0, inf], default (0, 0)
	**/
	var factor : Array<Int>;
	/**
		Number of Blur Samples (zero, disable blur)
		
		Type: int in [0, 32], default 4
	**/
	var samples : Int;
	/**
		Blur using focal plane distance as factor to simulate depth of field effect (only in camera view)
		
		Type: boolean, default False
	**/
	var use_dof_mode : Bool;
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