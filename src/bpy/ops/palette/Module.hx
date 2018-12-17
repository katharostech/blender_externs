package bpy.ops.palette;
/**
	Palette Operators
**/
@:pythonImport("bpy.ops.palette") extern class Module {
	/**
		Add new color to active palette
	**/
	static function color_add():Void;
	/**
		Remove active color from palette
	**/
	static function color_delete():Void;
	/**
		Add new palette
	**/
	static function pyNew():Void;
}