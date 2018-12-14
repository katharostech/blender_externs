package bpy.types.fluidsettings;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var DOMAIN : String = "DOMAIN";
	var FLUID : String = "FLUID";
	var OBSTACLE : String = "OBSTACLE";
	var INFLOW : String = "INFLOW";
	var OUTFLOW : String = "OUTFLOW";
	var PARTICLE : String = "PARTICLE";
	var CONTROL : String = "CONTROL";
}/**
	Fluid simulation settings for an object taking part in the simulation
**/
@:pythonImport("bpy.types.FluidSettings") extern class FluidSettings {
	/**
		Type of participation in the fluid simulation
		
		Type: enum in [‘NONE’, ‘DOMAIN’, ‘FLUID’, ‘OBSTACLE’, ‘INFLOW’, ‘OUTFLOW’, ‘PARTICLE’, ‘CONTROL’], default ‘NONE’
	**/
	var type : bpy.types.fluidsettings.FluidSettings.Enum1;
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