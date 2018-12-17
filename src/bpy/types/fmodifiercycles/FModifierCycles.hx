package bpy.types.fmodifiercycles;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var REPEAT : String = "REPEAT";
	var REPEAT_OFFSET : String = "REPEAT_OFFSET";
	var MIRROR : String = "MIRROR";
}@:enum abstract Enum2(String) from String to String {
	var NONE : String = "NONE";
	var REPEAT : String = "REPEAT";
	var REPEAT_OFFSET : String = "REPEAT_OFFSET";
	var MIRROR : String = "MIRROR";
}/**
	Repeat the values of the modified F-Curve
**/
@:native("bpy.types.FModifierCycles") extern class FModifierCycles {
	/**
		Maximum number of cycles to allow after last keyframe (0 = infinite)
		
		Type: int in [-32768, 32767], default 0
	**/
	var cycles_after : Int;
	/**
		Maximum number of cycles to allow before first keyframe (0 = infinite)
		
		Type: int in [-32768, 32767], default 0
	**/
	var cycles_before : Int;
	/**
		Cycling mode to use after last keyframe
		
		Type: enum in [‘NONE’, ‘REPEAT’, ‘REPEAT_OFFSET’, ‘MIRROR’], default ‘NONE’
	**/
	var mode_after : bpy.types.fmodifiercycles.FModifierCycles.Enum1;
	/**
		Cycling mode to use before first keyframe
		
		Type: enum in [‘NONE’, ‘REPEAT’, ‘REPEAT_OFFSET’, ‘MIRROR’], default ‘NONE’
	**/
	var mode_before : bpy.types.fmodifiercycles.FModifierCycles.Enum2;
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