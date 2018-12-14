package bpy.types.sequencemodifier;
@:enum abstract Enum1(String) from String to String {
	var STRIP : String = "STRIP";
	var ID : String = "ID";
}@:enum abstract Enum2(String) from String to String {
	var RELATIVE : String = "RELATIVE";
	var ABSOLUTE : String = "ABSOLUTE";
}@:enum abstract Enum3(String) from String to String {
	var COLOR_BALANCE : String = "COLOR_BALANCE";
	var CURVES : String = "CURVES";
	var HUE_CORRECT : String = "HUE_CORRECT";
	var BRIGHT_CONTRAST : String = "BRIGHT_CONTRAST";
	var MASK : String = "MASK";
	var WHITE_BALANCE : String = "WHITE_BALANCE";
	var TONEMAP : String = "TONEMAP";
}/**
	Modifier for sequence strip
**/
@:pythonImport("bpy.types.SequenceModifier") extern class SequenceModifier {
	/**
		Mask ID used as mask input for the modifier
		
		Type: Mask
	**/
	var input_mask_id : bpy.types.mask.Mask;
	/**
		Strip used as mask input for the modifier
		
		Type: Sequence
	**/
	var input_mask_strip : bpy.types.sequence.Sequence;
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
		Mute this modifier
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Mute expanded settings for the modifier
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		
		
		Type: enum in [‘COLOR_BALANCE’, ‘CURVES’, ‘HUE_CORRECT’, ‘BRIGHT_CONTRAST’, ‘MASK’, ‘WHITE_BALANCE’, ‘TONEMAP’], default ‘COLOR_BALANCE’, (readonly)
	**/
	var type(default, never) : bpy.types.sequencemodifier.SequenceModifier.Enum3;
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