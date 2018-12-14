package bpy.ops.curve;
@:enum abstract Enum1(String) from String to String {
	var CYCLIC_U : String = "CYCLIC_U";
	var CYCLIC_V : String = "CYCLIC_V";
}@:enum abstract Enum2(String) from String to String {
	var VERT : String = "VERT";
	var SEGMENT : String = "SEGMENT";
}@:enum abstract Enum3(String) from String to String {
	var REFIT : String = "REFIT";
	var SPLIT : String = "SPLIT";
}@:enum abstract Enum4(String) from String to String {
	var INIT : String = "INIT";
	var DUMMY : String = "DUMMY";
	var TRANSLATION : String = "TRANSLATION";
	var ROTATION : String = "ROTATION";
	var RESIZE : String = "RESIZE";
	var SKIN_RESIZE : String = "SKIN_RESIZE";
	var TOSPHERE : String = "TOSPHERE";
	var SHEAR : String = "SHEAR";
	var BEND : String = "BEND";
	var SHRINKFATTEN : String = "SHRINKFATTEN";
	var TILT : String = "TILT";
	var TRACKBALL : String = "TRACKBALL";
	var PUSHPULL : String = "PUSHPULL";
	var CREASE : String = "CREASE";
	var MIRROR : String = "MIRROR";
	var BONE_SIZE : String = "BONE_SIZE";
	var BONE_ENVELOPE : String = "BONE_ENVELOPE";
	var BONE_ENVELOPE_DIST : String = "BONE_ENVELOPE_DIST";
	var CURVE_SHRINKFATTEN : String = "CURVE_SHRINKFATTEN";
	var MASK_SHRINKFATTEN : String = "MASK_SHRINKFATTEN";
	var GPENCIL_SHRINKFATTEN : String = "GPENCIL_SHRINKFATTEN";
	var BONE_ROLL : String = "BONE_ROLL";
	var TIME_TRANSLATE : String = "TIME_TRANSLATE";
	var TIME_SLIDE : String = "TIME_SLIDE";
	var TIME_SCALE : String = "TIME_SCALE";
	var TIME_EXTEND : String = "TIME_EXTEND";
	var BAKE_TIME : String = "BAKE_TIME";
	var BWEIGHT : String = "BWEIGHT";
	var ALIGN : String = "ALIGN";
	var EDGESLIDE : String = "EDGESLIDE";
	var SEQSLIDE : String = "SEQSLIDE";
}@:enum abstract Enum5(String) from String to String {
	var AUTOMATIC : String = "AUTOMATIC";
	var VECTOR : String = "VECTOR";
	var ALIGNED : String = "ALIGNED";
	var FREE_ALIGN : String = "FREE_ALIGN";
	var TOGGLE_FREE_ALIGN : String = "TOGGLE_FREE_ALIGN";
}@:enum abstract Enum6(String) from String to String {
	var TOGGLE : String = "TOGGLE";
	var SELECT : String = "SELECT";
	var DESELECT : String = "DESELECT";
	var INVERT : String = "INVERT";
}@:enum abstract Enum7(String) from String to String {
	var SELECT : String = "SELECT";
	var DESELECT : String = "DESELECT";
}@:enum abstract Enum8(String) from String to String {
	var TYPE : String = "TYPE";
	var RADIUS : String = "RADIUS";
	var WEIGHT : String = "WEIGHT";
	var DIRECTION : String = "DIRECTION";
}@:enum abstract Enum9(String) from String to String {
	var EQUAL : String = "EQUAL";
	var GREATER : String = "GREATER";
	var LESS : String = "LESS";
}@:enum abstract Enum10(String) from String to String {
	var POLY : String = "POLY";
	var BEZIER : String = "BEZIER";
	var NURBS : String = "NURBS";
}