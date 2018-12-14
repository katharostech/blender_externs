package bpy.ops.nla;
@:enum abstract Enum1(String) from String to String {
	var  : String = "";
}@:enum abstract Enum2(String) from String to String {
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
}@:enum abstract Enum3(String) from String to String {
	var NULL : String = "NULL";
	var GENERATOR : String = "GENERATOR";
	var FNGENERATOR : String = "FNGENERATOR";
	var ENVELOPE : String = "ENVELOPE";
	var CYCLES : String = "CYCLES";
	var NOISE : String = "NOISE";
	var LIMITS : String = "LIMITS";
	var STEPPED : String = "STEPPED";
}@:enum abstract Enum4(String) from String to String {
	var TOGGLE : String = "TOGGLE";
	var SELECT : String = "SELECT";
	var DESELECT : String = "DESELECT";
	var INVERT : String = "INVERT";
}@:enum abstract Enum5(String) from String to String {
	var CHECK : String = "CHECK";
	var LEFT : String = "LEFT";
	var RIGHT : String = "RIGHT";
}@:enum abstract Enum6(String) from String to String {
	var CFRA : String = "CFRA";
	var NEAREST_FRAME : String = "NEAREST_FRAME";
	var NEAREST_SECOND : String = "NEAREST_SECOND";
	var NEAREST_MARKER : String = "NEAREST_MARKER";
}