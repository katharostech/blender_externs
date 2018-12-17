package bpy.types.clothcollisionsettings;
/**
	Cloth simulation settings for self collision and collision with other objects
**/
@:native("bpy.types.ClothCollisionSettings") extern class ClothCollisionSettings {
	/**
		Limit colliders to this Collection
		
		Type: Collection
	**/
	var collection : bpy.types.collection.Collection;
	/**
		How many collision iterations should be done. (higher is better quality but slower)
		
		Type: int in [1, 32767], default 0
	**/
	var collision_quality : Int;
	/**
		Amount of velocity lost on collision
		
		Type: float in [0, 1], default 1.0
	**/
	var damping : Float;
	/**
		Minimum distance between collision objects before collision response takes effect
		
		Type: float in [0.001, 1], default 0.0
	**/
	var distance_min : Float;
	/**
		Friction force if a collision happened (higher = less movement)
		
		Type: float in [0, 80], default 0.0
	**/
	var friction : Float;
	/**
		Clamp collision impulses to avoid instability (0.0 to disable clamping)
		
		Type: float in [0, 100], default 0.0
	**/
	var impulse_clamp : Float;
	/**
		Minimum distance between cloth faces before collision response takes effect
		
		Type: float in [0.001, 0.1], default 0.0
	**/
	var self_distance_min : Float;
	/**
		Friction with self contact
		
		Type: float in [0, 80], default 0.0
	**/
	var self_friction : Float;
	/**
		Clamp collision impulses to avoid instability (0.0 to disable clamping)
		
		Type: float in [0, 100], default 0.0
	**/
	var self_impulse_clamp : Float;
	/**
		Enable collisions with other objects
		
		Type: boolean, default False
	**/
	var use_collision : Bool;
	/**
		Enable self collisions
		
		Type: boolean, default False
	**/
	var use_self_collision : Bool;
	/**
		Vertex group to define vertices which are not used during self collisions
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_self_collisions : String;
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