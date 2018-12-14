package bpy.types.outflowfluidsettings;
@:enum abstract Enum1(String) from String to String {
	var VOLUME : String = "VOLUME";
	var SHELL : String = "SHELL";
	var BOTH : String = "BOTH";
}/**
	Fluid simulation settings for objects removing fluids from the simulation
**/
@:pythonImport("bpy.types.OutflowFluidSettings") extern class OutflowFluidSettings {
	/**
		Object contributes to the fluid simulation
		
		Type: boolean, default False
	**/
	var use : Bool;
	/**
		Export this mesh as an animated one (slower and enforces No Slip, only use if really necessary [e.g. armatures or parented objects], animated pos/rot/scale F-Curves do not require it)
		
		Type: boolean, default False
	**/
	var use_animated_mesh : Bool;
	/**
		Volume initialization type (WARNING: complex volumes might require too much memory and break simulation)
		
		Type: enum in [‘VOLUME’, ‘SHELL’, ‘BOTH’], default ‘VOLUME’
	**/
	var volume_initialization : bpy.types.outflowfluidsettings.OutflowFluidSettings.Enum1;
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
	/**
		Type of participation in the fluid simulation
		
		Type: enum in [‘NONE’, ‘DOMAIN’, ‘FLUID’, ‘OBSTACLE’, ‘INFLOW’, ‘OUTFLOW’, ‘PARTICLE’, ‘CONTROL’], default ‘NONE’
	**/
	var type : bpy.types.fluidsettings.FluidSettings.Enum1;
}