package freestyle.utils;
/**
	Object representing a bounding box consisting out of 2 2D vectors
**/
@:native("freestyle.utils.BoundingBox") extern class BoundingBox {
	/**
		True if self inside other, False otherwise
	**/
	function inside(other:Dynamic):Void;
}/**
	Collects and Stores stroke objects
**/
@:native("freestyle.utils.StrokeCollector") extern class StrokeCollector {
	function shade(stroke:Dynamic):Void;
}