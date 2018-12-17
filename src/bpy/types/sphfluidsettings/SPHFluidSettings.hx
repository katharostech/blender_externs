package bpy.types.sphfluidsettings;
@:enum abstract Enum1(String) from String to String {
	var DDR : String = "DDR";
	var CLASSICAL : String = "CLASSICAL";
}/**
	Settings for particle fluids physics
**/
@:native("bpy.types.SPHFluidSettings") extern class SPHFluidSettings {
	/**
		Artificial buoyancy force in negative gravity direction based on pressure differences inside the fluid
		
		Type: float in [0, 10], default 0.0
	**/
	var buoyancy : Float;
	/**
		Interaction radius is a factor of 4 * particle size
		
		Type: boolean, default False
	**/
	var factor_radius : Bool;
	/**
		Repulsion is a factor of stiffness
		
		Type: boolean, default False
	**/
	var factor_repulsion : Bool;
	/**
		Spring rest length is a factor of 2 * particle size
		
		Type: boolean, default False
	**/
	var factor_rest_length : Bool;
	/**
		Stiff viscosity is a factor of normal viscosity
		
		Type: boolean, default False
	**/
	var factor_stiff_viscosity : Bool;
	/**
		Fluid interaction radius
		
		Type: float in [0, 20], default 0.0
	**/
	var fluid_radius : Float;
	/**
		Linear viscosity
		
		Type: float in [0, 100], default 0.0
	**/
	var linear_viscosity : Float;
	/**
		How much the spring rest length can change after the elastic limit is crossed
		
		Type: float in [0, 100], default 0.0
	**/
	var plasticity : Float;
	/**
		How strongly the fluid tries to keep from clustering (factor of stiffness)
		
		Type: float in [0, 100], default 0.0
	**/
	var repulsion : Float;
	/**
		Fluid rest density
		
		Type: float in [0, 10000], default 0.0
	**/
	var rest_density : Float;
	/**
		Spring rest length (factor of particle radius)
		
		Type: float in [0, 2], default 0.0
	**/
	var rest_length : Float;
	/**
		The code used to calculate internal forces on particles
		
		Type: enum in [‘DDR’, ‘CLASSICAL’], default ‘DDR’
	**/
	var solver : bpy.types.sphfluidsettings.SPHFluidSettings.Enum1;
	/**
		Spring force
		
		Type: float in [0, 100], default 0.0
	**/
	var spring_force : Float;
	/**
		Create springs for this number of frames since particles birth (0 is always)
		
		Type: int in [0, 100], default 0
	**/
	var spring_frames : Int;
	/**
		Creates viscosity for expanding fluid
		
		Type: float in [0, 100], default 0.0
	**/
	var stiff_viscosity : Float;
	/**
		How incompressible the fluid is (speed of sound)
		
		Type: float in [0, 1000], default 0.0
	**/
	var stiffness : Float;
	/**
		Density is calculated as a factor of default density (depends on particle size)
		
		Type: boolean, default False
	**/
	var use_factor_density : Bool;
	/**
		Use the initial length as spring rest length instead of 2 * particle size
		
		Type: boolean, default False
	**/
	var use_initial_rest_length : Bool;
	/**
		Use viscoelastic springs instead of Hooke’s springs
		
		Type: boolean, default False
	**/
	var use_viscoelastic_springs : Bool;
	/**
		How much the spring has to be stretched/compressed in order to change it’s rest length
		
		Type: float in [0, 1], default 0.0
	**/
	var yield_ratio : Float;
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