package bpy_extras.io_utils;
@:native("bpy_extras.io_utils.ExportHelper") extern class ExportHelper {
	function check(context:Dynamic):Void;
	function invoke(context:Dynamic, event:Dynamic):Void;
}@:native("bpy_extras.io_utils.ImportHelper") extern class ImportHelper {
	function check(context:Dynamic):Void;
	function invoke(context:Dynamic, event:Dynamic):Void;
}