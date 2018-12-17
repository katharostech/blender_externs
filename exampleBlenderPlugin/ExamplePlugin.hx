package;

import python.Set;
import blendertools.Plugin;
import bpy.types.operator.Operator;

class SimpleOperator extends Operator {
	static var bl_idname = "object.simple_operator";
	static var bl_label = "Tool Name";
	// public function new() {
	// 	bl_idname = "object.simple_operator";
	// 	bl_label = "Tool Name";
	// }

	public override function execute(context:Dynamic) {
		trace("Hello World");
		return new Set(["FINISHED"]);
	}
}

class ExamplePlugin implements Plugin {
	static var bl_info = 'bl_info = {
	"name": "Haxe Blender Plugin",
	"category": "User",
	"location": "Properties -> Render -> Haxe Blender Plugin",
	"description": "Haxe Plugin for Blender",
	"author": "Armory3D.com",
	"version": (0, 1, 0),
	"blender": (2, 80, 0)
}';

	public static function register() {
		bpy.utils.Module.register_class(SimpleOperator);
		trace("Hello Blender! Registering Haxe module.");
	}

	public static function unregister() {
		trace("Goodbye Blender! Unregistering Haxe module.");
	}
}
