package bpy.types.linestylegeometrymodifier_backbonestretcher;
@:enum abstract Enum1(String) from String to String {
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
	Stretch the beginning and the end of stroke backbone
**/
@:native("bpy.types.LineStyleGeometryModifier_BackboneStretcher") extern class LineStyleGeometryModifier_BackboneStretcher {
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
		Type of the modifier
		
		Type: enum in [‘2D_OFFSET’, ‘2D_TRANSFORM’, ‘BACKBONE_STRETCHER’, ‘BEZIER_CURVE’, ‘BLUEPRINT’, ‘GUIDING_LINES’, ‘PERLIN_NOISE_1D’, ‘PERLIN_NOISE_2D’, ‘POLYGONIZATION’, ‘SAMPLING’, ‘SIMPLIFICATION’, ‘SINUS_DISPLACEMENT’, ‘SPATIAL_NOISE’, ‘TIP_REMOVER’], default ‘2D_OFFSET’, (readonly)
	**/
	var type(default, never) : bpy.types.linestylegeometrymodifier_backbonestretcher.LineStyleGeometryModifier_BackboneStretcher.Enum1;
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