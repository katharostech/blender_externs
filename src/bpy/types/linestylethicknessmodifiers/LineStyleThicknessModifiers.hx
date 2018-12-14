package bpy.types.linestylethicknessmodifiers;
@:enum abstract Enum1(String) from String to String {
	var ALONG_STROKE : String = "ALONG_STROKE";
	var CALLIGRAPHY : String = "CALLIGRAPHY";
	var CREASE_ANGLE : String = "CREASE_ANGLE";
	var CURVATURE_3D : String = "CURVATURE_3D";
	var DISTANCE_FROM_CAMERA : String = "DISTANCE_FROM_CAMERA";
	var DISTANCE_FROM_OBJECT : String = "DISTANCE_FROM_OBJECT";
	var MATERIAL : String = "MATERIAL";
	var NOISE : String = "NOISE";
	var TANGENT : String = "TANGENT";
}/**
	Thickness modifiers for changing line thickness
**/
@:pythonImport("bpy.types.LineStyleThicknessModifiers") extern class LineStyleThicknessModifiers {
	/**
		Add a thickness modifier to line style
		@param name New name for the thickness modifier (not unique) — string, (never None)
		@param type Thickness modifier type to add — enum in ['ALONG_STROKE', 'CALLIGRAPHY', 'CREASE_ANGLE', 'CURVATURE_3D', 'DISTANCE_FROM_CAMERA', 'DISTANCE_FROM_OBJECT', 'MATERIAL', 'NOISE', 'TANGENT']
		
		@returns LineStyleThicknessModifier
	**/
	function new(name:String, type:bpy.types.linestylethicknessmodifiers.LineStyleThicknessModifiers.Enum1):bpy.types.linestylethicknessmodifier.LineStyleThicknessModifier;
	/**
		Remove a thickness modifier from line style
		@param modifier Thickness modifier to remove — LineStyleThicknessModifier, (never None)
	**/
	function remove(modifier:bpy.types.linestylethicknessmodifier.LineStyleThicknessModifier):Void;
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