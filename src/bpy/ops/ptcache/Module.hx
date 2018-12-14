package bpy.ops.ptcache;
/**
	Ptcache Operators
**/
@:pythonImport("bpy.ops.ptcache") extern class Module {
	/**
		Add new cache
	**/
	static function add():Void;
	/**
		Bake physics
		@param bake Bake — boolean, (optional)
	**/
	static function bake(bake:Bool):Void;
	/**
		Bake all physics
		@param bake Bake — boolean, (optional)
	**/
	static function bake_all(bake:Bool):Void;
	/**
		Bake from cache
	**/
	static function bake_from_cache():Void;
	/**
		Free physics bake
	**/
	static function free_bake():Void;
	/**
		Free all baked caches of all objects in the current scene
	**/
	static function free_bake_all():Void;
	/**
		Delete current cache
	**/
	static function remove():Void;
}