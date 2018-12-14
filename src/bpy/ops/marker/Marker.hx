package bpy.ops.marker;
@:enum abstract Enum1(String) from String to String {
	var  : String = "";
}@:enum abstract Enum2(String) from String to String {
	var TOGGLE : String = "TOGGLE";
	var SELECT : String = "SELECT";
	var DESELECT : String = "DESELECT";
	var INVERT : String = "INVERT";
}