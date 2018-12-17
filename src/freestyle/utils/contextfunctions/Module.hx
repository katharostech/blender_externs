package freestyle.utils.contextfunctions;
/**
	freestyle.utils submodule (freestyle.utils.ContextFunctions)
	
	The Blender Freestyle.ContextFunctions submodule
**/
@:pythonImport("freestyle.utils.ContextFunctions") extern class Module {
	/**
		Returns the border.
		
		@returns tuple
	**/
	static function get_border():Dynamic;
	/**
		Returns the canvas height.
		
		@returns int
	**/
	static function get_canvas_height():Int;
	/**
		Returns the canvas width.
		
		@returns int
	**/
	static function get_canvas_width():Int;
	/**
		Returns the selected FEdge.
		
		@returns FEdge
	**/
	static function get_selected_fedge():Dynamic;
	/**
		Returns the system time stamp.
		
		@returns int
	**/
	static function get_time_stamp():Int;
	/**
		Loads an image map for further reading.
		@param file_name The name of the image file. — str
		@param map_name The name that will be used to access this image. — str
		@param num_levels The number of levels in the map pyramid
		                                        (default = 4).  If num_levels == 0, the complete pyramid is
		                                        built. — int
		@param sigma The sigma value of the gaussian function. — float
	**/
	static function load_map(file_name:Dynamic, map_name:Dynamic, num_levels:Int, sigma:Float):Void;
	/**
		Reads a pixel in the complete view map.
		@param level The level of the pyramid in which we wish to read the
		                                        pixel. — int
		@param x The x coordinate of the pixel we wish to read.  The origin
		                                        is in the lower-left corner. — int
		@param y The y coordinate of the pixel we wish to read.  The origin
		                                        is in the lower-left corner. — int
		
		@returns float
	**/
	static function read_complete_view_map_pixel(level:Int, x:Int, y:Int):Float;
	/**
		Reads a pixel in one of the oriented view map images.
		@param orientation The number telling which orientation we want to
		                                        check. — int
		@param level The level of the pyramid in which we wish to read the
		                                        pixel. — int
		@param x The x coordinate of the pixel we wish to read.  The origin
		                                        is in the lower-left corner. — int
		@param y The y coordinate of the pixel we wish to read.  The origin
		                                        is in the lower-left corner. — int
		
		@returns float
	**/
	static function read_directional_view_map_pixel(orientation:Int, level:Int, x:Int, y:Int):Float;
	/**
		Reads a pixel in a user-defined map.
		@param map_name The name of the map. — str
		@param level The level of the pyramid in which we wish to read the
		                                        pixel. — int
		@param x The x coordinate of the pixel we wish to read.  The origin
		                                        is in the lower-left corner. — int
		@param y The y coordinate of the pixel we wish to read.  The origin
		                                        is in the lower-left corner. — int
		
		@returns float
	**/
	static function read_map_pixel(map_name:Dynamic, level:Int, x:Int, y:Int):Float;
}