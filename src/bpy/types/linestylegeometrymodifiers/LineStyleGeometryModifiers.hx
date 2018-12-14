package bpy.types.linestylegeometrymodifiers;
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
	Geometry modifiers for changing line geometries
**/
@:pythonImport("bpy.types.LineStyleGeometryModifiers") extern class LineStyleGeometryModifiers {
	/**
		Add a geometry modifier to line style
		@param name New name for the geometry modifier (not unique) — string, (never None)
		@param type Geometry modifier type to add — enum in ['2D_OFFSET', '2D_TRANSFORM', 'BACKBONE_STRETCHER', 'BEZIER_CURVE', 'BLUEPRINT', 'GUIDING_LINES', 'PERLIN_NOISE_1D', 'PERLIN_NOISE_2D', 'POLYGONIZATION', 'SAMPLING', 'SIMPLIFICATION', 'SINUS_DISPLACEMENT', 'SPATIAL_NOISE', 'TIP_REMOVER']
		
		@returns LineStyleGeometryModifier
	**/
	function new(name:String, type:bpy.types.linestylegeometrymodifiers.LineStyleGeometryModifiers.Enum1):bpy.types.linestylegeometrymodifier.LineStyleGeometryModifier;
	/**
		Remove a geometry modifier from line style
		@param modifier Geometry modifier to remove — LineStyleGeometryModifier, (never None)
	**/
	function remove(modifier:bpy.types.linestylegeometrymodifier.LineStyleGeometryModifier):Void;
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