package bpy.types.rigidbodyworld;
/**
	Self-contained rigid body simulation environment and settings
**/
@:native("bpy.types.RigidBodyWorld") extern class RigidBodyWorld {
	/**
		Collection containing objects participating in this simulation
		
		Type: Collection
	**/
	var collection : bpy.types.collection.Collection;
	/**
		Collection containing rigid body constraint objects
		
		Type: Collection
	**/
	var constraints : bpy.types.collection.Collection;
	/**
		
		
		Type: EffectorWeights, (readonly)
	**/
	var effector_weights(default, never) : bpy.types.effectorweights.EffectorWeights;
	/**
		Simulation will be evaluated
		
		Type: boolean, default False
	**/
	var enabled : Bool;
	/**
		
		
		Type: PointCache, (readonly, never None)
	**/
	var point_cache(default, never) : bpy.types.pointcache.PointCache;
	/**
		Number of constraint solver iterations made per simulation step (higher values are more accurate but slower)
		
		Type: int in [1, 1000], default 10
	**/
	var solver_iterations : Int;
	/**
		Number of simulation steps taken per second (higher values are more accurate but slower)
		
		Type: int in [1, 32767], default 60
	**/
	var steps_per_second : Int;
	/**
		Change the speed of the simulation
		
		Type: float in [0, 100], default 1.0
	**/
	var time_scale : Float;
	/**
		Reduce extra velocity that can build up when objects collide (lowers simulation stability a little so use only when necessary)
		
		Type: boolean, default False
	**/
	var use_split_impulse : Bool;
	/**
		Sweep test convex rigidbody against the current rigidbody world
		@param object Rigidbody object with a convex collision shape — Object, (never None)
	**/
	function convex_sweep_test(object:Dynamic):Void;
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