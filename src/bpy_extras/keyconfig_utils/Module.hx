package bpy_extras.keyconfig_utils;
/**
	bpy_extras submodule (bpy_extras.keyconfig_utils)
**/
@:pythonImport("bpy_extras.keyconfig_utils") extern class Module {
	/**
		Register a set of keymaps for addons using a list of keymaps.
		
		See ‘blender_defaults.py’ for examples of the format this takes.
	**/
	static function addon_keymap_register(keymap_data:Dynamic):Void;
	/**
		Unregister a set of keymaps for addons.
	**/
	static function addon_keymap_unregister(keymap_data:Dynamic):Void;
	static function keyconfig_test(kc:Dynamic):Void;
}