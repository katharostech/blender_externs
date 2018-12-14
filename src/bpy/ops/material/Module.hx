package bpy.ops.material;
/**
	Material Operators
**/
@:pythonImport("bpy.ops.material") extern class Module {
	/**
		Copy the material settings and nodes
	**/
	static function copy():Void;
	/**
		Add a new material
	**/
	static function new():Void;
	/**
		Paste the material settings and nodes
	**/
	static function paste():Void;
}