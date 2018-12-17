package bpy.types.linestylegeometrymodifier_blueprint;
@:enum abstract Enum1(String) from String to String {
	var CIRCLES : String = "CIRCLES";
	var ELLIPSES : String = "ELLIPSES";
	var SQUARES : String = "SQUARES";
}@:enum abstract Enum2(String) from String to String {
	var py2D_OFFSET : String = "2D_OFFSET";
	var py2D_TRANSFORM : String = "2D_TRANSFORM";
	var BACKBONE_STRETCHER : String = "BACKBONE_STRETCHER";
	var BEZIER_CURVE : String = "BEZIER_CURVE";
	var BLUEPRINT : String = "BLUEPRINT";
	var GUIDING_LINES : String = "GUIDING_LINES";
	var pyPERLIN_NOISE_1D : String = "PERLIN_NOISE_1D";
	var pyPERLIN_NOISE_2D : String = "PERLIN_NOISE_2D";
	var POLYGONIZATION : String = "POLYGONIZATION";
	var SAMPLING : String = "SAMPLING";
	var SIMPLIFICATION : String = "SIMPLIFICATION";
	var SINUS_DISPLACEMENT : String = "SINUS_DISPLACEMENT";
	var SPATIAL_NOISE : String = "SPATIAL_NOISE";
	var TIP_REMOVER : String = "TIP_REMOVER";
}/**
	Produce a blueprint using circular, elliptic, and square contour strokes
**/
@:native("bpy.types.LineStyleGeometryModifier_Blueprint") extern class LineStyleGeometryModifier_Blueprint {
	/**
		Amount of backbone stretching
		
		Type: float in [-inf, inf], default 0.0
	**/
	var backbone_length : Float;
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
		Randomness of the backbone stretching
		
		Type: int in [0, inf], default 0
	**/
	var random_backbone : Int;
	/**
		Randomness of the center
		
		Type: int in [0, inf], default 0
	**/
	var random_center : Int;
	/**
		Randomness of the radius
		
		Type: int in [0, inf], default 0
	**/
	var random_radius : Int;
	/**
		Number of rounds in contour strokes
		
		Type: int in [1, 1000], default 0
	**/
	var rounds : Int;
	/**
		Select the shape of blueprint contour strokes
		
		Type: enum in [‘CIRCLES’, ‘ELLIPSES’, ‘SQUARES’], default ‘CIRCLES’
	**/
	var shape : bpy.types.linestylegeometrymodifier_blueprint.LineStyleGeometryModifier_Blueprint.Enum1;
	/**
		Type of the modifier
		
		Type: enum in [‘2D_OFFSET’, ‘2D_TRANSFORM’, ‘BACKBONE_STRETCHER’, ‘BEZIER_CURVE’, ‘BLUEPRINT’, ‘GUIDING_LINES’, ‘PERLIN_NOISE_1D’, ‘PERLIN_NOISE_2D’, ‘POLYGONIZATION’, ‘SAMPLING’, ‘SIMPLIFICATION’, ‘SINUS_DISPLACEMENT’, ‘SPATIAL_NOISE’, ‘TIP_REMOVER’], default ‘2D_OFFSET’, (readonly)
	**/
	var type(default, never) : bpy.types.linestylegeometrymodifier_blueprint.LineStyleGeometryModifier_Blueprint.Enum2;
	/**
		Enable or disable this modifier during stroke rendering
		
		Type: boolean, default False
	**/
	var use : Bool;
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
}