package;

import blendertools.Plugin;

class ExamplePlugin implements Plugin {
	static var bl_info = 'bl_info = {
	"name": "Haxe Blender Plugin",
	"category": "User",
	"location": "Properties -> Render -> Haxy",
	"description": "Haxe Plugin for Blender",
	"author": "Zicklag<zicklag@katharostech.com>",
	"version": (0, 1, 0),
	"blender": (2, 80, 0)
}';

	public static function register() {
		trace("Hello Blender! Registering Haxe module.");
	}

	public static function unregister() {
		trace("Goodbye Blender! Unregistering Haxe module.");
	}
}
