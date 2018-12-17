package bpy.utils.units;
/**
	bpy.utils submodule (bpy.utils.units)
	
	This module contains some data/methods regarding units handling.
**/
@:pythonImport("bpy.utils.units") extern class Module {
	/**
		constant value bpy.utils.units.categories(NONE=’NONE’, LENGTH=’LENGTH’, AREA=’AREA’, VOLUME=’VOLUME’, MASS=’MASS’, ROTATION=’ROTATION’, TIME=’TIME’, VELOCITY=’VELOCITY’, ACCELERATION=’ACCELERATION’, CAMERA=’CAMERA’)
	**/
	var categories(default, never) : Dynamic;
	/**
		constant value bpy.utils.units.systems(NONE=’NONE’, METRIC=’METRIC’, IMPERIAL=’IMPERIAL’)
	**/
	var systems(default, never) : Dynamic;
	/**
		Convert a given input float value into a string with units.
		@param unit_system The unit system, from bpy.utils.units.systems. — string
		@param unit_category The category of data we are converting (length, area, rotation, etc.),
		                                        from bpy.utils.units.categories. — string
		@param value The value to convert to a string. — float
		@param precision Number of digits after the comma. — int
		@param split_unit Whether to use several units if needed (1m1cm), or always only one (1.01m). — bool
		@param compatible_unit Whether to use keyboard-friendly units (1m2) or nicer utf-8 ones (1m²). — bool
		
		@returns str
	**/
	static function to_string(unit_system:String, unit_category:String, value:Float, precision:Int, split_unit:Dynamic, compatible_unit:Dynamic):Dynamic;
	/**
		Convert a given input string into a float value.
		@param unit_system The unit system, from bpy.utils.units.systems. — string
		@param unit_category The category of data we are converting (length, area, rotation, etc.),
		                                        from bpy.utils.units.categories. — string
		@param str_input The string to convert to a float value. — string
		@param str_ref_unit A reference string from which to extract a default unit, if none is found in str_input. — string or None
		
		@returns float
	**/
	static function to_value(unit_system:String, unit_category:String, str_input:String, str_ref_unit:String):Float;
}