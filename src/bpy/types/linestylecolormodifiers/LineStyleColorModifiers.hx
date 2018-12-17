package bpy.types.linestylecolormodifiers;
@:enum abstract Enum1(String) from String to String {
	var ALONG_STROKE : String = "ALONG_STROKE";
	var CREASE_ANGLE : String = "CREASE_ANGLE";
	var pyCURVATURE_3D : String = "CURVATURE_3D";
	var DISTANCE_FROM_CAMERA : String = "DISTANCE_FROM_CAMERA";
	var DISTANCE_FROM_OBJECT : String = "DISTANCE_FROM_OBJECT";
	var MATERIAL : String = "MATERIAL";
	var NOISE : String = "NOISE";
	var TANGENT : String = "TANGENT";
}/**
	Color modifiers for changing line colors
**/
@:native("bpy.types.LineStyleColorModifiers") extern class LineStyleColorModifiers {
	/**
		Add a color modifier to line style
		@param name New name for the color modifier (not unique) — string, (never None)
		@param type Color modifier type to add — enum in ['ALONG_STROKE', 'CREASE_ANGLE', 'CURVATURE_3D', 'DISTANCE_FROM_CAMERA', 'DISTANCE_FROM_OBJECT', 'MATERIAL', 'NOISE', 'TANGENT']
		
		@returns LineStyleColorModifier
	**/
	function pyNew(name:String, type:bpy.types.linestylecolormodifiers.LineStyleColorModifiers.Enum1):bpy.types.linestylecolormodifier.LineStyleColorModifier;
	/**
		Remove a color modifier from line style
		@param modifier Color modifier to remove — LineStyleColorModifier, (never None)
	**/
	function remove(modifier:bpy.types.linestylecolormodifier.LineStyleColorModifier):Void;
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