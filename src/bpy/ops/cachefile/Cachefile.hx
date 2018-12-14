package bpy.ops.cachefile;
@:enum abstract Enum1(String) from String to String {
	var DEFAULT : String = "DEFAULT";
	var LIST_SHORT : String = "LIST_SHORT";
	var LIST_LONG : String = "LIST_LONG";
	var THUMBNAIL : String = "THUMBNAIL";
}@:enum abstract Enum2(String) from String to String {
	var FILE_SORT_ALPHA : String = "FILE_SORT_ALPHA";
	var FILE_SORT_EXTENSION : String = "FILE_SORT_EXTENSION";
	var FILE_SORT_TIME : String = "FILE_SORT_TIME";
	var FILE_SORT_SIZE : String = "FILE_SORT_SIZE";
}