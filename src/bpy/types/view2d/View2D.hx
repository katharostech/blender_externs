package bpy.types.view2d;
/**
	Scroll and zoom for a 2D region
**/
@:pythonImport("bpy.types.View2D") extern class View2D {
	/**
		Transform region coordinates to 2D view
		@param x x, Region x coordinate — int in [-inf, inf]
		@param y y, Region y coordinate — int in [-inf, inf]
		
		@returns float array of 2 items in [-inf, inf]
	**/
	function region_to_view(x:Int, y:Int):Array<Float>;
	/**
		Transform 2D view coordinates to region
		@param x x, 2D View x coordinate — float in [-inf, inf]
		@param y y, 2D View y coordinate — float in [-inf, inf]
		@param clip Clip, Clip coordinates to the visible region — boolean, (optional)
		
		@returns int array of 2 items in [-inf, inf]
	**/
	function view_to_region(x:Float, y:Float, clip:Bool):Array<Int>;
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