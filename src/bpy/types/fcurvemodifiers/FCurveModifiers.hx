package bpy.types.fcurvemodifiers;
@:enum abstract Enum1(String) from String to String {
	var NULL : String = "NULL";
	var GENERATOR : String = "GENERATOR";
	var FNGENERATOR : String = "FNGENERATOR";
	var ENVELOPE : String = "ENVELOPE";
	var CYCLES : String = "CYCLES";
	var NOISE : String = "NOISE";
	var LIMITS : String = "LIMITS";
	var STEPPED : String = "STEPPED";
}/**
	Collection of F-Curve Modifiers
**/
@:native("bpy.types.FCurveModifiers") extern class FCurveModifiers {
	/**
		Active F-Curve Modifier
		
		Type: FModifier
	**/
	var active : bpy.types.fmodifier.FModifier;
	/**
		Add a constraint to this object
		@param type Constraint type to addNULL Invalid.GENERATOR Generator, Generate a curve using a factorized or expanded polynomial.FNGENERATOR Built-In Function, Generate a curve using standard math functions such as sin and cos.ENVELOPE Envelope, Reshape F-Curve values - e.g. change amplitude of movements.CYCLES Cycles, Cyclic extend/repeat keyframe sequence.NOISE Noise, Add pseudo-random noise on top of F-Curves.LIMITS Limits, Restrict maximum and minimum values of F-Curve.STEPPED Stepped Interpolation, Snap values to nearest grid-step - e.g. for a stop-motion look. — enum in ['NULL', 'GENERATOR', 'FNGENERATOR', 'ENVELOPE', 'CYCLES', 'NOISE', 'LIMITS', 'STEPPED']
		
		@returns FModifier
	**/
	function pyNew(type:bpy.types.fcurvemodifiers.FCurveModifiers.Enum1):bpy.types.fmodifier.FModifier;
	/**
		Remove a modifier from this F-Curve
		@param modifier Removed modifier — FModifier, (never None)
	**/
	function remove(modifier:bpy.types.fmodifier.FModifier):Void;
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