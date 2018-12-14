package bpy.ops.view2d;
/**
	View2D Operators
**/
@:pythonImport("bpy.ops.view2d") extern class Module {
	/**
		Use a 3D mouse device to pan/zoom the view
	**/
	static function ndof():Void;
	/**
		Pan the view
		@param deltax Delta X — int in [-inf, inf], (optional)
		@param deltay Delta Y — int in [-inf, inf], (optional)
	**/
	static function pan(deltax:Int, deltay:Int):Void;
	/**
		Reset the view
	**/
	static function reset():Void;
	/**
		Scroll the view down
		@param deltax Delta X — int in [-inf, inf], (optional)
		@param deltay Delta Y — int in [-inf, inf], (optional)
		@param page Page, Scroll down one page — boolean, (optional)
	**/
	static function scroll_down(deltax:Int, deltay:Int, page:Bool):Void;
	/**
		Scroll the view left
		@param deltax Delta X — int in [-inf, inf], (optional)
		@param deltay Delta Y — int in [-inf, inf], (optional)
	**/
	static function scroll_left(deltax:Int, deltay:Int):Void;
	/**
		Scroll the view right
		@param deltax Delta X — int in [-inf, inf], (optional)
		@param deltay Delta Y — int in [-inf, inf], (optional)
	**/
	static function scroll_right(deltax:Int, deltay:Int):Void;
	/**
		Scroll the view up
		@param deltax Delta X — int in [-inf, inf], (optional)
		@param deltay Delta Y — int in [-inf, inf], (optional)
		@param page Page, Scroll up one page — boolean, (optional)
	**/
	static function scroll_up(deltax:Int, deltay:Int, page:Bool):Void;
	/**
		Scroll view by mouse click and drag
	**/
	static function scroller_activate():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
	**/
	static function smoothview(xmin:Int, xmax:Int, ymin:Int, ymax:Int):Void;
	/**
		Zoom in/out the view
		@param deltax Delta X — float in [-inf, inf], (optional)
		@param deltay Delta Y — float in [-inf, inf], (optional)
	**/
	static function zoom(deltax:Float, deltay:Float):Void;
	/**
		Zoom in the view to the nearest item contained in the border
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param zoom_out Zoom Out — boolean, (optional)
	**/
	static function zoom_border(xmin:Int, xmax:Int, ymin:Int, ymax:Int, zoom_out:Bool):Void;
	/**
		Zoom in the view
		@param zoomfacx Zoom Factor X — float in [-inf, inf], (optional)
		@param zoomfacy Zoom Factor Y — float in [-inf, inf], (optional)
	**/
	static function zoom_in(zoomfacx:Float, zoomfacy:Float):Void;
	/**
		Zoom out the view
		@param zoomfacx Zoom Factor X — float in [-inf, inf], (optional)
		@param zoomfacy Zoom Factor Y — float in [-inf, inf], (optional)
	**/
	static function zoom_out(zoomfacx:Float, zoomfacy:Float):Void;
}