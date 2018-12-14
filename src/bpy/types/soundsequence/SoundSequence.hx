package bpy.types.soundsequence;
/**
	Sequence strip defining a sound to be played over a period of time
**/
@:pythonImport("bpy.types.SoundSequence") extern class SoundSequence {
	/**
		Animation end offset (trim end)
		
		Type: int in [0, inf], default 0
	**/
	var animation_offset_end : Int;
	/**
		Animation start offset (trim start)
		
		Type: int in [0, inf], default 0
	**/
	var animation_offset_start : Int;
	/**
		Playback panning of the sound (only for Mono sources)
		
		Type: float in [-2, 2], default 0.0
	**/
	var pan : Float;
	/**
		Playback pitch of the sound
		
		Type: float in [0.1, 10], default 0.0
	**/
	var pitch : Float;
	/**
		Whether to draw the sound’s waveform
		
		Type: boolean, default False
	**/
	var show_waveform : Bool;
	/**
		Sound data-block used by this sequence
		
		Type: Sound
	**/
	var sound : bpy.types.sound.Sound;
	/**
		Playback volume of the sound
		
		Type: float in [0, 100], default 0.0
	**/
	var volume : Float;
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
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘IMAGE’, ‘META’, ‘SCENE’, ‘MOVIE’, ‘MOVIECLIP’, ‘MASK’, ‘SOUND’, ‘CROSS’, ‘ADD’, ‘SUBTRACT’, ‘ALPHA_OVER’, ‘ALPHA_UNDER’, ‘GAMMA_CROSS’, ‘MULTIPLY’, ‘OVER_DROP’, ‘WIPE’, ‘GLOW’, ‘TRANSFORM’, ‘COLOR’, ‘SPEED’, ‘MULTICAM’, ‘ADJUSTMENT’, ‘GAUSSIAN_BLUR’, ‘TEXT’, ‘COLORMIX’], default ‘IMAGE’, (readonly)
	**/
	var type(default, never) : bpy.types.sequence.Sequence.Enum2;
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
		Disable strip so that it cannot be viewed in the output
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		Lock strip so that it cannot be transformed
		
		Type: boolean, default False
	**/
	var lock : Bool;
	/**
		The length of the contents of this strip after the handles are applied
		
		Type: int in [1, 1048574], default 0
	**/
	var frame_final_duration : Int;
	/**
		The length of the contents of this strip before the handles are applied
		
		Type: int in [1, 1048574], default 0, (readonly)
	**/
	var frame_duration(default, never) : Int;
	/**
		X position where the strip begins
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_start : Int;
	/**
		Start frame displayed in the sequence editor after offsets are applied, setting this is equivalent to moving the handle, not the actual start frame
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_final_start : Int;
	/**
		End frame displayed in the sequence editor after offsets are applied
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_final_end : Int;
	/**
		
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_offset_start : Int;
	/**
		
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_offset_end : Int;
	/**
		
		
		Type: int in [0, 1048574], default 0
	**/
	var frame_still_start : Int;
	/**
		
		
		Type: int in [0, 1048574], default 0
	**/
	var frame_still_end : Int;
	/**
		Y position of the sequence strip
		
		Type: int in [1, 32], default 0
	**/
	var channel : Int;
	/**
		Calculate modifiers in linear space instead of sequencer’s space
		
		Type: boolean, default False
	**/
	var use_linear_modifiers : Bool;
	/**
		Method for controlling how the strip combines with other strips
		
		Type: enum in [‘REPLACE’, ‘CROSS’, ‘DARKEN’, ‘MULTIPLY’, ‘BURN’, ‘LINEAR_BURN’, ‘LIGHTEN’, ‘SCREEN’, ‘DODGE’, ‘ADD’, ‘OVERLAY’, ‘SOFT_LIGHT’, ‘HARD_LIGHT’, ‘VIVID_LIGHT’, ‘LINEAR_LIGHT’, ‘PIN_LIGHT’, ‘DIFFERENCE’, ‘EXCLUSION’, ‘SUBTRACT’, ‘HUE’, ‘SATURATION’, ‘COLOR’, ‘VALUE’, ‘ALPHA_OVER’, ‘ALPHA_UNDER’, ‘GAMMA_CROSS’, ‘OVER_DROP’], default ‘REPLACE’
	**/
	var blend_type : bpy.types.sequence.Sequence.Enum1;
	/**
		Percentage of how much the strip’s colors affect other strips
		
		Type: float in [0, 1], default 0.0
	**/
	var blend_alpha : Float;
	/**
		Custom fade value
		
		Type: float in [0, 1], default 0.0
	**/
	var effect_fader : Float;
	/**
		Fade effect using the built-in default (usually make transition as long as effect strip)
		
		Type: boolean, default False
	**/
	var use_default_fade : Bool;
	/**
		Multiply the current speed of the sequence with this number or remap current frame to this frame
		
		Type: float in [-inf, inf], default 0.0
	**/
	var speed_factor : Float;
	/**
		Modifiers affecting this strip
		
		Type: SequenceModifiers bpy_prop_collection of SequenceModifier, (readonly)
	**/
	var modifiers(default, never) : bpy.types.sequencemodifiers.SequenceModifiers;
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
}