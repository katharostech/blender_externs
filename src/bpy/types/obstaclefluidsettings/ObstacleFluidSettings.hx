package bpy.types.obstaclefluidsettings;
@:enum abstract Enum1(String) from String to String {
	var NOSLIP : String = "NOSLIP";
	var PARTIALSLIP : String = "PARTIALSLIP";
	var FREESLIP : String = "FREESLIP";
}@:enum abstract Enum2(String) from String to String {
	var VOLUME : String = "VOLUME";
	var SHELL : String = "SHELL";
	var BOTH : String = "BOTH";
}/**
	Fluid simulation settings for obstacles in the simulation
**/
@:native("bpy.types.ObstacleFluidSettings") extern class ObstacleFluidSettings {
	/**
		This is an unphysical value for moving objects - it controls the impact an obstacle has on the fluid, =0 behaves a bit like outflow (deleting fluid), =1 is default, while &gt;1 results in high forces (can be used to tweak total mass)
		
		Type: float in [-2, 10], default 0.0
	**/
	var impact_factor : Float;
	/**
		Amount of mixing between no- and free-slip, 0 is no slip and 1 is free slip
		
		Type: float in [0, 1], default 0.0
	**/
	var partial_slip_factor : Float;
	/**
		
		
		Type: enum in [‘NOSLIP’, ‘PARTIALSLIP’, ‘FREESLIP’], default ‘NOSLIP’
	**/
	var slip_type : bpy.types.obstaclefluidsettings.ObstacleFluidSettings.Enum1;
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
	var volume_initialization : bpy.types.obstaclefluidsettings.ObstacleFluidSettings.Enum2;
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
	/**
		Type of participation in the fluid simulation
		
		Type: enum in [‘NONE’, ‘DOMAIN’, ‘FLUID’, ‘OBSTACLE’, ‘INFLOW’, ‘OUTFLOW’, ‘PARTICLE’, ‘CONTROL’], default ‘NONE’
	**/
	var type : bpy.types.fluidsettings.FluidSettings.Enum1;
}