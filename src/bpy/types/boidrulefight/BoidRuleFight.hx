package bpy.types.boidrulefight;
@:pythonImport("bpy.types.BoidRuleFight") extern class BoidRuleFight {
	/**
		Attack boids at max this distance
		
		Type: float in [0, 100], default 0.0
	**/
	var distance : Float;
	/**
		Flee to this distance
		
		Type: float in [0, 100], default 0.0
	**/
	var flee_distance : Float;
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