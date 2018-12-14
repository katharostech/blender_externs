package bpy.ops.mball;
@:enum abstract Enum1(String) from String to String {
	var TOGGLE : String = "TOGGLE";
	var SELECT : String = "SELECT";
	var DESELECT : String = "DESELECT";
	var INVERT : String = "INVERT";
}@:enum abstract Enum2(String) from String to String {
	var SELECT : String = "SELECT";
	var DESELECT : String = "DESELECT";
}@:enum abstract Enum3(String) from String to String {
	var TYPE : String = "TYPE";
	var RADIUS : String = "RADIUS";
	var STIFFNESS : String = "STIFFNESS";
	var ROTATION : String = "ROTATION";
}