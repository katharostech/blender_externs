package bpy.types.boidruleavoidcollision;
@:pythonImport("bpy.types.BoidRuleAvoidCollision") extern class BoidRuleAvoidCollision {
	/**
		Time to look ahead in seconds
		
		Type: float in [0, 100], default 0.0
	**/
	var look_ahead : Float;
	/**
		Avoid collision with other boids
		
		Type: boolean, default False
	**/
	var use_avoid : Bool;
	/**
		Avoid collision with deflector objects
		
		Type: boolean, default False
	**/
	var use_avoid_collision : Bool;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:Dynamic):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:Dynamic):Dynamic;
	/**
		Boid rule name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘GOAL’, ‘AVOID’, ‘AVOID_COLLISION’, ‘SEPARATE’, ‘FLOCK’, ‘FOLLOW_LEADER’, ‘AVERAGE_SPEED’, ‘FIGHT’], default ‘GOAL’, (readonly)
	**/
	var type(default, never) : bpy.types.boidrule.BoidRule.Enum1;
	/**
		Use rule when boid is flying
		
		Type: boolean, default False
	**/
	var use_in_air : Bool;
	/**
		Use rule when boid is on land
		
		Type: boolean, default False
	**/
	var use_on_land : Bool;
}