package bpy.types.linestylealphamodifiers;
@:enum abstract Enum1(String) from String to String {
	var ALONG_STROKE : String = "ALONG_STROKE";
	var CREASE_ANGLE : String = "CREASE_ANGLE";
	var CURVATURE_3D : String = "CURVATURE_3D";
	var DISTANCE_FROM_CAMERA : String = "DISTANCE_FROM_CAMERA";
	var DISTANCE_FROM_OBJECT : String = "DISTANCE_FROM_OBJECT";
	var MATERIAL : String = "MATERIAL";
	var NOISE : String = "NOISE";
	var TANGENT : String = "TANGENT";
}/**
	Alpha modifiers for changing line alphas
**/
@:pythonImport("bpy.types.LineStyleAlphaModifiers") extern class LineStyleAlphaModifiers {
	/**
		Add a alpha modifier to line style
		@param name New name for the alpha modifier (not unique) — string, (never None)
		@param type Alpha modifier type to add — enum in ['ALONG_STROKE', 'CREASE_ANGLE', 'CURVATURE_3D', 'DISTANCE_FROM_CAMERA', 'DISTANCE_FROM_OBJECT', 'MATERIAL', 'NOISE', 'TANGENT']
		
		@returns LineStyleAlphaModifier
	**/
	function new(name:String, type:bpy.types.linestylealphamodifiers.LineStyleAlphaModifiers.Enum1):bpy.types.linestylealphamodifier.LineStyleAlphaModifier;
	/**
		Remove a alpha modifier from line style
		@param modifier Alpha modifier to remove — LineStyleAlphaModifier, (never None)
	**/
	function remove(modifier:bpy.types.linestylealphamodifier.LineStyleAlphaModifier):Void;
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