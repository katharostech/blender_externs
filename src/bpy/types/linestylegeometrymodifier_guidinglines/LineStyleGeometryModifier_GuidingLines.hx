package bpy.types.linestylegeometrymodifier_guidinglines;
@:enum abstract Enum1(String) from String to String {
	var 2D_OFFSET : String = "2D_OFFSET";
	var 2D_TRANSFORM : String = "2D_TRANSFORM";
	var BACKBONE_STRETCHER : String = "BACKBONE_STRETCHER";
	var BEZIER_CURVE : String = "BEZIER_CURVE";
	var BLUEPRINT : String = "BLUEPRINT";
	var GUIDING_LINES : String = "GUIDING_LINES";
	var PERLIN_NOISE_1D : String = "PERLIN_NOISE_1D";
	var PERLIN_NOISE_2D : String = "PERLIN_NOISE_2D";
	var POLYGONIZATION : String = "POLYGONIZATION";
	var SAMPLING : String = "SAMPLING";
	var SIMPLIFICATION : String = "SIMPLIFICATION";
	var SINUS_DISPLACEMENT : String = "SINUS_DISPLACEMENT";
	var SPATIAL_NOISE : String = "SPATIAL_NOISE";
	var TIP_REMOVER : String = "TIP_REMOVER";
}/**
	Modify the stroke geometry so that it corresponds to its main direction line
**/
@:pythonImport("bpy.types.LineStyleGeometryModifier_GuidingLines") extern class LineStyleGeometryModifier_GuidingLines {
	/**
		True if the modifier tab is expanded
		
		Type: boolean, default False
	**/
	var expanded : Bool;
	/**
		Name of the modifier
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Displacement that is applied to the main direction line along its normal
		
		Type: float in [-inf, inf], default 0.0
	**/
	var offset : Float;
	/**
		Type of the modifier
		
		Type: enum in [‘2D_OFFSET’, ‘2D_TRANSFORM’, ‘BACKBONE_STRETCHER’, ‘BEZIER_CURVE’, ‘BLUEPRINT’, ‘GUIDING_LINES’, ‘PERLIN_NOISE_1D’, ‘PERLIN_NOISE_2D’, ‘POLYGONIZATION’, ‘SAMPLING’, ‘SIMPLIFICATION’, ‘SINUS_DISPLACEMENT’, ‘SPATIAL_NOISE’, ‘TIP_REMOVER’], default ‘2D_OFFSET’, (readonly)
	**/
	var type(default, never) : bpy.types.linestylegeometrymodifier_guidinglines.LineStyleGeometryModifier_GuidingLines.Enum1;
	/**
		Enable or disable this modifier during stroke rendering
		
		Type: boolean, default False
	**/
	var use : Bool;
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