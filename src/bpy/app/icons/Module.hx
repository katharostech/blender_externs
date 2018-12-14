package bpy.app.icons;
/**
	Application Icons (bpy.app.icons)
**/
@:pythonImport("bpy.app.icons") extern class Module {
	/**
		
		@param range Pair of ints. — tuple.
		@param coords Sequence of bytes (6 floats for one triangle) for (X, Y) coordinates. — byte sequence.
		@param colors Sequence of ints (12 for one triangles) for RGBA. — byte sequence.
		
		@returns int
	**/
	static function new_triangles(range:Dynamic, coords:Dynamic, colors:Dynamic):Dynamic;
	/**
		
		@param filename File path. — string.
		
		@returns int
	**/
	static function new_triangles_from_file(filename:Dynamic):Dynamic;
	static function release():Void;
}