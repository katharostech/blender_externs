package bpy.types.nlastripfcurves;
/**
	Collection of NLA strip F-Curves
**/
@:pythonImport("bpy.types.NlaStripFCurves") extern class NlaStripFCurves {
	/**
		Find an F-Curve. Note that this function performs a linear scan of all F-Curves in the NLA strip.
		@param data_path Data Path, F-Curve data path — string, (never None)
		@param index Index, Array index — int in [0, inf], (optional)
		
		@returns FCurve
	**/
	function find(data_path:String, index:Int):bpy.types.fcurve.FCurve;
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