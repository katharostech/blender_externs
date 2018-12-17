package bpy.types.sequencertonemapmodifierdata;
@:enum abstract Enum1(String) from String to String {
	var RD_PHOTORECEPTOR : String = "RD_PHOTORECEPTOR";
	var RH_SIMPLE : String = "RH_SIMPLE";
}/**
	Tone mapping modifier
**/
@:native("bpy.types.SequencerTonemapModifierData") extern class SequencerTonemapModifierData {
	/**
		If 0, global; if 1, based on pixel intensity
		
		Type: float in [0, 1], default 0.0
	**/
	var adaptation : Float;
	/**
		Set to 0 to use estimate from input image
		
		Type: float in [0, 1], default 0.0
	**/
	var contrast : Float;
	/**
		If 0, same for all channels; if 1, each independent
		
		Type: float in [0, 1], default 0.0
	**/
	var correction : Float;
	/**
		If not used, set to 1
		
		Type: float in [0.001, 3], default 0.0
	**/
	var gamma : Float;
	/**
		If less than zero, darkens image; otherwise, makes it brighter
		
		Type: float in [-8, 8], default 0.0
	**/
	var intensity : Float;
	/**
		The value the average luminance is mapped to
		
		Type: float in [0, 1], default 0.0
	**/
	var key : Float;
	/**
		Normally always 1, but can be used as an extra control to alter the brightness curve
		
		Type: float in [0.001, 10], default 0.0
	**/
	var offset : Float;
	/**
		Tone mapping algorithm
		
		Type: enum in [‘RD_PHOTORECEPTOR’, ‘RH_SIMPLE’], default ‘RH_SIMPLE’
	**/
	var tonemap_type : bpy.types.sequencertonemapmodifierdata.SequencerTonemapModifierData.Enum1;
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
		
		
		Type: enum in [‘COLOR_BALANCE’, ‘CURVES’, ‘HUE_CORRECT’, ‘BRIGHT_CONTRAST’, ‘MASK’, ‘WHITE_BALANCE’, ‘TONEMAP’], default ‘COLOR_BALANCE’, (readonly)
	**/
	var type(default, never) : bpy.types.sequencemodifier.SequenceModifier.Enum3;
	/**
		Mute this modifier
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		Mute expanded settings for the modifier
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Type of input data used for mask
		
		Type: enum in [‘STRIP’, ‘ID’], default ‘STRIP’
	**/
	var input_mask_type : bpy.types.sequencemodifier.SequenceModifier.Enum1;
	/**
		Time to use for the Mask animation
		
		Type: enum in [‘RELATIVE’, ‘ABSOLUTE’], default ‘RELATIVE’
	**/
	var mask_time : bpy.types.sequencemodifier.SequenceModifier.Enum2;
	/**
		Strip used as mask input for the modifier
		
		Type: Sequence
	**/
	var input_mask_strip : bpy.types.sequence.Sequence;
	/**
		Mask ID used as mask input for the modifier
		
		Type: Mask
	**/
	var input_mask_id : bpy.types.mask.Mask;
}