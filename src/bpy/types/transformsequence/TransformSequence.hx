package bpy.types.transformsequence;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var BILINEAR : String = "BILINEAR";
	var BICUBIC : String = "BICUBIC";
}@:enum abstract Enum2(String) from String to String {
	var PIXELS : String = "PIXELS";
	var PERCENT : String = "PERCENT";
}/**
	Sequence strip applying affine transformations to other strips
**/
@:native("bpy.types.TransformSequence") extern class TransformSequence {
	/**
		First input for the effect strip
		
		Type: Sequence, (never None)
	**/
	var pyinput_1 : bpy.types.sequence.Sequence;
	/**
		
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var input_count(default, never) : Int;
	/**
		Method to determine how missing pixels are created
		
		Type: enum in [‘NONE’, ‘BILINEAR’, ‘BICUBIC’], default ‘NONE’
	**/
	var interpolation : bpy.types.transformsequence.TransformSequence.Enum1;
	/**
		Degrees to rotate the input
		
		Type: float in [-inf, inf], default 0.0
	**/
	var rotation_start : Float;
	/**
		Amount to scale the input in the X axis
		
		Type: float in [0, inf], default 0.0
	**/
	var scale_start_x : Float;
	/**
		Amount to scale the input in the Y axis
		
		Type: float in [0, inf], default 0.0
	**/
	var scale_start_y : Float;
	/**
		Amount to move the input on the X axis
		
		Type: float in [-inf, inf], default 0.0
	**/
	var translate_start_x : Float;
	/**
		Amount to move the input on the Y axis
		
		Type: float in [-inf, inf], default 0.0
	**/
	var translate_start_y : Float;
	/**
		Unit of measure to translate the input
		
		Type: enum in [‘PIXELS’, ‘PERCENT’], default ‘PIXELS’
	**/
	var translation_unit : bpy.types.transformsequence.TransformSequence.Enum2;
	/**
		Scale uniformly, preserving aspect ratio
		
		Type: boolean, default False
	**/
	var use_uniform_scale : Bool;
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
		Remove fields from video movies
		
		Type: boolean, default False
	**/
	var use_deinterlace : Bool;
	/**
		Representation of alpha information in the RGBA pixels
		
		Type: enum in [‘STRAIGHT’, ‘PREMUL’], default ‘STRAIGHT’
	**/
	var alpha_mode : bpy.types.effectsequence.EffectSequence.Enum1;
	/**
		Flip on the X axis
		
		Type: boolean, default False
	**/
	var use_flip_x : Bool;
	/**
		Flip on the Y axis
		
		Type: boolean, default False
	**/
	var use_flip_y : Bool;
	/**
		Convert input to float data
		
		Type: boolean, default False
	**/
	var use_float : Bool;
	/**
		Reverse frame order
		
		Type: boolean, default False
	**/
	var use_reverse_frames : Bool;
	/**
		
		
		Type: float in [0, 20], default 1.0
	**/
	var color_multiply : Float;
	/**
		Adjust the intensity of the input’s color
		
		Type: float in [0, 20], default 1.0
	**/
	var color_saturation : Float;
	/**
		Only display every nth frame
		
		Type: float in [1, 30], default 0.0
	**/
	var strobe : Float;
	/**
		Translate image before processing
		
		Type: boolean, default False
	**/
	var use_translation : Bool;
	/**
		
		
		Type: SequenceTransform, (readonly)
	**/
	var transform(default, never) : bpy.types.sequencetransform.SequenceTransform;
	/**
		Crop image before processing
		
		Type: boolean, default False
	**/
	var use_crop : Bool;
	/**
		
		
		Type: SequenceCrop, (readonly)
	**/
	var crop(default, never) : bpy.types.sequencecrop.SequenceCrop;
	/**
		Use a preview proxy and/or timecode index for this strip
		
		Type: boolean, default False
	**/
	var use_proxy : Bool;
	/**
		
		
		Type: SequenceProxy, (readonly)
	**/
	var proxy(default, never) : bpy.types.sequenceproxy.SequenceProxy;
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