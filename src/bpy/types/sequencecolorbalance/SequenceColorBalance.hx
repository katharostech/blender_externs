package bpy.types.sequencecolorbalance;
/**
	Color balance parameters for a sequence strip
**/
@:native("bpy.types.SequenceColorBalance") extern class SequenceColorBalance {
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
		Color balance lift (shadows)
		
		Type: float array of 3 items in [0, inf], default (1.0, 1.0, 1.0)
	**/
	var lift : Array<Float>;
	/**
		Color balance gamma (midtones)
		
		Type: float array of 3 items in [0, inf], default (1.0, 1.0, 1.0)
	**/
	var gamma : Array<Float>;
	/**
		Color balance gain (highlights)
		
		Type: float array of 3 items in [0, inf], default (1.0, 1.0, 1.0)
	**/
	var gain : Array<Float>;
	/**
		Invert the gain color`
		
		Type: boolean, default False
	**/
	var invert_gain : Bool;
	/**
		Invert the gamma color
		
		Type: boolean, default False
	**/
	var invert_gamma : Bool;
	/**
		Invert the lift color
		
		Type: boolean, default False
	**/
	var invert_lift : Bool;
}