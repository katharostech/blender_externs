package bpy.ops.mask;
@:enum abstract Enum1(String) from String to String {
	var AUTO : String = "AUTO";
	var VECTOR : String = "VECTOR";
	var ALIGNED : String = "ALIGNED";
	var ALIGNED_DOUBLESIDE : String = "ALIGNED_DOUBLESIDE";
	var FREE : String = "FREE";
}@:enum abstract Enum2(String) from String to String {
	var UP : String = "UP";
	var DOWN : String = "DOWN";
}@:enum abstract Enum3(String) from String to String {
	var TOGGLE : String = "TOGGLE";
	var SELECT : String = "SELECT";
	var DESELECT : String = "DESELECT";
	var INVERT : String = "INVERT";
}