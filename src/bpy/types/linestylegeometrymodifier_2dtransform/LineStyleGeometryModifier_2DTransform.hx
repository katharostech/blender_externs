package bpy.types.linestylegeometrymodifier_2dtransform;
@:enum abstract Enum1(String) from String to String {
	var CENTER : String = "CENTER";
	var START : String = "START";
	var END : String = "END";
	var PARAM : String = "PARAM";
	var ABSOLUTE : String = "ABSOLUTE";
}@:enum abstract Enum2(String) from String to String {
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
	Apply two-dimensional scaling and rotation to stroke backbone geometry
**/
@:pythonImport("bpy.types.LineStyleGeometryModifier_2DTransform") extern class LineStyleGeometryModifier_2DTransform {
	/**
		Rotation angle
		
		Type: float in [-inf, inf], default 0.0
	**/
	var angle : Float;
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
		Pivot of scaling and rotation operations
		
		Type: enum in [‘CENTER’, ‘START’, ‘END’, ‘PARAM’, ‘ABSOLUTE’], default ‘CENTER’
	**/
	var pivot : bpy.types.linestylegeometrymodifier_2dtransform.LineStyleGeometryModifier_2DTransform.Enum1;
	/**
		Pivot in terms of the stroke point parameter u (0 &lt;= u &lt;= 1)
		
		Type: float in [0, 1], default 0.0
	**/
	var pivot_u : Float;
	/**
		2D X coordinate of the absolute pivot
		
		Type: float in [-inf, inf], default 0.0
	**/
	var pivot_x : Float;
	/**
		2D Y coordinate of the absolute pivot
		
		Type: float in [-inf, inf], default 0.0
	**/
	var pivot_y : Float;
	/**
		Scaling factor that is applied along the X axis
		
		Type: float in [-inf, inf], default 0.0
	**/
	var scale_x : Float;
	/**
		Scaling factor that is applied along the Y axis
		
		Type: float in [-inf, inf], default 0.0
	**/
	var scale_y : Float;
	/**
		Type of the modifier
		
		Type: enum in [‘2D_OFFSET’, ‘2D_TRANSFORM’, ‘BACKBONE_STRETCHER’, ‘BEZIER_CURVE’, ‘BLUEPRINT’, ‘GUIDING_LINES’, ‘PERLIN_NOISE_1D’, ‘PERLIN_NOISE_2D’, ‘POLYGONIZATION’, ‘SAMPLING’, ‘SIMPLIFICATION’, ‘SINUS_DISPLACEMENT’, ‘SPATIAL_NOISE’, ‘TIP_REMOVER’], default ‘2D_OFFSET’, (readonly)
	**/
	var type(default, never) : bpy.types.linestylegeometrymodifier_2dtransform.LineStyleGeometryModifier_2DTransform.Enum2;
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