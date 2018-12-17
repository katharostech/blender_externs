package bpy.types.whitebalancemodifier;
/**
	White balance modifier for sequence strip
**/
@:native("bpy.types.WhiteBalanceModifier") extern class WhiteBalanceModifier {
	/**
		This color defines white in the strip
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var white_value : Array<Float>;
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