package bpy.types.collisionsettings;
/**
	Collision settings for object in physics simulation
**/
@:native("bpy.types.CollisionSettings") extern class CollisionSettings {
	/**
		How much of effector force gets lost during collision with this object (in percent)
		
		Type: float in [0, 1], default 0.0
	**/
	var absorption : Float;
	/**
		Friction for cloth collisions
		
		Type: float in [0, 80], default 0.0
	**/
	var cloth_friction : Float;
	/**
		Amount of damping during collision
		
		Type: float in [0, 1], default 0.0
	**/
	var damping : Float;
	/**
		Amount of damping during particle collision
		
		Type: float in [0, 1], default 0.0
	**/
	var damping_factor : Float;
	/**
		Random variation of damping
		
		Type: float in [0, 1], default 0.0
	**/
	var damping_random : Float;
	/**
		Amount of friction during particle collision
		
		Type: float in [0, 1], default 0.0
	**/
	var friction_factor : Float;
	/**
		Random variation of friction
		
		Type: float in [0, 1], default 0.0
	**/
	var friction_random : Float;
	/**
		Chance that the particle will pass through the mesh
		
		Type: float in [0, 1], default 0.0
	**/
	var permeability : Float;
	/**
		Amount of stickiness to surface collision
		
		Type: float in [0, 10], default 0.0
	**/
	var stickiness : Float;
	/**
		Inner face thickness (only used by softbodies)
		
		Type: float in [0.001, 1], default 0.0
	**/
	var thickness_inner : Float;
	/**
		Outer face thickness
		
		Type: float in [0.001, 1], default 0.0
	**/
	var thickness_outer : Float;
	/**
		Enable this objects as a collider for physics systems
		
		Type: boolean, default False
	**/
	var use : Bool;
	/**
		Cloth collision acts with respect to the collider normals (improves penetration recovery)
		
		Type: boolean, default False
	**/
	var use_culling : Bool;
	/**
		Cloth collision impulses act in the direction of the collider normals (more reliable in some cases)
		
		Type: boolean, default False
	**/
	var use_normal : Bool;
	/**
		Kill collided particles
		
		Type: boolean, default False
	**/
	var use_particle_kill : Bool;
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