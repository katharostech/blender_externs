package bpy.types.particleinstancemodifier;
@:enum abstract Enum1(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum2(String) from String to String {
	var LOCAL : String = "LOCAL";
	var WORLD : String = "WORLD";
}/**
	Particle system instancing modifier
**/
@:native("bpy.types.ParticleInstanceModifier") extern class ParticleInstanceModifier {
	/**
		Pole axis for rotation
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var axis : bpy.types.particleinstancemodifier.ParticleInstanceModifier.Enum1;
	/**
		Custom data layer name for the index
		
		Type: string, default “”, (never None)
	**/
	var index_layer_name : String;
	/**
		Object that has the particle system
		
		Type: Object
	**/
	var object : bpy.types.object.Object;
	/**
		Amount of particles to use for instancing
		
		Type: float in [0, 1], default 1.0
	**/
	var particle_amount : Float;
	/**
		Relative offset of particles to use for instancing, to avoid overlap of multiple instances
		
		Type: float in [0, 1], default 0.0
	**/
	var particle_offset : Float;
	/**
		
		
		Type: ParticleSystem
	**/
	var particle_system : bpy.types.particlesystem.ParticleSystem;
	/**
		
		
		Type: int in [1, 32767], default 0
	**/
	var particle_system_index : Int;
	/**
		Position along path
		
		Type: float in [0, 1], default 0.0
	**/
	var position : Float;
	/**
		Randomize position along path
		
		Type: float in [0, 1], default 0.0
	**/
	var random_position : Float;
	/**
		Randomize rotation around path
		
		Type: float in [0, 1], default 0.0
	**/
	var random_rotation : Float;
	/**
		Rotation around path
		
		Type: float in [0, 1], default 0.0
	**/
	var rotation : Float;
	/**
		Show instances when particles are alive
		
		Type: boolean, default False
	**/
	var show_alive : Bool;
	/**
		Show instances when particles are dead
		
		Type: boolean, default False
	**/
	var show_dead : Bool;
	/**
		Show instances when particles are unborn
		
		Type: boolean, default False
	**/
	var show_unborn : Bool;
	/**
		Space to use for copying mesh data
		
		Type: enum in [‘LOCAL’, ‘WORLD’], default ‘WORLD’
	**/
	var space : bpy.types.particleinstancemodifier.ParticleInstanceModifier.Enum2;
	/**
		Create instances from child particles
		
		Type: boolean, default False
	**/
	var use_children : Bool;
	/**
		Create instances from normal particles
		
		Type: boolean, default False
	**/
	var use_normal : Bool;
	/**
		Create instances along particle paths
		
		Type: boolean, default False
	**/
	var use_path : Bool;
	/**
		Don’t stretch the object
		
		Type: boolean, default False
	**/
	var use_preserve_shape : Bool;
	/**
		Use particle size to scale the instances
		
		Type: boolean, default False
	**/
	var use_size : Bool;
	/**
		Custom data layer name for the randomized value
		
		Type: string, default “”, (never None)
	**/
	var value_layer_name : String;
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
		Modifier name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘DATA_TRANSFER’, ‘MESH_CACHE’, ‘MESH_SEQUENCE_CACHE’, ‘NORMAL_EDIT’, ‘WEIGHTED_NORMAL’, ‘UV_PROJECT’, ‘UV_WARP’, ‘VERTEX_WEIGHT_EDIT’, ‘VERTEX_WEIGHT_MIX’, ‘VERTEX_WEIGHT_PROXIMITY’, ‘ARRAY’, ‘BEVEL’, ‘BOOLEAN’, ‘BUILD’, ‘DECIMATE’, ‘EDGE_SPLIT’, ‘MASK’, ‘MIRROR’, ‘MULTIRES’, ‘REMESH’, ‘SCREW’, ‘SKIN’, ‘SOLIDIFY’, ‘SUBSURF’, ‘TRIANGULATE’, ‘WIREFRAME’, ‘ARMATURE’, ‘CAST’, ‘CURVE’, ‘DISPLACE’, ‘HOOK’, ‘LAPLACIANDEFORM’, ‘LATTICE’, ‘MESH_DEFORM’, ‘SHRINKWRAP’, ‘SIMPLE_DEFORM’, ‘SMOOTH’, ‘CORRECTIVE_SMOOTH’, ‘LAPLACIANSMOOTH’, ‘SURFACE_DEFORM’, ‘WARP’, ‘WAVE’, ‘CLOTH’, ‘COLLISION’, ‘DYNAMIC_PAINT’, ‘EXPLODE’, ‘FLUID_SIMULATION’, ‘OCEAN’, ‘PARTICLE_INSTANCE’, ‘PARTICLE_SYSTEM’, ‘SMOKE’, ‘SOFT_BODY’, ‘SURFACE’], default ‘DATA_TRANSFER’, (readonly)
	**/
	var type(default, never) : bpy.types.modifier.Modifier.Enum1;
	/**
		Display modifier in viewport
		
		Type: boolean, default False
	**/
	var show_viewport : Bool;
	/**
		Use modifier during render
		
		Type: boolean, default False
	**/
	var show_render : Bool;
	/**
		Display modifier in Edit mode
		
		Type: boolean, default False
	**/
	var show_in_editmode : Bool;
	/**
		Adjust edit cage to modifier result
		
		Type: boolean, default False
	**/
	var show_on_cage : Bool;
	/**
		Set modifier expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Apply this and all preceding deformation modifiers on splines’ points rather than on filled curve/surface
		
		Type: boolean, default False
	**/
	var use_apply_on_spline : Bool;
}