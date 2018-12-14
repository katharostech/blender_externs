package bpy.types.fmodifierenvelopecontrolpoints;
/**
	Control points defining the shape of the envelope
**/
@:pythonImport("bpy.types.FModifierEnvelopeControlPoints") extern class FModifierEnvelopeControlPoints {
	/**
		Add a control point to a FModifierEnvelope
		@param frame Frame to add this control-point — float in [-inf, inf]
		
		@returns FModifierEnvelopeControlPoint
	**/
	function add(frame:Float):bpy.types.fmodifierenvelopecontrolpoint.FModifierEnvelopeControlPoint;
	/**
		Remove a control-point from an FModifierEnvelope
		@param point Control-point to remove — FModifierEnvelopeControlPoint, (never None)
	**/
	function remove(point:bpy.types.fmodifierenvelopecontrolpoint.FModifierEnvelopeControlPoint):Void;
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