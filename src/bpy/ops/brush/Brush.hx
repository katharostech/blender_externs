package bpy.ops.brush;
@:enum abstract Enum1(String) from String to String {
	var SHARP : String = "SHARP";
	var SMOOTH : String = "SMOOTH";
	var MAX : String = "MAX";
	var LINE : String = "LINE";
	var ROUND : String = "ROUND";
	var ROOT : String = "ROOT";
}@:enum abstract Enum2(String) from String to String {
	var TRANSLATION : String = "TRANSLATION";
	var SCALE : String = "SCALE";
	var ROTATION : String = "ROTATION";
}@:enum abstract Enum3(String) from String to String {
	var PRIMARY : String = "PRIMARY";
	var SECONDARY : String = "SECONDARY";
}@:enum abstract Enum4(String) from String to String {
	var PINCH : String = "PINCH";
	var RELAX : String = "RELAX";
	var GRAB : String = "GRAB";
}