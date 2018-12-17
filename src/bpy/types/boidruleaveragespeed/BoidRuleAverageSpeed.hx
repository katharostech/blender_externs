package bpy.types.boidruleaveragespeed;
@:native("bpy.types.BoidRuleAverageSpeed") extern class BoidRuleAverageSpeed {
	/**
		How much velocity’s z-component is kept constant
		
		Type: float in [0, 1], default 0.0
	**/
	var level : Float;
	/**
		Percentage of maximum speed
		
		Type: float in [0, 1], default 0.0
	**/
	var speed : Float;
	/**
		How fast velocity’s direction is randomized
		
		Type: float in [0, 1], default 0.0
	**/
	var wander : Float;
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