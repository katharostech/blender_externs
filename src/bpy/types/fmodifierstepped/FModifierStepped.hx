package bpy.types.fmodifierstepped;
/**
	Hold each interpolated value from the F-Curve for several frames without changing the timing
**/
@:native("bpy.types.FModifierStepped") extern class FModifierStepped {
	/**
		Frame that modifier’s influence ends (if applicable)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var frame_end : Float;
	/**
		Reference number of frames before frames get held (use to get hold for ‘1-3’ vs ‘5-7’ holding patterns)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var frame_offset : Float;
	/**
		Frame that modifier’s influence starts (if applicable)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var frame_start : Float;
	/**
		Number of frames to hold each value
		
		Type: float in [-inf, inf], default 0.0
	**/
	var frame_step : Float;
	/**
		Restrict modifier to only act before its ‘end’ frame
		
		Type: boolean, default False
	**/
	var use_frame_end : Bool;
	/**
		Restrict modifier to only act after its ‘start’ frame
		
		Type: boolean, default False
	**/
	var use_frame_start : Bool;
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