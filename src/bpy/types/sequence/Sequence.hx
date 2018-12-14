package bpy.types.sequence;
@:enum abstract Enum1(String) from String to String {
	var REPLACE : String = "REPLACE";
	var CROSS : String = "CROSS";
	var DARKEN : String = "DARKEN";
	var MULTIPLY : String = "MULTIPLY";
	var BURN : String = "BURN";
	var LINEAR_BURN : String = "LINEAR_BURN";
	var LIGHTEN : String = "LIGHTEN";
	var SCREEN : String = "SCREEN";
	var DODGE : String = "DODGE";
	var ADD : String = "ADD";
	var OVERLAY : String = "OVERLAY";
	var SOFT_LIGHT : String = "SOFT_LIGHT";
	var HARD_LIGHT : String = "HARD_LIGHT";
	var VIVID_LIGHT : String = "VIVID_LIGHT";
	var LINEAR_LIGHT : String = "LINEAR_LIGHT";
	var PIN_LIGHT : String = "PIN_LIGHT";
	var DIFFERENCE : String = "DIFFERENCE";
	var EXCLUSION : String = "EXCLUSION";
	var SUBTRACT : String = "SUBTRACT";
	var HUE : String = "HUE";
	var SATURATION : String = "SATURATION";
	var COLOR : String = "COLOR";
	var VALUE : String = "VALUE";
	var ALPHA_OVER : String = "ALPHA_OVER";
	var ALPHA_UNDER : String = "ALPHA_UNDER";
	var GAMMA_CROSS : String = "GAMMA_CROSS";
	var OVER_DROP : String = "OVER_DROP";
}@:enum abstract Enum2(String) from String to String {
	var IMAGE : String = "IMAGE";
	var META : String = "META";
	var SCENE : String = "SCENE";
	var MOVIE : String = "MOVIE";
	var MOVIECLIP : String = "MOVIECLIP";
	var MASK : String = "MASK";
	var SOUND : String = "SOUND";
	var CROSS : String = "CROSS";
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
	var ALPHA_OVER : String = "ALPHA_OVER";
	var ALPHA_UNDER : String = "ALPHA_UNDER";
	var GAMMA_CROSS : String = "GAMMA_CROSS";
	var MULTIPLY : String = "MULTIPLY";
	var OVER_DROP : String = "OVER_DROP";
	var WIPE : String = "WIPE";
	var GLOW : String = "GLOW";
	var TRANSFORM : String = "TRANSFORM";
	var COLOR : String = "COLOR";
	var SPEED : String = "SPEED";
	var MULTICAM : String = "MULTICAM";
	var ADJUSTMENT : String = "ADJUSTMENT";
	var GAUSSIAN_BLUR : String = "GAUSSIAN_BLUR";
	var TEXT : String = "TEXT";
	var COLORMIX : String = "COLORMIX";
}/**
	Sequence strip in the sequence editor
**/
@:pythonImport("bpy.types.Sequence") extern class Sequence {
	/**
		Percentage of how much the strip’s colors affect other strips
		
		Type: float in [0, 1], default 0.0
	**/
	var blend_alpha : Float;
	/**
		Method for controlling how the strip combines with other strips
		
		Type: enum in [‘REPLACE’, ‘CROSS’, ‘DARKEN’, ‘MULTIPLY’, ‘BURN’, ‘LINEAR_BURN’, ‘LIGHTEN’, ‘SCREEN’, ‘DODGE’, ‘ADD’, ‘OVERLAY’, ‘SOFT_LIGHT’, ‘HARD_LIGHT’, ‘VIVID_LIGHT’, ‘LINEAR_LIGHT’, ‘PIN_LIGHT’, ‘DIFFERENCE’, ‘EXCLUSION’, ‘SUBTRACT’, ‘HUE’, ‘SATURATION’, ‘COLOR’, ‘VALUE’, ‘ALPHA_OVER’, ‘ALPHA_UNDER’, ‘GAMMA_CROSS’, ‘OVER_DROP’], default ‘REPLACE’
	**/
	var blend_type : bpy.types.sequence.Sequence.Enum1;
	/**
		Y position of the sequence strip
		
		Type: int in [1, 32], default 0
	**/
	var channel : Int;
	/**
		Custom fade value
		
		Type: float in [0, 1], default 0.0
	**/
	var effect_fader : Float;
	/**
		The length of the contents of this strip before the handles are applied
		
		Type: int in [1, 1048574], default 0, (readonly)
	**/
	var frame_duration(default, never) : Int;
	/**
		The length of the contents of this strip after the handles are applied
		
		Type: int in [1, 1048574], default 0
	**/
	var frame_final_duration : Int;
	/**
		End frame displayed in the sequence editor after offsets are applied
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_final_end : Int;
	/**
		Start frame displayed in the sequence editor after offsets are applied, setting this is equivalent to moving the handle, not the actual start frame
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_final_start : Int;
	/**
		
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_offset_end : Int;
	/**
		
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_offset_start : Int;
	/**
		X position where the strip begins
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_start : Int;
	/**
		
		
		Type: int in [0, 1048574], default 0
	**/
	var frame_still_end : Int;
	/**
		
		
		Type: int in [0, 1048574], default 0
	**/
	var frame_still_start : Int;
	/**
		Lock strip so that it cannot be transformed
		
		Type: boolean, default False
	**/
	var lock : Bool;
	/**
		Modifiers affecting this strip
		
		Type: SequenceModifiers bpy_prop_collection of SequenceModifier, (readonly)
	**/
	var modifiers(default, never) : bpy.types.sequencemodifiers.SequenceModifiers;
	/**
		Disable strip so that it cannot be viewed in the output
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var select_left_handle : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var select_right_handle : Bool;
	/**
		Multiply the current speed of the sequence with this number or remap current frame to this frame
		
		Type: float in [-inf, inf], default 0.0
	**/
	var speed_factor : Float;
	/**
		
		
		Type: enum in [‘IMAGE’, ‘META’, ‘SCENE’, ‘MOVIE’, ‘MOVIECLIP’, ‘MASK’, ‘SOUND’, ‘CROSS’, ‘ADD’, ‘SUBTRACT’, ‘ALPHA_OVER’, ‘ALPHA_UNDER’, ‘GAMMA_CROSS’, ‘MULTIPLY’, ‘OVER_DROP’, ‘WIPE’, ‘GLOW’, ‘TRANSFORM’, ‘COLOR’, ‘SPEED’, ‘MULTICAM’, ‘ADJUSTMENT’, ‘GAUSSIAN_BLUR’, ‘TEXT’, ‘COLORMIX’], default ‘IMAGE’, (readonly)
	**/
	var type(default, never) : bpy.types.sequence.Sequence.Enum2;
	/**
		Fade effect using the built-in default (usually make transition as long as effect strip)
		
		Type: boolean, default False
	**/
	var use_default_fade : Bool;
	/**
		Calculate modifiers in linear space instead of sequencer’s space
		
		Type: boolean, default False
	**/
	var use_linear_modifiers : Bool;
	/**
		Update the strip dimensions
		@param data Data, Update strip data — boolean, (optional)
	**/
	function update(data:Bool):Void;
	/**
		Return the strip element from a given frame or None
		@param frame Frame, The frame to get the strip element from — int in [-1048574, 1048574]
		
		@returns SequenceElement
	**/
	function strip_elem_from_frame(frame:Int):bpy.types.sequenceelement.SequenceElement;
	/**
		swap
		@param other Other — Sequence, (never None)
	**/
	function swap(other:bpy.types.sequence.Sequence):Void;
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
}