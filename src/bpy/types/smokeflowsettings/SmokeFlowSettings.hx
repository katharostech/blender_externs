package bpy.types.smokeflowsettings;
@:enum abstract Enum1(String) from String to String {
	var PARTICLES : String = "PARTICLES";
	var MESH : String = "MESH";
}@:enum abstract Enum2(String) from String to String {
	var OUTFLOW : String = "OUTFLOW";
	var SMOKE : String = "SMOKE";
	var BOTH : String = "BOTH";
	var FIRE : String = "FIRE";
}@:enum abstract Enum3(String) from String to String {
	var AUTO : String = "AUTO";
	var UV : String = "UV";
}/**
	Smoke flow settings
**/
@:native("bpy.types.SmokeFlowSettings") extern class SmokeFlowSettings {
	/**
		
		
		Type: float in [0, 1], default 0.0
	**/
	var density : Float;
	/**
		Name of vertex group which determines surface emission rate
		
		Type: string, default “”, (never None)
	**/
	var density_vertex_group : String;
	/**
		
		
		Type: float in [0, 10], default 0.0
	**/
	var fuel_amount : Float;
	/**
		Texture that controls emission strength
		
		Type: Texture
	**/
	var noise_texture : bpy.types.texture.Texture;
	/**
		Particle size in simulation cells
		
		Type: float in [0.1, 20], default 0.0
	**/
	var particle_size : Float;
	/**
		Particle systems emitted from the object
		
		Type: ParticleSystem
	**/
	var particle_system : bpy.types.particlesystem.ParticleSystem;
	/**
		Color of smoke
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var smoke_color : Array<Float>;
	/**
		Change how smoke is emitted
		
		Type: enum in [‘PARTICLES’, ‘MESH’], default ‘PARTICLES’
	**/
	var smoke_flow_source : bpy.types.smokeflowsettings.SmokeFlowSettings.Enum1;
	/**
		Change how flow affects the simulation
		
		Type: enum in [‘OUTFLOW’, ‘SMOKE’, ‘BOTH’, ‘FIRE’], default ‘SMOKE’
	**/
	var smoke_flow_type : bpy.types.smokeflowsettings.SmokeFlowSettings.Enum2;
	/**
		Number of additional samples to take between frames to improve quality of fast moving flows
		
		Type: int in [0, 50], default 0
	**/
	var subframes : Int;
	/**
		Maximum distance from mesh surface to emit smoke
		
		Type: float in [0, 10], default 0.0
	**/
	var surface_distance : Float;
	/**
		Temperature difference to ambient temperature
		
		Type: float in [-10, 10], default 0.0
	**/
	var temperature : Float;
	/**
		Texture mapping type
		
		Type: enum in [‘AUTO’, ‘UV’], default ‘AUTO’
	**/
	var texture_map_type : bpy.types.smokeflowsettings.SmokeFlowSettings.Enum3;
	/**
		Z-offset of texture mapping
		
		Type: float in [0, 200], default 0.0
	**/
	var texture_offset : Float;
	/**
		Size of texture mapping
		
		Type: float in [0.01, 10], default 0.0
	**/
	var texture_size : Float;
	/**
		Only allow given density value in emitter area
		
		Type: boolean, default False
	**/
	var use_absolute : Bool;
	/**
		Smoke has some initial velocity when it is emitted
		
		Type: boolean, default False
	**/
	var use_initial_velocity : Bool;
	/**
		Set particle size in simulation cells or use nearest cell
		
		Type: boolean, default False
	**/
	var use_particle_size : Bool;
	/**
		Use a texture to control emission strength
		
		Type: boolean, default False
	**/
	var use_texture : Bool;
	/**
		UV map name
		
		Type: string, default “”, (never None)
	**/
	var uv_layer : String;
	/**
		Multiplier of source velocity passed to smoke
		
		Type: float in [-100, 100], default 0.0
	**/
	var velocity_factor : Float;
	/**
		Amount of normal directional velocity
		
		Type: float in [-100, 100], default 0.0
	**/
	var velocity_normal : Float;
	/**
		Amount of random velocity
		
		Type: float in [0, 10], default 0.0
	**/
	var velocity_random : Float;
	/**
		Factor for smoke emitted from inside the mesh volume
		
		Type: float in [0, 1], default 0.0
	**/
	var volume_density : Float;
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