package gpu_extras.presets;
/**
	gpu_extras submodule (gpu_extras.presets)
**/
@:pythonImport("gpu_extras.presets") extern class Module {
	/**
		Draw a circle.
		@param position Position where the circle will be drawn. — 2D Vector
		@param color Color of the circle. To use transparency GL_BLEND has to be enabled. — tuple containing RGBA values
		@param radius Radius of the circle. — float
		@param segments How many segments will be used to draw the circle.
		                                        Higher values give besser results but the drawing will take longer. — int
	**/
	static function draw_circle_2d(position:Dynamic, color:Dynamic, radius:Dynamic, segments:Dynamic):Void;
	/**
		Draw a 2d texture.
		@param texture_id OpenGL id of the texture (e.g. bpy.types.Image.bindcode). — int
		@param position Position of the lower left corner. — 2D Vector
		@param width Width of the image when drawn (not necessarily
		                                        the original width of the texture). — float
		@param height Height of the image when drawn. — float
	**/
	static function draw_texture_2d(texture_id:Dynamic, position:Dynamic, width:Dynamic, height:Dynamic):Void;
}