package bpy.ops.console;
@:enum abstract Enum1(String) from String to String {
	var NEXT_CHARACTER : String = "NEXT_CHARACTER";
	var PREVIOUS_CHARACTER : String = "PREVIOUS_CHARACTER";
	var NEXT_WORD : String = "NEXT_WORD";
	var PREVIOUS_WORD : String = "PREVIOUS_WORD";
}@:enum abstract Enum2(String) from String to String {
	var LINE_BEGIN : String = "LINE_BEGIN";
	var LINE_END : String = "LINE_END";
	var PREVIOUS_CHARACTER : String = "PREVIOUS_CHARACTER";
	var NEXT_CHARACTER : String = "NEXT_CHARACTER";
	var PREVIOUS_WORD : String = "PREVIOUS_WORD";
	var NEXT_WORD : String = "NEXT_WORD";
}@:enum abstract Enum3(String) from String to String {
	var OUTPUT : String = "OUTPUT";
	var INPUT : String = "INPUT";
	var INFO : String = "INFO";
	var ERROR : String = "ERROR";
}