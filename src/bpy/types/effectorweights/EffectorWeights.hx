package bpy.types.effectorweights;
/**
	Effector weights for physics simulation
**/
@:native("bpy.types.EffectorWeights") extern class EffectorWeights {
	/**
		All effector’s weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var all : Float;
	/**
		Use force fields when growing hair
		
		Type: boolean, default False
	**/
	var apply_to_hair_growing : Bool;
	/**
		Boid effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var boid : Float;
	/**
		Charge effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var charge : Float;
	/**
		Limit effectors to this collection
		
		Type: Collection
	**/
	var collection : bpy.types.collection.Collection;
	/**
		Curve guide effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var curve_guide : Float;
	/**
		Drag effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var drag : Float;
	/**
		Force effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var force : Float;
	/**
		Global gravity weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var gravity : Float;
	/**
		Harmonic effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var harmonic : Float;
	/**
		Lennard-Jones effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var lennardjones : Float;
	/**
		Magnetic effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var magnetic : Float;
	/**
		Smoke Flow effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var smokeflow : Float;
	/**
		Texture effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var texture : Float;
	/**
		Turbulence effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var turbulence : Float;
	/**
		Vortex effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var vortex : Float;
	/**
		Wind effector weight
		
		Type: float in [-200, 200], default 0.0
	**/
	var wind : Float;
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