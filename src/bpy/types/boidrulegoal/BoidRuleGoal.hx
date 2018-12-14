package bpy.types.boidrulegoal;
@:pythonImport("bpy.types.BoidRuleGoal") extern class BoidRuleGoal {
	/**
		Goal object
		
		Type: Object
	**/
	var object : bpy.types.object.Object;
	/**
		Predict target movement
		
		Type: boolean, default False
	**/
	var use_predict : Bool;
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