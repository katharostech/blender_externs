package bpy.types.rigidbodyobject;
@:enum abstract Enum1(String) from String to String {
	var BOX : String = "BOX";
	var SPHERE : String = "SPHERE";
	var CAPSULE : String = "CAPSULE";
	var CYLINDER : String = "CYLINDER";
	var CONE : String = "CONE";
	var CONVEX_HULL : String = "CONVEX_HULL";
	var MESH : String = "MESH";
}@:enum abstract Enum2(String) from String to String {
	var BASE : String = "BASE";
	var DEFORM : String = "DEFORM";
	var FINAL : String = "FINAL";
}@:enum abstract Enum3(String) from String to String {
	var ACTIVE : String = "ACTIVE";
	var PASSIVE : String = "PASSIVE";
}/**
	Settings for object participating in Rigid Body Simulation
**/
@:native("bpy.types.RigidBodyObject") extern class RigidBodyObject {
	/**
		Amount of angular velocity that is lost over time
		
		Type: float in [0, 1], default 0.1
	**/
	var angular_damping : Float;
	/**
		Collision collections rigid body belongs to
		
		Type: boolean array of 20 items, default (False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False)
	**/
	var collision_collections : Array<Bool>;
	/**
		Threshold of distance near surface where collisions are still considered (best results when non-zero)
		
		Type: float in [0, 1], default 0.04
	**/
	var collision_margin : Float;
	/**
		Collision Shape of object in Rigid Body Simulations
		
		Type: enum in [‘BOX’, ‘SPHERE’, ‘CAPSULE’, ‘CYLINDER’, ‘CONE’, ‘CONVEX_HULL’, ‘MESH’], default ‘BOX’
	**/
	var collision_shape : bpy.types.rigidbodyobject.RigidBodyObject.Enum1;
	/**
		Angular Velocity below which simulation stops simulating object
		
		Type: float in [0, inf], default 0.5
	**/
	var deactivate_angular_velocity : Float;
	/**
		Linear Velocity below which simulation stops simulating object
		
		Type: float in [0, inf], default 0.4
	**/
	var deactivate_linear_velocity : Float;
	/**
		Rigid Body actively participates to the simulation
		
		Type: boolean, default False
	**/
	var enabled : Bool;
	/**
		Resistance of object to movement
		
		Type: float in [0, inf], default 0.5
	**/
	var friction : Float;
	/**
		Allow rigid body to be controlled by the animation system
		
		Type: boolean, default False
	**/
	var kinematic : Bool;
	/**
		Amount of linear velocity that is lost over time
		
		Type: float in [0, 1], default 0.04
	**/
	var linear_damping : Float;
	/**
		How much the object ‘weighs’ irrespective of gravity
		
		Type: float in [0.001, inf], default 1.0
	**/
	var mass : Float;
	/**
		Source of the mesh used to create collision shape
		
		Type: enum in [‘BASE’, ‘DEFORM’, ‘FINAL’], default ‘BASE’
	**/
	var mesh_source : bpy.types.rigidbodyobject.RigidBodyObject.Enum2;
	/**
		Tendency of object to bounce after colliding with another (0 = stays still, 1 = perfectly elastic)
		
		Type: float in [0, inf], default 0.0
	**/
	var restitution : Float;
	/**
		Role of object in Rigid Body Simulations
		
		Type: enum in [‘ACTIVE’, ‘PASSIVE’], default ‘ACTIVE’
	**/
	var type : bpy.types.rigidbodyobject.RigidBodyObject.Enum3;
	/**
		Enable deactivation of resting rigid bodies (increases performance and stability but can cause glitches)
		
		Type: boolean, default True
	**/
	var use_deactivation : Bool;
	/**
		Rigid body deforms during simulation
		
		Type: boolean, default False
	**/
	var use_deform : Bool;
	/**
		Use custom collision margin (some shapes will have a visible gap around them)
		
		Type: boolean, default False
	**/
	var use_margin : Bool;
	/**
		Deactivate rigid body at the start of the simulation
		
		Type: boolean, default False
	**/
	var use_start_deactivated : Bool;
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