package bpy.types.boidrule;
@:enum abstract Enum1(String) from String to String {
	var GOAL : String = "GOAL";
	var AVOID : String = "AVOID";
	var AVOID_COLLISION : String = "AVOID_COLLISION";
	var SEPARATE : String = "SEPARATE";
	var FLOCK : String = "FLOCK";
	var FOLLOW_LEADER : String = "FOLLOW_LEADER";
	var AVERAGE_SPEED : String = "AVERAGE_SPEED";
	var FIGHT : String = "FIGHT";
}@:native("bpy.types.BoidRule") extern class BoidRule {
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