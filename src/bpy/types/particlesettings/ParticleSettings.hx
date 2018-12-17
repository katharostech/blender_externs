package bpy.types.particlesettings;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var VELOCITY : String = "VELOCITY";
	var HORIZONTAL : String = "HORIZONTAL";
	var VERTICAL : String = "VERTICAL";
	var GLOBAL_X : String = "GLOBAL_X";
	var GLOBAL_Y : String = "GLOBAL_Y";
	var GLOBAL_Z : String = "GLOBAL_Z";
	var RAND : String = "RAND";
}@:enum abstract Enum2(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
	var VIEW : String = "VIEW";
	var VEL : String = "VEL";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var AGE : String = "AGE";
	var FRAME : String = "FRAME";
	var ANGLE : String = "ANGLE";
}@:enum abstract Enum4(String) from String to String {
	var NONE : String = "NONE";
	var LINEAR : String = "LINEAR";
	var RANDOM : String = "RANDOM";
}@:enum abstract Enum5(String) from String to String {
	var NONE : String = "NONE";
	var SIMPLE : String = "SIMPLE";
	var INTERPOLATED : String = "INTERPOLATED";
}@:enum abstract Enum6(String) from String to String {
	var NONE : String = "NONE";
	var MATERIAL : String = "MATERIAL";
	var VELOCITY : String = "VELOCITY";
	var ACCELERATION : String = "ACCELERATION";
}@:enum abstract Enum7(String) from String to String {
	var NONE : String = "NONE";
	var RENDER : String = "RENDER";
	var DOT : String = "DOT";
	var CIRC : String = "CIRC";
	var CROSS : String = "CROSS";
	var AXIS : String = "AXIS";
}@:enum abstract Enum8(String) from String to String {
	var JIT : String = "JIT";
	var RAND : String = "RAND";
	var GRID : String = "GRID";
}@:enum abstract Enum9(String) from String to String {
	var VERT : String = "VERT";
	var FACE : String = "FACE";
	var VOLUME : String = "VOLUME";
}@:enum abstract Enum10(String) from String to String {
	var EULER : String = "EULER";
	var VERLET : String = "VERLET";
	var MIDPOINT : String = "MIDPOINT";
	var pyRK4 : String = "RK4";
}@:enum abstract Enum11(String) from String to String {
	var NO : String = "NO";
	var CURL : String = "CURL";
	var RADIAL : String = "RADIAL";
	var WAVE : String = "WAVE";
	var BRAID : String = "BRAID";
	var SPIRAL : String = "SPIRAL";
}@:enum abstract Enum12(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum13(String) from String to String {
	var DUMMY : String = "DUMMY";
}@:enum abstract Enum14(String) from String to String {
	var NO : String = "NO";
	var NEWTON : String = "NEWTON";
	var KEYED : String = "KEYED";
	var BOIDS : String = "BOIDS";
	var FLUID : String = "FLUID";
}@:enum abstract Enum15(String) from String to String {
	var DEATH : String = "DEATH";
	var COLLIDE : String = "COLLIDE";
	var NEAR : String = "NEAR";
}@:enum abstract Enum16(String) from String to String {
	var NONE : String = "NONE";
	var HALO : String = "HALO";
	var LINE : String = "LINE";
	var PATH : String = "PATH";
	var OBJECT : String = "OBJECT";
	var COLLECTION : String = "COLLECTION";
	var BILLBOARD : String = "BILLBOARD";
}@:enum abstract Enum17(String) from String to String {
	var NONE : String = "NONE";
	var NOR : String = "NOR";
	var NOR_TAN : String = "NOR_TAN";
	var VEL : String = "VEL";
	var GLOB_X : String = "GLOB_X";
	var GLOB_Y : String = "GLOB_Y";
	var GLOB_Z : String = "GLOB_Z";
	var OB_X : String = "OB_X";
	var OB_Y : String = "OB_Y";
	var OB_Z : String = "OB_Z";
}@:enum abstract Enum18(String) from String to String {
	var EMITTER : String = "EMITTER";
	var HAIR : String = "HAIR";
}/**
	Particle settings, reusable by multiple particle systems
**/
@:native("bpy.types.ParticleSettings") extern class ParticleSettings {
	/**
		
		
		Type: ParticleDupliWeight, (readonly)
	**/
	var active_instanceweight(default, never) : bpy.types.particledupliweight.ParticleDupliWeight;
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var active_instanceweight_index : Int;
	/**
		Active texture slot being displayed
		
		Type: Texture
	**/
	var active_texture : bpy.types.texture.Texture;
	/**
		Index of active texture slot
		
		Type: int in [0, 17], default 0
	**/
	var active_texture_index : Int;
	/**
		How many degrees path has to curve to make another render segment
		
		Type: int in [0, 45], default 0
	**/
	var adaptive_angle : Int;
	/**
		How many pixels path has to cover to make another render segment
		
		Type: int in [0, 50], default 0
	**/
	var adaptive_pixel : Int;
	/**
		Angular velocity amount (in radians per second)
		
		Type: float in [-200, 200], default 0.0
	**/
	var angular_velocity_factor : Float;
	/**
		What axis is used to change particle rotation with time
		
		Type: enum in [‘NONE’, ‘VELOCITY’, ‘HORIZONTAL’, ‘VERTICAL’, ‘GLOBAL_X’, ‘GLOBAL_Y’, ‘GLOBAL_Z’, ‘RAND’], default ‘NONE’
	**/
	var angular_velocity_mode : bpy.types.particlesettings.ParticleSettings.Enum1;
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Apply effectors to children
		
		Type: boolean, default False
	**/
	var apply_effector_to_children : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var apply_guide_to_children : Bool;
	/**
		Random stiffness of hairs
		
		Type: float in [0, 1], default 0.0
	**/
	var bending_random : Float;
	/**
		In respect to what the billboards are aligned
		
		Type: enum in [‘X’, ‘Y’, ‘Z’, ‘VIEW’, ‘VEL’], default ‘X’
	**/
	var billboard_align : bpy.types.particlesettings.ParticleSettings.Enum2;
	/**
		How to animate billboard textures
		
		Type: enum in [‘NONE’, ‘AGE’, ‘FRAME’, ‘ANGLE’], default ‘NONE’
	**/
	var billboard_animation : bpy.types.particlesettings.ParticleSettings.Enum3;
	/**
		Billboards face this object (default is active camera)
		
		Type: Object
	**/
	var billboard_object : bpy.types.object.Object;
	/**
		
		
		Type: float array of 2 items in [-100, 100], default (0.0, 0.0)
	**/
	var billboard_offset : Array<Float>;
	/**
		How to offset billboard textures
		
		Type: enum in [‘NONE’, ‘LINEAR’, ‘RANDOM’], default ‘NONE’
	**/
	var billboard_offset_split : bpy.types.particlesettings.ParticleSettings.Enum4;
	/**
		Scale billboards relative to particle size
		
		Type: float array of 2 items in [0.001, 10], default (0.0, 0.0)
	**/
	var billboard_size : Array<Float>;
	/**
		Tilt of the billboards
		
		Type: float in [-1, 1], default 0.0
	**/
	var billboard_tilt : Float;
	/**
		Random tilt of the billboards
		
		Type: float in [0, 1], default 0.0
	**/
	var billboard_tilt_random : Float;
	/**
		Number of rows/columns to split UV coordinates for billboards
		
		Type: int in [1, 100], default 0
	**/
	var billboard_uv_split : Int;
	/**
		Scale billboards by velocity
		
		Type: float in [0, 10], default 0.0
	**/
	var billboard_velocity_head : Float;
	/**
		Scale billboards by velocity
		
		Type: float in [0, 10], default 0.0
	**/
	var billboard_velocity_tail : Float;
	/**
		
		
		Type: BoidSettings, (readonly)
	**/
	var boids(default, never) : bpy.types.boidsettings.BoidSettings;
	/**
		Threshold of branching
		
		Type: float in [0, 1], default 0.0
	**/
	var branch_threshold : Float;
	/**
		Amount of random, erratic particle movement
		
		Type: float in [0, 200], default 0.0
	**/
	var brownian_factor : Float;
	/**
		Length of child paths
		
		Type: float in [0, 1], default 0.0
	**/
	var child_length : Float;
	/**
		Amount of particles left untouched by child path length
		
		Type: float in [0, 1], default 0.0
	**/
	var child_length_threshold : Float;
	/**
		Number of children/parent
		
		Type: int in [0, 100000], default 0
	**/
	var child_nbr : Int;
	/**
		Create parting in the children based on parent strands
		
		Type: float in [0, 1], default 0.0
	**/
	var child_parting_factor : Float;
	/**
		Maximum root to tip angle (tip distance/root distance for long hair)
		
		Type: float in [0, 180], default 0.0
	**/
	var child_parting_max : Float;
	/**
		Minimum root to tip angle (tip distance/root distance for long hair)
		
		Type: float in [0, 180], default 0.0
	**/
	var child_parting_min : Float;
	/**
		Radius of children around parent
		
		Type: float in [0, 10], default 0.0
	**/
	var child_radius : Float;
	/**
		Roundness of children around parent
		
		Type: float in [0, 1], default 0.0
	**/
	var child_roundness : Float;
	/**
		A multiplier for the child particle size
		
		Type: float in [0.001, 100000], default 0.0
	**/
	var child_size : Float;
	/**
		Random variation to the size of the child particles
		
		Type: float in [0, 1], default 0.0
	**/
	var child_size_random : Float;
	/**
		Create child particles
		
		Type: enum in [‘NONE’, ‘SIMPLE’, ‘INTERPOLATED’], default ‘NONE’
	**/
	var child_type : bpy.types.particlesettings.ParticleSettings.Enum5;
	/**
		Curve defining clump tapering
		
		Type: CurveMapping, (readonly)
	**/
	var clump_curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Amount of clumping
		
		Type: float in [-1, 1], default 0.0
	**/
	var clump_factor : Float;
	/**
		Size of clump noise
		
		Type: float in [1e-05, 100000], default 0.0
	**/
	var clump_noise_size : Float;
	/**
		Shape of clumping
		
		Type: float in [-0.999, 0.999], default 0.0
	**/
	var clump_shape : Float;
	/**
		Limit colliders to this collection
		
		Type: Collection
	**/
	var collision_collection : bpy.types.collection.Collection;
	/**
		Maximum length of the particle color vector
		
		Type: float in [0.01, 100], default 0.0
	**/
	var color_maximum : Float;
	/**
		Total number of particles
		
		Type: int in [0, 10000000], default 0
	**/
	var count : Int;
	/**
		The relative distance a particle can move before requiring more subframes (target Courant number); 0.01-0.3 is the recommended range
		
		Type: float in [0.0001, 10], default 0.1
	**/
	var courant_target : Float;
	/**
		Calculate children that suit long hair well
		
		Type: boolean, default False
	**/
	var create_long_hair_children : Bool;
	/**
		Amount of damping
		
		Type: float in [0, 1], default 0.0
	**/
	var damping : Float;
	/**
		Draw additional particle data as a color
		
		Type: enum in [‘NONE’, ‘MATERIAL’, ‘VELOCITY’, ‘ACCELERATION’], default ‘NONE’
	**/
	var display_color : bpy.types.particlesettings.ParticleSettings.Enum6;
	/**
		How particles are drawn in viewport
		
		Type: enum in [‘NONE’, ‘RENDER’, ‘DOT’, ‘CIRC’, ‘CROSS’, ‘AXIS’], default ‘NONE’
	**/
	var display_method : bpy.types.particlesettings.ParticleSettings.Enum7;
	/**
		Percentage of particles to display in 3D view
		
		Type: int in [0, 100], default 0
	**/
	var display_percentage : Int;
	/**
		Size of particles on viewport in BU
		
		Type: float in [0, 1000], default 0.0
	**/
	var display_size : Float;
	/**
		How many steps paths are drawn with (power of 2)
		
		Type: int in [0, 10], default 0
	**/
	var display_step : Int;
	/**
		How to distribute particles on selected element
		
		Type: enum in [‘JIT’, ‘RAND’, ‘GRID’], default ‘JIT’
	**/
	var distribution : bpy.types.particlesettings.ParticleSettings.Enum8;
	/**
		Amount of air-drag
		
		Type: float in [0, 1], default 0.0
	**/
	var drag_factor : Float;
	/**
		Hair stiffness for effectors
		
		Type: float in [0, 1], default 0.0
	**/
	var effect_hair : Float;
	/**
		How many particles are effectors (0 is all particles)
		
		Type: int in [0, 10000], default 0
	**/
	var effector_amount : Int;
	/**
		
		
		Type: EffectorWeights, (readonly)
	**/
	var effector_weights(default, never) : bpy.types.effectorweights.EffectorWeights;
	/**
		Where to emit particles from
		
		Type: enum in [‘VERT’, ‘FACE’, ‘VOLUME’], default ‘VERT’
	**/
	var emit_from : bpy.types.particlesettings.ParticleSettings.Enum9;
	/**
		Give the starting velocity a random variation
		
		Type: float in [0, 200], default 0.0
	**/
	var factor_random : Float;
	/**
		
		
		Type: SPHFluidSettings, (readonly)
	**/
	var fluid(default, never) : bpy.types.sphfluidsettings.SPHFluidSettings;
	/**
		
		
		Type: FieldSettings, (readonly)
	**/
	var pyforce_field_1(default, never) : bpy.types.fieldsettings.FieldSettings;
	/**
		
		
		Type: FieldSettings, (readonly)
	**/
	var pyforce_field_2(default, never) : bpy.types.fieldsettings.FieldSettings;
	/**
		Frame number to stop emitting particles
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0
	**/
	var frame_end : Float;
	/**
		Frame number to start emitting particles
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0
	**/
	var frame_start : Float;
	/**
		Add random offset to the grid locations
		
		Type: float in [0, 1], default 0.0
	**/
	var grid_random : Float;
	/**
		The resolution of the particle grid
		
		Type: int in [1, 250], default 0
	**/
	var grid_resolution : Int;
	/**
		Length of the hair
		
		Type: float in [0, 1000], default 0.0
	**/
	var hair_length : Float;
	/**
		Number of hair segments
		
		Type: int in [2, 32767], default 0
	**/
	var hair_step : Int;
	/**
		Create the grid in a hexagonal pattern
		
		Type: boolean, default False
	**/
	var hexagonal_grid : Bool;
	/**
		Show Objects in this collection in place of particles
		
		Type: Collection
	**/
	var instance_collection : bpy.types.collection.Collection;
	/**
		Show this Object in place of particles
		
		Type: Object
	**/
	var instance_object : bpy.types.object.Object;
	/**
		Weights for all of the objects in the dupli collection
		
		Type: bpy_prop_collection of ParticleDupliWeight, (readonly)
	**/
	var instance_weights(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Algorithm used to calculate physics, from the fastest to the most stable/accurate: Midpoint, Euler, Verlet, RK4 (Old)
		
		Type: enum in [‘EULER’, ‘VERLET’, ‘MIDPOINT’, ‘RK4’], default ‘EULER’
	**/
	var integrator : bpy.types.particlesettings.ParticleSettings.Enum10;
	/**
		Invert what is considered object and what is not
		
		Type: boolean, default False
	**/
	var invert_grid : Bool;
	/**
		Particles were created by a fluid simulation
		
		Type: boolean, default False, (readonly)
	**/
	var is_fluid(default, never) : Bool;
	/**
		Amount of jitter applied to the sampling
		
		Type: float in [0, 2], default 0.0
	**/
	var jitter_factor : Float;
	/**
		Number of times the keys are looped
		
		Type: int in [1, 10000], default 0
	**/
	var keyed_loops : Int;
	/**
		
		
		Type: int in [0, 32767], default 0
	**/
	var keys_step : Int;
	/**
		Type of periodic offset on the path
		
		Type: enum in [‘NO’, ‘CURL’, ‘RADIAL’, ‘WAVE’, ‘BRAID’, ‘SPIRAL’], default ‘NO’
	**/
	var kink : bpy.types.particlesettings.ParticleSettings.Enum11;
	/**
		The amplitude of the offset
		
		Type: float in [-100000, 100000], default 0.0
	**/
	var kink_amplitude : Float;
	/**
		How much clump affects kink amplitude
		
		Type: float in [0, 1], default 0.0
	**/
	var kink_amplitude_clump : Float;
	/**
		Random variation of the amplitude
		
		Type: float in [0, 1], default 0.0
	**/
	var kink_amplitude_random : Float;
	/**
		Which axis to use for offset
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var kink_axis : bpy.types.particlesettings.ParticleSettings.Enum12;
	/**
		Random variation of the orientation
		
		Type: float in [0, 1], default 0.0
	**/
	var kink_axis_random : Float;
	/**
		Extra steps for resolution of special kink features
		
		Type: int in [1, inf], default 0
	**/
	var kink_extra_steps : Int;
	/**
		How flat the hairs are
		
		Type: float in [0, 1], default 0.0
	**/
	var kink_flat : Float;
	/**
		The frequency of the offset (1/total length)
		
		Type: float in [-100000, 100000], default 0.0
	**/
	var kink_frequency : Float;
	/**
		Adjust the offset to the beginning/end
		
		Type: float in [-0.999, 0.999], default 0.0
	**/
	var kink_shape : Float;
	/**
		Give path length a random variation
		
		Type: float in [0, 1], default 0.0
	**/
	var length_random : Float;
	/**
		Life span of the particles
		
		Type: float in [1, 1.04857e+06], default 0.0
	**/
	var lifetime : Float;
	/**
		Give the particle life a random variation
		
		Type: float in [0, 1], default 0.0
	**/
	var lifetime_random : Float;
	/**
		Length of the line’s head
		
		Type: float in [0, 100000], default 0.0
	**/
	var line_length_head : Float;
	/**
		Length of the line’s tail
		
		Type: float in [0, 100000], default 0.0
	**/
	var line_length_tail : Float;
	/**
		Lock the billboards align axis
		
		Type: boolean, default False
	**/
	var lock_billboard : Bool;
	/**
		Constrain boids to a surface
		
		Type: boolean, default False
	**/
	var lock_boids_to_surface : Bool;
	/**
		Mass of the particles
		
		Type: float in [1e-08, 100000], default 0.0
	**/
	var mass : Float;
	/**
		Index of material slot used for rendering particles
		
		Type: int in [1, 32767], default 0
	**/
	var material : Int;
	/**
		Material slot used for rendering particles
		
		Type: enum in [‘DUMMY’], default ‘DUMMY’
	**/
	var material_slot : bpy.types.particlesettings.ParticleSettings.Enum13;
	/**
		Let the surface normal give the particle a starting velocity
		
		Type: float in [-1000, 1000], default 0.0
	**/
	var normal_factor : Float;
	/**
		Let the emitter object orientation give the particle a starting velocity
		
		Type: float array of 3 items in [-200, 200], default (0.0, 0.0, 0.0)
	**/
	var object_align_factor : Array<Float>;
	/**
		Let the object give the particle a starting velocity
		
		Type: float in [-200, 200], default 0.0
	**/
	var object_factor : Float;
	/**
		Let the target particle give the particle a starting velocity
		
		Type: float in [-200, 200], default 0.0
	**/
	var particle_factor : Float;
	/**
		The size of the particles
		
		Type: float in [0.001, 100000], default 0.0
	**/
	var particle_size : Float;
	/**
		End time of drawn path
		
		Type: float in [-inf, inf], default 0.0
	**/
	var path_end : Float;
	/**
		Starting time of drawn path
		
		Type: float in [-inf, inf], default 0.0
	**/
	var path_start : Float;
	/**
		Rotation around the chosen orientation axis
		
		Type: float in [-1, 1], default 0.0
	**/
	var phase_factor : Float;
	/**
		Randomize rotation around the chosen orientation axis
		
		Type: float in [0, 2], default 0.0
	**/
	var phase_factor_random : Float;
	/**
		Particle physics type
		
		Type: enum in [‘NO’, ‘NEWTON’, ‘KEYED’, ‘BOIDS’, ‘FLUID’], default ‘NO’
	**/
	var physics_type : bpy.types.particlesettings.ParticleSettings.Enum14;
	/**
		Multiplier of radius properties
		
		Type: float in [0, inf], default 0.0
	**/
	var radius_scale : Float;
	/**
		The event of target particles to react on
		
		Type: enum in [‘DEATH’, ‘COLLIDE’, ‘NEAR’], default ‘DEATH’
	**/
	var react_event : bpy.types.particlesettings.ParticleSettings.Enum15;
	/**
		Let the vector away from the target particle’s location give the particle a starting velocity
		
		Type: float in [-10, 10], default 0.0
	**/
	var reactor_factor : Float;
	/**
		Regrow hair for each frame
		
		Type: boolean, default False
	**/
	var regrow_hair : Bool;
	/**
		How many steps paths are rendered with (power of 2)
		
		Type: int in [0, 20], default 0
	**/
	var render_step : Int;
	/**
		How particles are rendered
		
		Type: enum in [‘NONE’, ‘HALO’, ‘LINE’, ‘PATH’, ‘OBJECT’, ‘COLLECTION’, ‘BILLBOARD’], default ‘NONE’
	**/
	var render_type : bpy.types.particlesettings.ParticleSettings.Enum16;
	/**
		Number of children/parent for rendering
		
		Type: int in [0, 100000], default 0
	**/
	var rendered_child_count : Int;
	/**
		Strand width at the root
		
		Type: float in [0, inf], default 0.0
	**/
	var root_radius : Float;
	/**
		Randomize particle orientation
		
		Type: float in [0, 1], default 0.0
	**/
	var rotation_factor_random : Float;
	/**
		Particle orientation axis (does not affect Explode modifier’s results)
		
		Type: enum in [‘NONE’, ‘NOR’, ‘NOR_TAN’, ‘VEL’, ‘GLOB_X’, ‘GLOB_Y’, ‘GLOB_Z’, ‘OB_X’, ‘OB_Y’, ‘OB_Z’], default ‘NONE’
	**/
	var rotation_mode : bpy.types.particlesettings.ParticleSettings.Enum17;
	/**
		Amount of location dependent rough
		
		Type: float in [0, 100000], default 0.0
	**/
	var pyroughness_1 : Float;
	/**
		Size of location dependent rough
		
		Type: float in [0.01, 100000], default 0.0
	**/
	var pyroughness_1_size : Float;
	/**
		Amount of random rough
		
		Type: float in [0, 100000], default 0.0
	**/
	var pyroughness_2 : Float;
	/**
		Size of random rough
		
		Type: float in [0.01, 100000], default 0.0
	**/
	var pyroughness_2_size : Float;
	/**
		Amount of particles left untouched by random rough
		
		Type: float in [0, 1], default 0.0
	**/
	var pyroughness_2_threshold : Float;
	/**
		Curve defining roughness
		
		Type: CurveMapping, (readonly)
	**/
	var roughness_curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Shape of end point rough
		
		Type: float in [0, 10], default 0.0
	**/
	var roughness_end_shape : Float;
	/**
		Amount of end point rough
		
		Type: float in [0, 100000], default 0.0
	**/
	var roughness_endpoint : Float;
	/**
		Strand shape parameter
		
		Type: float in [-1, 1], default 0.0
	**/
	var shape : Float;
	/**
		Show guide hairs
		
		Type: boolean, default False
	**/
	var show_guide_hairs : Bool;
	/**
		Show hair simulation grid
		
		Type: boolean, default False
	**/
	var show_hair_grid : Bool;
	/**
		Draw boid health
		
		Type: boolean, default False
	**/
	var show_health : Bool;
	/**
		Show particle number
		
		Type: boolean, default False
	**/
	var show_number : Bool;
	/**
		Show particle size
		
		Type: boolean, default False
	**/
	var show_size : Bool;
	/**
		Show particles before they are emitted
		
		Type: boolean, default False
	**/
	var show_unborn : Bool;
	/**
		Show particle velocity
		
		Type: boolean, default False
	**/
	var show_velocity : Bool;
	/**
		Give the particle size a random variation
		
		Type: float in [0, 1], default 0.0
	**/
	var size_random : Float;
	/**
		Subframes to simulate for improved stability and finer granularity simulations (dt = timestep / (subframes + 1))
		
		Type: int in [0, 1000], default 0
	**/
	var subframes : Int;
	/**
		Let the surface tangent give the particle a starting velocity
		
		Type: float in [-1000, 1000], default 0.0
	**/
	var tangent_factor : Float;
	/**
		Rotate the surface tangent
		
		Type: float in [-1, 1], default 0.0
	**/
	var tangent_phase : Float;
	/**
		Texture slots defining the mapping and influence of textures
		
		Type: ParticleSettingsTextureSlots bpy_prop_collection of ParticleSettingsTextureSlot, (readonly)
	**/
	var texture_slots(default, never) : bpy.types.particlesettingstextureslots.ParticleSettingsTextureSlots;
	/**
		A multiplier for physics timestep (1.0 means one frame = 1/25 seconds)
		
		Type: float in [0, 100], default 0.0
	**/
	var time_tweak : Float;
	/**
		The simulation timestep per frame (seconds per frame)
		
		Type: float in [0.0001, 100], default 0.0
	**/
	var timestep : Float;
	/**
		Strand width at the tip
		
		Type: float in [0, inf], default 0.0
	**/
	var tip_radius : Float;
	/**
		Number of trail particles
		
		Type: int in [1, 100000], default 0
	**/
	var trail_count : Int;
	/**
		Number of turns around parent allong the strand
		
		Type: float in [-100000, 100000], default 0.0
	**/
	var twist : Float;
	/**
		Curve defining twist
		
		Type: CurveMapping, (readonly)
	**/
	var twist_curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Particle Type
		
		Type: enum in [‘EMITTER’, ‘HAIR’], default ‘EMITTER’
	**/
	var type : bpy.types.particlesettings.ParticleSettings.Enum18;
	/**
		Path timing is in absolute frames
		
		Type: boolean, default False
	**/
	var use_absolute_path_time : Bool;
	/**
		Automatically set the number of subframes
		
		Type: boolean, default False
	**/
	var use_adaptive_subframes : Bool;
	/**
		Use full physics calculations for growing hair
		
		Type: boolean, default False
	**/
	var use_advanced_hair : Bool;
	/**
		Set tip radius to zero
		
		Type: boolean, default False
	**/
	var use_close_tip : Bool;
	/**
		Use a curve to define clump tapering
		
		Type: boolean, default False
	**/
	var use_clump_curve : Bool;
	/**
		Create random clumps around the parent
		
		Type: boolean, default False
	**/
	var use_clump_noise : Bool;
	/**
		Use object multiple times in the same collection
		
		Type: boolean, default False
	**/
	var use_collection_count : Bool;
	/**
		Pick objects from collection randomly
		
		Type: boolean, default False
	**/
	var use_collection_pick_random : Bool;
	/**
		Show particles after they have died
		
		Type: boolean, default False
	**/
	var use_dead : Bool;
	/**
		Particles die when they collide with a deflector object
		
		Type: boolean, default False
	**/
	var use_die_on_collision : Bool;
	/**
		Particle rotations are affected by collisions and effectors
		
		Type: boolean, default False
	**/
	var use_dynamic_rotation : Bool;
	/**
		Emit in random order of elements
		
		Type: boolean, default False
	**/
	var use_emit_random : Bool;
	/**
		Use even distribution from faces based on face areas or edge lengths
		
		Type: boolean, default False
	**/
	var use_even_distribution : Bool;
	/**
		Use object’s global coordinates for duplication
		
		Type: boolean, default False
	**/
	var use_global_instance : Bool;
	/**
		Interpolate hair using B-Splines
		
		Type: boolean, default False
	**/
	var use_hair_bspline : Bool;
	/**
		Emit particles from mesh with modifiers applied (must use same subsurf level for viewport and render for correct results)
		
		Type: boolean, default False
	**/
	var use_modifier_stack : Bool;
	/**
		Multiply mass by particle size
		
		Type: boolean, default False
	**/
	var use_multiply_size_mass : Bool;
	/**
		Render parent particles
		
		Type: boolean, default False
	**/
	var use_parent_particles : Bool;
	/**
		React multiple times
		
		Type: boolean, default False
	**/
	var use_react_multiple : Bool;
	/**
		Give birth to unreacted particles eventually
		
		Type: boolean, default False
	**/
	var use_react_start_end : Bool;
	/**
		Draw steps of the particle path
		
		Type: boolean, default False
	**/
	var use_render_adaptive : Bool;
	/**
		Use object’s rotation for duplication (global x-axis is aligned particle rotation axis)
		
		Type: boolean, default False
	**/
	var use_rotation_instance : Bool;
	/**
		Calculate particle rotations
		
		Type: boolean, default False
	**/
	var use_rotations : Bool;
	/**
		Use a curve to define roughness
		
		Type: boolean, default False
	**/
	var use_roughness_curve : Bool;
	/**
		Use object’s scale for duplication
		
		Type: boolean, default False
	**/
	var use_scale_instance : Bool;
	/**
		Particle effectors affect themselves
		
		Type: boolean, default False
	**/
	var use_self_effect : Bool;
	/**
		Use particle’s size in deflection
		
		Type: boolean, default False
	**/
	var use_size_deflect : Bool;
	/**
		Use the strand primitive for rendering
		
		Type: boolean, default False
	**/
	var use_strand_primitive : Bool;
	/**
		Use a curve to define twist
		
		Type: boolean, default False
	**/
	var use_twist_curve : Bool;
	/**
		Multiply line length by particle speed
		
		Type: boolean, default False
	**/
	var use_velocity_length : Bool;
	/**
		Use whole collection at once
		
		Type: boolean, default False
	**/
	var use_whole_collection : Bool;
	/**
		Emission locations / face (0 = automatic)
		
		Type: int in [0, 1000], default 0
	**/
	var userjit : Int;
	/**
		Relative amount of virtual parents
		
		Type: float in [0, 1], default 0.0
	**/
	var virtual_parents : Float;
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
		Unique data-block ID name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Unique data-block ID name, including library one is any
		
		Type: string, default “”, (readonly, never None)
	**/
	var name_full(default, never) : String;
	/**
		Whether this ID is runtime-only, evaluated data-block, or actual data from .blend file
		
		Type: boolean, default False, (readonly)
	**/
	var is_evaluated(default, never) : Bool;
	/**
		Actual data-block from .blend file (Main database) that generated that evaluated one
		
		Type: ID, (readonly)
	**/
	var original(default, never) : bpy.types.id.ID;
	/**
		Number of times this data-block is referenced
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var users(default, never) : Int;
	/**
		Save this data-block even if it has no users
		
		Type: boolean, default False
	**/
	var use_fake_user : Bool;
	/**
		Tools can use this to tag data for their own purposes (initial state is undefined)
		
		Type: boolean, default False
	**/
	var tag : Bool;
	/**
		Is this ID block linked indirectly
		
		Type: boolean, default False, (readonly)
	**/
	var is_library_indirect(default, never) : Bool;
	/**
		Library file the data-block is linked from
		
		Type: Library, (readonly)
	**/
	var library(default, never) : bpy.types.library.Library;
	/**
		Static override data
		
		Type: IDOverrideStatic, (readonly)
	**/
	var override_static(default, never) : bpy.types.idoverridestatic.IDOverrideStatic;
	/**
		Preview image and icon of this data-block (None if not supported for this type of data)
		
		Type: ImagePreview, (readonly)
	**/
	var preview(default, never) : bpy.types.imagepreview.ImagePreview;
	/**
		Create a copy of this data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function copy():bpy.types.id.ID;
	/**
		Create an overridden local copy of this linked data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function override_create():bpy.types.id.ID;
	/**
		Clear the user count of a data-block so its not saved, on reload the data will be removed
		
		This function is for advanced use only, misuse can crash blender since the user
		count is used to prevent data being removed when it is used.
	**/
	function user_clear():Void;
	/**
		Replace all usage in the .blend file of this ID by new given one
		@param new_id New ID to use — ID, (never None)
	**/
	function user_remap(new_id:bpy.types.id.ID):Void;
	/**
		Make this datablock local, return local one (may be a copy of the original, in case it is also indirectly used)
		@param clear_proxy Whether to clear proxies (the default behavior, note that if object has to be duplicated to be made local, proxies are always cleared) — boolean, (optional)
		
		@returns ID
	**/
	function make_local(clear_proxy:Bool):bpy.types.id.ID;
	/**
		Count the number of times that ID uses/references given one
		@param id ID to count usages — ID, (never None)
		
		@returns int in [0, inf]
	**/
	function user_of_id(id:bpy.types.id.ID):Int;
	/**
		Create animation data to this ID, note that not all ID types support this
		
		@returns AnimData
	**/
	function animation_data_create():bpy.types.animdata.AnimData;
	/**
		Clear animation on this this ID
	**/
	function animation_data_clear():Void;
	/**
		Tag the ID to update its display data, e.g. when calling bpy.types.Scene.update
		@param refresh Type of updates to perform — enum set in {'OBJECT', 'DATA', 'TIME'}, (optional)
	**/
	function update_tag(refresh:Dynamic):Void;
}