package bpy.types.controlfluidsettings;
/**
	Fluid simulation settings for objects controlling the motion of fluid in the simulation
**/
@:native("bpy.types.ControlFluidSettings") extern class ControlFluidSettings {
	/**
		Force field radius around the control object
		
		Type: float in [0, 10], default 0.0
	**/
	var attraction_radius : Float;
	/**
		Force strength for directional attraction towards the control object
		
		Type: float in [-10, 10], default 0.0
	**/
	var attraction_strength : Float;
	/**
		Time when the control particles are deactivated
		
		Type: float in [0, inf], default 0.0
	**/
	var end_time : Float;
	/**
		Quality which is used for object sampling (higher = better but slower)
		
		Type: float in [5, 100], default 0.0
	**/
	var quality : Float;
	/**
		Time when the control particles are activated
		
		Type: float in [0, inf], default 0.0
	**/
	var start_time : Float;
	/**
		Object contributes to the fluid simulation
		
		Type: boolean, default False
	**/
	var use : Bool;
	/**
		Reverse control object movement
		
		Type: boolean, default False
	**/
	var use_reverse_frames : Bool;
	/**
		Force field radius around the control object
		
		Type: float in [0, 10], default 0.0
	**/
	var velocity_radius : Float;
	/**
		Force strength of how much of the control object’s velocity is influencing the fluid velocity
		
		Type: float in [0, 10], default 0.0
	**/
	var velocity_strength : Float;
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