package bpy.ops.boid;
/**
	Boid Operators
**/
@:pythonImport("bpy.ops.boid") extern class Module {
	/**
		Add a boid rule to the current boid state
		@param type TypeGOAL Goal, Go to assigned object or loudest assigned signal source.AVOID Avoid, Get away from assigned object or loudest assigned signal source.AVOID_COLLISION Avoid Collision, Maneuver to avoid collisions with other boids and deflector objects in near future.SEPARATE Separate, Keep from going through other boids.FLOCK Flock, Move to center of neighbors and match their velocity.FOLLOW_LEADER Follow Leader, Follow a boid or assigned object.AVERAGE_SPEED Average Speed, Maintain speed, flight level or wander.FIGHT Fight, Go to closest enemy and attack when in range. — enum in ['GOAL', 'AVOID', 'AVOID_COLLISION', 'SEPARATE', 'FLOCK', 'FOLLOW_LEADER', 'AVERAGE_SPEED', 'FIGHT'], (optional)
	**/
	static function rule_add(type:bpy.ops.boid.Boid.Enum1):Void;
	/**
		Delete current boid rule
	**/
	static function rule_del():Void;
	/**
		Move boid rule down in the list
	**/
	static function rule_move_down():Void;
	/**
		Move boid rule up in the list
	**/
	static function rule_move_up():Void;
	/**
		Add a boid state to the particle system
	**/
	static function state_add():Void;
	/**
		Delete current boid state
	**/
	static function state_del():Void;
	/**
		Move boid state down in the list
	**/
	static function state_move_down():Void;
	/**
		Move boid state up in the list
	**/
	static function state_move_up():Void;
}