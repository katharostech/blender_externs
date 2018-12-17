package blf;
/**
	Font Drawing (blf)
	
	This module provides access to blenders text drawing functions.
**/
@:pythonImport("blf") extern class Module {
	/**
		Set the aspect for drawing text.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param aspect The aspect ratio for text drawing to use. — float
	**/
	static function aspect(fontid:Int, aspect:Float):Void;
	/**
		Set the clipping, enable/disable using CLIPPING.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param xmin Clip the drawing area by these bounds. — float
		@param ymin Clip the drawing area by these bounds. — float
		@param xmax Clip the drawing area by these bounds. — float
		@param ymax Clip the drawing area by these bounds. — float
	**/
	static function clipping(fontid:Int, xmin:Float, ymin:Float, xmax:Float, ymax:Float):Void;
	/**
		Set the color for drawing text.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param r red channel 0.0 - 1.0. — float
		@param g green channel 0.0 - 1.0. — float
		@param b blue channel 0.0 - 1.0. — float
		@param a alpha channel 0.0 - 1.0. — float
	**/
	static function color(fontid:Int, r:Float, g:Float, b:Float, a:Float):Void;
	/**
		Return the width and height of the text.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param text the text to draw. — string
		
		@returns tuple of 2 floats
	**/
	static function dimensions(fontid:Int, text:String):Dynamic;
	/**
		Disable option.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param option One of ROTATION, CLIPPING, SHADOW or KERNING_DEFAULT. — int
	**/
	static function disable(fontid:Int, option:Int):Void;
	/**
		Draw text in the current context.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param text the text to draw. — string
	**/
	static function draw(fontid:Int, text:String):Void;
	/**
		Enable option.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param option One of ROTATION, CLIPPING, SHADOW or KERNING_DEFAULT. — int
	**/
	static function enable(fontid:Int, option:Int):Void;
	/**
		Load a new font.
		@param filename the filename of the font. — string
		
		@returns integer
	**/
	static function load(filename:String):Dynamic;
	/**
		Set the position for drawing text.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param x X axis position to draw the text. — float
		@param y Y axis position to draw the text. — float
		@param z Z axis position to draw the text. — float
	**/
	static function position(fontid:Int, x:Float, y:Float, z:Float):Void;
	/**
		Set the text rotation angle, enable/disable using ROTATION.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param angle The angle for text drawing to use. — float
	**/
	static function rotation(fontid:Int, angle:Float):Void;
	/**
		Shadow options, enable/disable using SHADOW .
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param level The blur level, can be 3, 5 or 0. — int
		@param r Shadow color (red channel 0.0 - 1.0). — float
		@param g Shadow color (green channel 0.0 - 1.0). — float
		@param b Shadow color (blue channel 0.0 - 1.0). — float
		@param a Shadow color (alpha channel 0.0 - 1.0). — float
	**/
	static function shadow(fontid:Int, level:Int, r:Float, g:Float, b:Float, a:Float):Void;
	/**
		Set the offset for shadow text.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param x Vertical shadow offset value in pixels. — float
		@param y Horizontal shadow offset value in pixels. — float
	**/
	static function shadow_offset(fontid:Int, x:Float, y:Float):Void;
	/**
		Set the size and dpi for drawing text.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param size Point size of the font. — int
		@param dpi dots per inch value to use for drawing. — int
	**/
	static function size(fontid:Int, size:Int, dpi:Int):Void;
	/**
		Unload an existing font.
		@param filename the filename of the font. — string
	**/
	static function unload(filename:String):Void;
	/**
		Set the wrap width, enable/disable using WORD_WRAP.
		@param fontid The id of the typeface as returned by blf.load(), for default font use 0. — int
		@param wrap_width The width (in pixels) to wrap words at. — int
	**/
	static function word_wrap(fontid:Int, wrap_width:Int):Void;
	/**
		constant value 2
	**/
	var CLIPPING(default, never) : Dynamic;
	/**
		constant value 8
	**/
	var KERNING_DEFAULT(default, never) : Dynamic;
	/**
		constant value 128
	**/
	var MONOCHROME(default, never) : Dynamic;
	/**
		constant value 1
	**/
	var ROTATION(default, never) : Dynamic;
	/**
		constant value 4
	**/
	var SHADOW(default, never) : Dynamic;
	/**
		constant value 64
	**/
	var WORD_WRAP(default, never) : Dynamic;
}