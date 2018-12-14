package freestyle.utils;
/**
	Object representing a bounding box consisting out of 2 2D vectors
**/
@:pythonImport("freestyle.utils.BoundingBox") extern class BoundingBox {
	/**
		True if self inside other, False otherwise
	**/
	function inside():Void;
}/**
	Collects and Stores stroke objects
**/
@:pythonImport("freestyle.utils.StrokeCollector") extern class StrokeCollector {
	function shade():Void;
}