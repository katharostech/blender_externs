package bpy.ops.ui;
@:enum abstract Enum1(String) from String to String {
	var SINGLE_MANY : String = "SINGLE_MANY";
	var DIRECT : String = "DIRECT";
	var MATCH : String = "MATCH";
	var NONE_ALL : String = "NONE_ALL";
	var NONE_SINGLE : String = "NONE_SINGLE";
}@:enum abstract Enum2(String) from String to String {
	var NOOP : String = "NOOP";
	var REPLACE : String = "REPLACE";
	var DIFFERENCE : String = "DIFFERENCE";
	var FACTOR : String = "FACTOR";
}