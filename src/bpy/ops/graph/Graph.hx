package bpy.ops.graph;
@:enum abstract Enum1(String) from String to String {
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
}@:enum abstract Enum2(String) from String to String {
	var AUTO : String = "AUTO";
	var EASE_IN : String = "EASE_IN";
	var EASE_OUT : String = "EASE_OUT";
	var EASE_IN_OUT : String = "EASE_IN_OUT";
}@:enum abstract Enum3(String) from String to String {
	var CONSTANT : String = "CONSTANT";
	var LINEAR : String = "LINEAR";
	var MAKE_CYCLIC : String = "MAKE_CYCLIC";
	var CLEAR_CYCLIC : String = "CLEAR_CYCLIC";
}@:enum abstract Enum4(String) from String to String {
	var NULL : String = "NULL";
	var GENERATOR : String = "GENERATOR";
	var FNGENERATOR : String = "FNGENERATOR";
	var ENVELOPE : String = "ENVELOPE";
	var CYCLES : String = "CYCLES";
	var NOISE : String = "NOISE";
	var LIMITS : String = "LIMITS";
	var STEPPED : String = "STEPPED";
}@:enum abstract Enum5(String) from String to String {
	var FREE : String = "FREE";
	var ALIGNED : String = "ALIGNED";
	var VECTOR : String = "VECTOR";
	var AUTO : String = "AUTO";
	var AUTO_CLAMPED : String = "AUTO_CLAMPED";
}@:enum abstract Enum6(String) from String to String {
	var CONSTANT : String = "CONSTANT";
	var LINEAR : String = "LINEAR";
	var BEZIER : String = "BEZIER";
	var SINE : String = "SINE";
	var QUAD : String = "QUAD";
	var CUBIC : String = "CUBIC";
	var QUART : String = "QUART";
	var QUINT : String = "QUINT";
	var EXPO : String = "EXPO";
	var CIRC : String = "CIRC";
	var BACK : String = "BACK";
	var BOUNCE : String = "BOUNCE";
	var ELASTIC : String = "ELASTIC";
}@:enum abstract Enum7(String) from String to String {
	var ALL : String = "ALL";
	var SEL : String = "SEL";
	var CURSOR_ACTIVE : String = "CURSOR_ACTIVE";
	var CURSOR_SEL : String = "CURSOR_SEL";
}@:enum abstract Enum8(String) from String to String {
	var CFRA : String = "CFRA";
	var VALUE : String = "VALUE";
	var YAXIS : String = "YAXIS";
	var XAXIS : String = "XAXIS";
	var MARKER : String = "MARKER";
}@:enum abstract Enum9(String) from String to String {
	var START : String = "START";
	var END : String = "END";
	var RELATIVE : String = "RELATIVE";
	var NONE : String = "NONE";
}@:enum abstract Enum10(String) from String to String {
	var MIX : String = "MIX";
	var OVER_ALL : String = "OVER_ALL";
	var OVER_RANGE : String = "OVER_RANGE";
	var OVER_RANGE_ALL : String = "OVER_RANGE_ALL";
}@:enum abstract Enum11(String) from String to String {
	var TOGGLE : String = "TOGGLE";
	var SELECT : String = "SELECT";
	var DESELECT : String = "DESELECT";
	var INVERT : String = "INVERT";
}@:enum abstract Enum12(String) from String to String {
	var KEYS : String = "KEYS";
	var CFRA : String = "CFRA";
	var MARKERS_COLUMN : String = "MARKERS_COLUMN";
	var MARKERS_BETWEEN : String = "MARKERS_BETWEEN";
}@:enum abstract Enum13(String) from String to String {
	var CHECK : String = "CHECK";
	var LEFT : String = "LEFT";
	var RIGHT : String = "RIGHT";
}@:enum abstract Enum14(String) from String to String {
	var CFRA : String = "CFRA";
	var VALUE : String = "VALUE";
	var NEAREST_FRAME : String = "NEAREST_FRAME";
	var NEAREST_SECOND : String = "NEAREST_SECOND";
	var NEAREST_MARKER : String = "NEAREST_MARKER";
	var HORIZONTAL : String = "HORIZONTAL";
}@:enum abstract Enum15(String) from String to String {
	var DEFAULT : String = "DEFAULT";
	var LIST_SHORT : String = "LIST_SHORT";
	var LIST_LONG : String = "LIST_LONG";
	var THUMBNAIL : String = "THUMBNAIL";
}@:enum abstract Enum16(String) from String to String {
	var FILE_SORT_ALPHA : String = "FILE_SORT_ALPHA";
	var FILE_SORT_EXTENSION : String = "FILE_SORT_EXTENSION";
	var FILE_SORT_TIME : String = "FILE_SORT_TIME";
	var FILE_SORT_SIZE : String = "FILE_SORT_SIZE";
}