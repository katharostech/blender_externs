package bpy.types.animdatadrivers;
/**
	Collection of Driver F-Curves
**/
@:native("bpy.types.AnimDataDrivers") extern class AnimDataDrivers {
	/**
		Add a new driver given an existing one
		@param src_driver Existing Driver F-Curve to use as template for a new one — FCurve, (optional)
		
		@returns FCurve
	**/
	function from_existing(src_driver:bpy.types.fcurve.FCurve):bpy.types.fcurve.FCurve;
	/**
		Find a driver F-Curve. Note that this function performs a linear scan of all driver F-Curves.
		@param data_path Data Path, F-Curve data path — string, (never None)
		@param index Index, Array index — int in [0, inf], (optional)
		
		@returns FCurve
	**/
	function find(data_path:String, index:Int):bpy.types.fcurve.FCurve;
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