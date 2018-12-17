package bpy.types.particlesystem;
/**
	Particle system in an object
**/
@:native("bpy.types.ParticleSystem") extern class ParticleSystem {
	/**
		
		
		Type: ParticleTarget, (readonly)
	**/
	var active_particle_target(default, never) : bpy.types.particletarget.ParticleTarget;
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var active_particle_target_index : Int;
	/**
		UV map to control billboard normals
		
		Type: string, default “”, (never None)
	**/
	var billboard_normal_uv : String;
	/**
		UV map to control billboard splitting
		
		Type: string, default “”, (never None)
	**/
	var billboard_split_uv : String;
	/**
		UV map to control billboard time index (X-Y)
		
		Type: string, default “”, (never None)
	**/
	var billboard_time_index_uv : String;
	/**
		Child particles generated by the particle system
		
		Type: bpy_prop_collection of ChildParticle, (readonly)
	**/
	var child_particles(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Offset in the random number table for child particles, to get a different randomized result
		
		Type: int in [0, inf], default 0
	**/
	var child_seed : Int;
	/**
		Cloth dynamics for hair
		
		Type: ClothModifier, (readonly, never None)
	**/
	var cloth(default, never) : bpy.types.clothmodifier.ClothModifier;
	/**
		The current simulation time step size, as a fraction of a frame
		
		Type: float in [0.00990099, 1], default 0.0, (readonly)
	**/
	var dt_frac(default, never) : Float;
	/**
		Particle system has multiple point caches
		
		Type: boolean, default False, (readonly)
	**/
	var has_multiple_caches(default, never) : Bool;
	/**
		Negate the effect of the clump vertex group
		
		Type: boolean, default False
	**/
	var invert_vertex_group_clump : Bool;
	/**
		Negate the effect of the density vertex group
		
		Type: boolean, default False
	**/
	var invert_vertex_group_density : Bool;
	/**
		Negate the effect of the field vertex group
		
		Type: boolean, default False
	**/
	var invert_vertex_group_field : Bool;
	/**
		Negate the effect of the kink vertex group
		
		Type: boolean, default False
	**/
	var invert_vertex_group_kink : Bool;
	/**
		Negate the effect of the length vertex group
		
		Type: boolean, default False
	**/
	var invert_vertex_group_length : Bool;
	/**
		Negate the effect of the rotation vertex group
		
		Type: boolean, default False
	**/
	var invert_vertex_group_rotation : Bool;
	/**
		Negate the effect of the roughness 1 vertex group
		
		Type: boolean, default False
	**/
	var pyinvert_vertex_group_roughness_1 : Bool;
	/**
		Negate the effect of the roughness 2 vertex group
		
		Type: boolean, default False
	**/
	var pyinvert_vertex_group_roughness_2 : Bool;
	/**
		Negate the effect of the roughness end vertex group
		
		Type: boolean, default False
	**/
	var invert_vertex_group_roughness_end : Bool;
	/**
		Negate the effect of the size vertex group
		
		Type: boolean, default False
	**/
	var invert_vertex_group_size : Bool;
	/**
		Negate the effect of the tangent vertex group
		
		Type: boolean, default False
	**/
	var invert_vertex_group_tangent : Bool;
	/**
		Negate the effect of the twist vertex group
		
		Type: boolean, default False
	**/
	var invert_vertex_group_twist : Bool;
	/**
		Negate the effect of the velocity vertex group
		
		Type: boolean, default False
	**/
	var invert_vertex_group_velocity : Bool;
	/**
		Particle system can be edited in particle mode
		
		Type: boolean, default False, (readonly)
	**/
	var is_editable(default, never) : Bool;
	/**
		Particle system has been edited in particle mode
		
		Type: boolean, default False, (readonly)
	**/
	var is_edited(default, never) : Bool;
	/**
		Hair keys are in global coordinate space
		
		Type: boolean, default False, (readonly)
	**/
	var is_global_hair(default, never) : Bool;
	/**
		Particle system name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Use this object’s coordinate system instead of global coordinate system
		
		Type: Object
	**/
	var parent : bpy.types.object.Object;
	/**
		Particles generated by the particle system
		
		Type: bpy_prop_collection of Particle, (readonly)
	**/
	var particles(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: PointCache, (readonly, never None)
	**/
	var point_cache(default, never) : bpy.types.pointcache.PointCache;
	/**
		For reactor systems, the object that has the target particle system (empty if same object)
		
		Type: Object
	**/
	var reactor_target_object : bpy.types.object.Object;
	/**
		For reactor systems, index of particle system on the target object
		
		Type: int in [1, 32767], default 0
	**/
	var reactor_target_particle_system : Int;
	/**
		Offset in the random number table, to get a different randomized result
		
		Type: int in [0, inf], default 0
	**/
	var seed : Int;
	/**
		Particle system settings
		
		Type: ParticleSettings, (never None)
	**/
	var settings : bpy.types.particlesettings.ParticleSettings;
	/**
		Target particle systems
		
		Type: bpy_prop_collection of ParticleTarget, (readonly)
	**/
	var targets(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Enable hair dynamics using cloth simulation
		
		Type: boolean, default False
	**/
	var use_hair_dynamics : Bool;
	/**
		Use key times
		
		Type: boolean, default False
	**/
	var use_keyed_timing : Bool;
	/**
		Vertex group to control clump
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_clump : String;
	/**
		Vertex group to control density
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_density : String;
	/**
		Vertex group to control field
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_field : String;
	/**
		Vertex group to control kink
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_kink : String;
	/**
		Vertex group to control length
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_length : String;
	/**
		Vertex group to control rotation
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_rotation : String;
	/**
		Vertex group to control roughness 1
		
		Type: string, default “”, (never None)
	**/
	var pyvertex_group_roughness_1 : String;
	/**
		Vertex group to control roughness 2
		
		Type: string, default “”, (never None)
	**/
	var pyvertex_group_roughness_2 : String;
	/**
		Vertex group to control roughness end
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_roughness_end : String;
	/**
		Vertex group to control size
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_size : String;
	/**
		Vertex group to control tangent
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_tangent : String;
	/**
		Vertex group to control twist
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_twist : String;
	/**
		Vertex group to control velocity
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_velocity : String;
	/**
		Obtain cache hair data
		@param object Object — Object, (never None)
		@param particle_no Particle no — int in [-inf, inf], (optional)
		@param step step no — int in [-inf, inf], (optional)
		
		@returns float array of 3 items in [-inf, inf]
	**/
	function co_hair(object:Dynamic, particle_no:Int, step:Int):Array<Float>;
	/**
		Obtain uv for all particles
		@param modifier Particle modifier — ParticleSystemModifier, (never None)
		@param particle Particle — Particle, (optional)
		@param particle_no Particle no — int in [-inf, inf], (optional)
		@param uv_no UV no — int in [-inf, inf], (optional)
		
		@returns float array of 2 items in [-inf, inf]
	**/
	function uv_on_emitter(modifier:bpy.types.particlesystemmodifier.ParticleSystemModifier, particle:Dynamic, particle_no:Int, uv_no:Int):Array<Float>;
	/**
		Obtain mcol for all particles
		@param modifier Particle modifier — ParticleSystemModifier, (never None)
		@param particle Particle — Particle, (never None)
		@param particle_no Particle no — int in [-inf, inf], (optional)
		@param vcol_no vcol no — int in [-inf, inf], (optional)
		
		@returns float array of 3 items in [0, inf]
	**/
	function mcol_on_emitter(modifier:bpy.types.particlesystemmodifier.ParticleSystemModifier, particle:Dynamic, particle_no:Int, vcol_no:Int):Array<Float>;
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