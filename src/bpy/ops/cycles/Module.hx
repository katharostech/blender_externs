package bpy.ops.cycles;
/**
	Cycles Operators
**/
@:pythonImport("bpy.ops.cycles") extern class Module {
	/**
		Enable nodes on a material, world or light
	**/
	static function use_shading_nodes():Void;
}