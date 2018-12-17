package bpy.types.fmodifiergenerator;
@:enum abstract Enum1(String) from String to String {
	var POLYNOMIAL : String = "POLYNOMIAL";
	var POLYNOMIAL_FACTORISED : String = "POLYNOMIAL_FACTORISED";
}/**
	Deterministically generate values for the modified F-Curve
**/
@:native("bpy.types.FModifierGenerator") extern class FModifierGenerator {
	/**
		Coefficients for ‘x’ (starting from lowest power of x^0)
		
		Type: float array of 32 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	**/
	var coefficients : Array<Float>;
	/**
		Type of generator to use
		
		Type: enum in [‘POLYNOMIAL’, ‘POLYNOMIAL_FACTORISED’], default ‘POLYNOMIAL’
	**/
	var mode : bpy.types.fmodifiergenerator.FModifierGenerator.Enum1;
	/**
		The highest power of ‘x’ for this polynomial (number of coefficients - 1)
		
		Type: int in [1, 100], default 0
	**/
	var poly_order : Int;
	/**
		Values generated by this modifier are applied on top of the existing values instead of overwriting them
		
		Type: boolean, default False
	**/
	var use_additive : Bool;
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
		F-Curve Modifier Type
		
		Type: enum in [‘NULL’, ‘GENERATOR’, ‘FNGENERATOR’, ‘ENVELOPE’, ‘CYCLES’, ‘NOISE’, ‘LIMITS’, ‘STEPPED’], default ‘NULL’, (readonly)
	**/
	var type(default, never) : bpy.types.fmodifier.FModifier.Enum1;
	/**
		F-Curve Modifier’s panel is expanded in UI
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		F-Curve Modifier will not be evaluated
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		F-Curve Modifier has invalid settings and will not be evaluated
		
		Type: boolean, default False, (readonly)
	**/
	var is_valid(default, never) : Bool;
	/**
		F-Curve Modifier is the one being edited
		
		Type: boolean, default False
	**/
	var active : Bool;
	/**
		F-Curve Modifier is only applied for the specified frame range to help mask off effects in order to chain them
		
		Type: boolean, default False
	**/
	var use_restricted_range : Bool;
	/**
		Frame that modifier’s influence starts (if Restrict Frame Range is in use)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var frame_start : Float;
	/**
		Frame that modifier’s influence ends (if Restrict Frame Range is in use)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var frame_end : Float;
	/**
		Number of frames from start frame for influence to take effect
		
		Type: float in [-inf, inf], default 0.0
	**/
	var blend_in : Float;
	/**
		Number of frames from end frame for influence to fade out
		
		Type: float in [-inf, inf], default 0.0
	**/
	var blend_out : Float;
	/**
		F-Curve Modifier’s effects will be tempered by a default factor
		
		Type: boolean, default False
	**/
	var use_influence : Bool;
	/**
		Amount of influence F-Curve Modifier will have when not fading in/out
		
		Type: float in [0, 1], default 1.0
	**/
	var influence : Float;
}