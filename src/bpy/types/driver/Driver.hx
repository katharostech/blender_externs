package bpy.types.driver;
@:enum abstract Enum1(String) from String to String {
	var AVERAGE : String = "AVERAGE";
	var SUM : String = "SUM";
	var SCRIPTED : String = "SCRIPTED";
	var MIN : String = "MIN";
	var MAX : String = "MAX";
}/**
	Driver for the value of a setting based on an external value
**/
@:pythonImport("bpy.types.Driver") extern class Driver {
	/**
		Expression to use for Scripted Expression
		
		Type: string, default “”, (never None)
	**/
	var expression : String;
	/**
		The scripted expression can be evaluated without using the full python interpreter
		
		Type: boolean, default False, (readonly)
	**/
	var is_simple_expression(default, never) : Bool;
	/**
		Driver could not be evaluated in past, so should be skipped
		
		Type: boolean, default False
	**/
	var is_valid : Bool;
	/**
		Driver type
		
		Type: enum in [‘AVERAGE’, ‘SUM’, ‘SCRIPTED’, ‘MIN’, ‘MAX’], default ‘AVERAGE’
	**/
	var type : bpy.types.driver.Driver.Enum1;
	/**
		Include a ‘self’ variable in the name-space, so drivers can easily reference the data being modified (object, bone, etc…)
		
		Type: boolean, default False
	**/
	var use_self : Bool;
	/**
		Properties acting as inputs for this driver
		
		Type: ChannelDriverVariables bpy_prop_collection of DriverVariable, (readonly)
	**/
	var variables(default, never) : bpy.types.channeldrivervariables.ChannelDriverVariables;
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