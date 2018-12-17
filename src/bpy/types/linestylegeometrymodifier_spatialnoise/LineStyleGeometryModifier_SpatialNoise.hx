package bpy.types.linestylegeometrymodifier_spatialnoise;
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
	Add spatial noise to stroke backbone geometry
**/
@:native("bpy.types.LineStyleGeometryModifier_SpatialNoise") extern class LineStyleGeometryModifier_SpatialNoise {
	/**
		Amplitude of the spatial noise
		
		Type: float in [-inf, inf], default 0.0
	**/
	var amplitude : Float;
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
		Number of octaves (i.e., the amount of detail of the spatial noise)
		
		Type: int in [0, inf], default 0
	**/
	var octaves : Int;
	/**
		Scale of the spatial noise
		
		Type: float in [-inf, inf], default 0.0
	**/
	var scale : Float;
	/**
		If true, the spatial noise is smooth
		
		Type: boolean, default False
	**/
	var smooth : Bool;
	/**
		Type of the modifier
		
		Type: enum in [‘2D_OFFSET’, ‘2D_TRANSFORM’, ‘BACKBONE_STRETCHER’, ‘BEZIER_CURVE’, ‘BLUEPRINT’, ‘GUIDING_LINES’, ‘PERLIN_NOISE_1D’, ‘PERLIN_NOISE_2D’, ‘POLYGONIZATION’, ‘SAMPLING’, ‘SIMPLIFICATION’, ‘SINUS_DISPLACEMENT’, ‘SPATIAL_NOISE’, ‘TIP_REMOVER’], default ‘2D_OFFSET’, (readonly)
	**/
	var type(default, never) : bpy.types.linestylegeometrymodifier_spatialnoise.LineStyleGeometryModifier_SpatialNoise.Enum1;
	/**
		Enable or disable this modifier during stroke rendering
		
		Type: boolean, default False
	**/
	var use : Bool;
	/**
		If true, the spatial noise does not show any coherence
		
		Type: boolean, default False
	**/
	var use_pure_random : Bool;
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