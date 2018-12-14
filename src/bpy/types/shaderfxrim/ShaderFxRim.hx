package bpy.types.shaderfxrim;
@:enum abstract Enum1(String) from String to String {
	var NORMAL : String = "NORMAL";
	var OVERLAY : String = "OVERLAY";
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
	var MULTIPLY : String = "MULTIPLY";
	var DIVIDE : String = "DIVIDE";
}/**
	Rim effect
**/
@:pythonImport("bpy.types.ShaderFxRim") extern class ShaderFxRim {
	/**
		Number of pixels for bluring rim (set to 0 to disable)
		
		Type: int array of 2 items in [0, inf], default (0, 0)
	**/
	var blur : Array<Int>;
	/**
		Color that must be keept
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var mask_color : Array<Float>;
	/**
		Blend mode
		
		Type: enum in [‘NORMAL’, ‘OVERLAY’, ‘ADD’, ‘SUBTRACT’, ‘MULTIPLY’, ‘DIVIDE’], default ‘NORMAL’
	**/
	var mode : bpy.types.shaderfxrim.ShaderFxRim.Enum1;
	/**
		Offset of the rim
		
		Type: int array of 2 items in [-inf, inf], default (0, 0)
	**/
	var offset : Array<Int>;
	/**
		Color used for Rim
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var rim_color : Array<Float>;
	/**
		Number of Blur Samples (zero, disable blur)
		
		Type: int in [0, 32], default 4
	**/
	var samples : Int;
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