package bpy.types.gpencilstrokepoints;
/**
	Collection of grease pencil stroke points
**/
@:native("bpy.types.GPencilStrokePoints") extern class GPencilStrokePoints {
	/**
		Add a new grease pencil stroke point
		@param count Number, Number of points to add to the stroke — int in [0, inf]
		@param pressure Pressure, Pressure for newly created points — float in [0, 1], (optional)
		@param strength Strength, Color intensity (alpha factor) for newly created points — float in [0, 1], (optional)
	**/
	function add(count:Int, pressure:Float, strength:Float):Void;
	/**
		Remove a grease pencil stroke point
		@param index Index, point index — int in [-inf, inf], (optional)
	**/
	function pop(index:Int):Void;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:String):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:String):Dynamic;
}