package bpy.types.actionfcurves;
/**
	Collection of action F-Curves
**/
@:pythonImport("bpy.types.ActionFCurves") extern class ActionFCurves {
	/**
		Add an F-Curve to the action
		@param data_path Data Path, F-Curve data path to use — string, (never None)
		@param index Index, Array index — int in [0, inf], (optional)
		@param action_group Action Group, Acton group to add this F-Curve into — string, (optional, never None)
		
		@returns FCurve
	**/
	function new(data_path:String, index:Int, action_group:String):bpy.types.fcurve.FCurve;
	/**
		Find an F-Curve. Note that this function performs a linear scan of all F-Curves in the action.
		@param data_path Data Path, F-Curve data path — string, (never None)
		@param index Index, Array index — int in [0, inf], (optional)
		
		@returns FCurve
	**/
	function find(data_path:String, index:Int):bpy.types.fcurve.FCurve;
	/**
		Remove action group
		@param fcurve F-Curve to remove — FCurve, (never None)
	**/
	function remove(fcurve:bpy.types.fcurve.FCurve):Void;
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