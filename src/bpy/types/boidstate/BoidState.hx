package bpy.types.boidstate;
@:enum abstract Enum1(String) from String to String {
	var FUZZY : String = "FUZZY";
	var RANDOM : String = "RANDOM";
	var AVERAGE : String = "AVERAGE";
}/**
	Boid state for boid physics
**/
@:native("bpy.types.BoidState") extern class BoidState {
	/**
		
		
		Type: BoidRule, (readonly)
	**/
	var active_boid_rule(default, never) : bpy.types.boidrule.BoidRule;
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var active_boid_rule_index : Int;
	/**
		
		
		Type: float in [0, 10], default 0.0
	**/
	var falloff : Float;
	/**
		Boid state name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: float in [0, 1], default 0.0
	**/
	var rule_fuzzy : Float;
	/**
		
		
		Type: bpy_prop_collection of BoidRule, (readonly)
	**/
	var rules(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		How the rules in the list are evaluated
		
		Type: enum in [‘FUZZY’, ‘RANDOM’, ‘AVERAGE’], default ‘FUZZY’
	**/
	var ruleset_type : bpy.types.boidstate.BoidState.Enum1;
	/**
		
		
		Type: float in [0, 100], default 0.0
	**/
	var volume : Float;
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