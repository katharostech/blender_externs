package bpy.types.fmodifiernoise;
@:enum abstract Enum1(String) from String to String {
	var REPLACE : String = "REPLACE";
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
	var MULTIPLY : String = "MULTIPLY";
}/**
	Give randomness to the modified F-Curve
**/
@:pythonImport("bpy.types.FModifierNoise") extern class FModifierNoise {
	/**
		Method of modifying the existing F-Curve
		
		Type: enum in [‘REPLACE’, ‘ADD’, ‘SUBTRACT’, ‘MULTIPLY’], default ‘REPLACE’
	**/
	var blend_type : bpy.types.fmodifiernoise.FModifierNoise.Enum1;
	/**
		Amount of fine level detail present in the noise
		
		Type: int in [0, 32767], default 0
	**/
	var depth : Int;
	/**
		Time offset for the noise effect
		
		Type: float in [-inf, inf], default 0.0
	**/
	var offset : Float;
	/**
		A random seed for the noise effect
		
		Type: float in [-inf, inf], default 0.0
	**/
	var phase : Float;
	/**
		Scaling (in time) of the noise
		
		Type: float in [-inf, inf], default 0.0
	**/
	var scale : Float;
	/**
		Amplitude of the noise - the amount that it modifies the underlying curve
		
		Type: float in [-inf, inf], default 0.0
	**/
	var strength : Float;
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