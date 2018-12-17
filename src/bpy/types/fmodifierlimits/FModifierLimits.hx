package bpy.types.fmodifierlimits;
/**
	Limit the time/value ranges of the modified F-Curve
**/
@:native("bpy.types.FModifierLimits") extern class FModifierLimits {
	/**
		Highest X value to allow
		
		Type: float in [-inf, inf], default 0.0
	**/
	var max_x : Float;
	/**
		Highest Y value to allow
		
		Type: float in [-inf, inf], default 0.0
	**/
	var max_y : Float;
	/**
		Lowest X value to allow
		
		Type: float in [-inf, inf], default 0.0
	**/
	var min_x : Float;
	/**
		Lowest Y value to allow
		
		Type: float in [-inf, inf], default 0.0
	**/
	var min_y : Float;
	/**
		Use the maximum X value
		
		Type: boolean, default False
	**/
	var use_max_x : Bool;
	/**
		Use the maximum Y value
		
		Type: boolean, default False
	**/
	var use_max_y : Bool;
	/**
		Use the minimum X value
		
		Type: boolean, default False
	**/
	var use_min_x : Bool;
	/**
		Use the minimum Y value
		
		Type: boolean, default False
	**/
	var use_min_y : Bool;
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