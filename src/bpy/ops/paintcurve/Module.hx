package bpy.ops.paintcurve;
/**
	Paintcurve Operators
**/
@:pythonImport("bpy.ops.paintcurve") extern class Module {
	/**
		Add New Paint Curve Point
		@param location Location, Location of vertex in area space — int array of 2 items in [0, 32767], (optional)
	**/
	static function add_point(location:Array<Int>):Void;
	/**
		Add new curve point and slide it
		@param PAINTCURVE_OT_add_point Add New Paint Curve Point, Add New Paint Curve Point — PAINTCURVE_OT_add_point, (optional)
		@param PAINTCURVE_OT_slide Slide Paint Curve Point, Select and slide paint curve point — PAINTCURVE_OT_slide, (optional)
	**/
	static function add_point_slide(PAINTCURVE_OT_add_point:Dynamic, PAINTCURVE_OT_slide:Dynamic):Void;
	/**
		Place cursor
	**/
	static function cursor():Void;
	/**
		Remove Paint Curve Point
	**/
	static function delete_point():Void;
	/**
		Draw curve
	**/
	static function draw():Void;
	/**
		Add new paint curve
	**/
	static function pyNew():Void;
	/**
		Select a paint curve point
		@param location Location, Location of vertex in area space — int array of 2 items in [0, 32767], (optional)
		@param toggle Toggle, (De)select all — boolean, (optional)
		@param extend Extend, Extend selection — boolean, (optional)
	**/
	static function select(location:Array<Int>, toggle:Bool, extend:Bool):Void;
	/**
		Select and slide paint curve point
		@param align Align Handles, Aligns opposite point handle during transform — boolean, (optional)
		@param select Select, Attempt to select a point handle before transform — boolean, (optional)
	**/
	static function slide(align:Bool, select:Bool):Void;
}