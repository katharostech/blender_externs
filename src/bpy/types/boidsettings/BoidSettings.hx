package bpy.types.boidsettings;
/**
	Settings for boid physics
**/
@:native("bpy.types.BoidSettings") extern class BoidSettings {
	/**
		Accuracy of attack
		
		Type: float in [0, 1], default 0.0
	**/
	var accuracy : Float;
	/**
		
		
		Type: BoidRule, (readonly)
	**/
	var active_boid_state(default, never) : bpy.types.boidrule.BoidRule;
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var active_boid_state_index : Int;
	/**
		Boid will fight this times stronger enemy
		
		Type: float in [0, 100], default 0.0
	**/
	var aggression : Float;
	/**
		Maximum acceleration in air (relative to maximum speed)
		
		Type: float in [0, 1], default 0.0
	**/
	var air_acc_max : Float;
	/**
		Maximum angular velocity in air (relative to 180 degrees)
		
		Type: float in [0, 1], default 0.0
	**/
	var air_ave_max : Float;
	/**
		Radius of boids personal space in air (% of particle size)
		
		Type: float in [0, 10], default 0.0
	**/
	var air_personal_space : Float;
	/**
		Maximum speed in air
		
		Type: float in [0, 100], default 0.0
	**/
	var air_speed_max : Float;
	/**
		Minimum speed in air (relative to maximum speed)
		
		Type: float in [0, 1], default 0.0
	**/
	var air_speed_min : Float;
	/**
		Amount of rotation around velocity vector on turns
		
		Type: float in [0, 2], default 0.0
	**/
	var bank : Float;
	/**
		Initial boid health when born
		
		Type: float in [0, 100], default 0.0
	**/
	var health : Float;
	/**
		Boid height relative to particle size
		
		Type: float in [0, 2], default 0.0
	**/
	var height : Float;
	/**
		Maximum acceleration on land (relative to maximum speed)
		
		Type: float in [0, 1], default 0.0
	**/
	var land_acc_max : Float;
	/**
		Maximum angular velocity on land (relative to 180 degrees)
		
		Type: float in [0, 1], default 0.0
	**/
	var land_ave_max : Float;
	/**
		Maximum speed for jumping
		
		Type: float in [0, 100], default 0.0
	**/
	var land_jump_speed : Float;
	/**
		Radius of boids personal space on land (% of particle size)
		
		Type: float in [0, 10], default 0.0
	**/
	var land_personal_space : Float;
	/**
		How smoothly the boids land
		
		Type: float in [0, 10], default 0.0
	**/
	var land_smooth : Float;
	/**
		Maximum speed on land
		
		Type: float in [0, 100], default 0.0
	**/
	var land_speed_max : Float;
	/**
		How strong a force must be to start effecting a boid on land
		
		Type: float in [0, 1000], default 0.0
	**/
	var land_stick_force : Float;
	/**
		Amount of rotation around side vector
		
		Type: float in [0, 2], default 0.0
	**/
	var pitch : Float;
	/**
		Maximum distance from which a boid can attack
		
		Type: float in [0, 100], default 0.0
	**/
	var range : Float;
	/**
		
		
		Type: bpy_prop_collection of BoidState, (readonly)
	**/
	var states(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Maximum caused damage on attack per second
		
		Type: float in [0, 100], default 0.0
	**/
	var strength : Float;
	/**
		Allow boids to climb goal objects
		
		Type: boolean, default False
	**/
	var use_climb : Bool;
	/**
		Allow boids to move in air
		
		Type: boolean, default False
	**/
	var use_flight : Bool;
	/**
		Allow boids to move on land
		
		Type: boolean, default False
	**/
	var use_land : Bool;
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