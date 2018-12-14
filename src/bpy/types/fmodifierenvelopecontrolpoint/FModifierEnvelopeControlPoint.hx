package bpy.types.fmodifierenvelopecontrolpoint;
/**
	Control point for envelope F-Modifier
**/
@:pythonImport("bpy.types.FModifierEnvelopeControlPoint") extern class FModifierEnvelopeControlPoint {
	/**
		Frame this control-point occurs on
		
		Type: float in [-inf, inf], default 0.0
	**/
	var frame : Float;
	/**
		Upper bound of envelope at this control-point
		
		Type: float in [-inf, inf], default 0.0
	**/
	var max : Float;
	/**
		Lower bound of envelope at this control-point
		
		Type: float in [-inf, inf], default 0.0
	**/
	var min : Float;
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