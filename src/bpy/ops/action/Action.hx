package bpy.ops.action;
@:enum abstract Enum1(String) from String to String {
	var CONSTANT : String = "CONSTANT";
	var LINEAR : String = "LINEAR";
	var MAKE_CYCLIC : String = "MAKE_CYCLIC";
	var CLEAR_CYCLIC : String = "CLEAR_CYCLIC";
}@:enum abstract Enum2(String) from String to String {
	var FREE : String = "FREE";
	var ALIGNED : String = "ALIGNED";
	var VECTOR : String = "VECTOR";
	var AUTO : String = "AUTO";
	var AUTO_CLAMPED : String = "AUTO_CLAMPED";
}@:enum abstract Enum3(String) from String to String {
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
}@:enum abstract Enum4(String) from String to String {
	var ALL : String = "ALL";
	var SEL : String = "SEL";
	var GROUP : String = "GROUP";
}@:enum abstract Enum5(String) from String to String {
	var KEYFRAME : String = "KEYFRAME";
	var BREAKDOWN : String = "BREAKDOWN";
	var MOVING_HOLD : String = "MOVING_HOLD";
	var EXTREME : String = "EXTREME";
	var JITTER : String = "JITTER";
}@:enum abstract Enum6(String) from String to String {
	var CFRA : String = "CFRA";
	var XAXIS : String = "XAXIS";
	var MARKER : String = "MARKER";
}@:enum abstract Enum7(String) from String to String {
	var START : String = "START";
	var END : String = "END";
	var RELATIVE : String = "RELATIVE";
	var NONE : String = "NONE";
}@:enum abstract Enum8(String) from String to String {
	var MIX : String = "MIX";
	var OVER_ALL : String = "OVER_ALL";
	var OVER_RANGE : String = "OVER_RANGE";
	var OVER_RANGE_ALL : String = "OVER_RANGE_ALL";
}@:enum abstract Enum9(String) from String to String {
	var TOGGLE : String = "TOGGLE";
	var SELECT : String = "SELECT";
	var DESELECT : String = "DESELECT";
	var INVERT : String = "INVERT";
}@:enum abstract Enum10(String) from String to String {
	var KEYS : String = "KEYS";
	var CFRA : String = "CFRA";
	var MARKERS_COLUMN : String = "MARKERS_COLUMN";
	var MARKERS_BETWEEN : String = "MARKERS_BETWEEN";
}@:enum abstract Enum11(String) from String to String {
	var CHECK : String = "CHECK";
	var LEFT : String = "LEFT";
	var RIGHT : String = "RIGHT";
}@:enum abstract Enum12(String) from String to String {
	var CFRA : String = "CFRA";
	var NEAREST_FRAME : String = "NEAREST_FRAME";
	var NEAREST_SECOND : String = "NEAREST_SECOND";
	var NEAREST_MARKER : String = "NEAREST_MARKER";
}