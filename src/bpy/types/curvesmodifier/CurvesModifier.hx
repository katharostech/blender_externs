package bpy.types.curvesmodifier;
/**
	RGB curves modifier for sequence strip
**/
@:pythonImport("bpy.types.CurvesModifier") extern class CurvesModifier {
	/**
		
		
		Type: CurveMapping, (readonly)
	**/
	var curve_mapping(default, never) : bpy.types.curvemapping.CurveMapping;
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