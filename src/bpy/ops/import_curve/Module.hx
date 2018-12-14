package bpy.ops.import_curve;
/**
	Import Curve Operators
**/
@:pythonImport("bpy.ops.import_curve") extern class Module {
	/**
		Load a SVG file
		@param filepath File Path, Filepath used for importing the file — string, (optional, never None)
		@param axis_forward Forward — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param axis_up Up — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param filter_glob filter_glob — string, (optional, never None)
	**/
	static function svg(filepath:String, axis_forward:bpy.ops.import_curve.Import_curve.Enum1, axis_up:bpy.ops.import_curve.Import_curve.Enum2, filter_glob:String):Void;
}