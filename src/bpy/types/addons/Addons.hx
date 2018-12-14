package bpy.types.addons;
/**
	Collection of add-ons
**/
@:pythonImport("bpy.types.Addons") extern class Addons {
	/**
		Add a new add-on
		
		@returns Addon
	**/
	static function new():bpy.types.addon.Addon;
	/**
		Remove add-on
		@param addon Add-on to remove — Addon, (never None)
	**/
	static function remove(addon:bpy.types.addon.Addon):Void;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:Dynamic):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:Dynamic):Dynamic;
}