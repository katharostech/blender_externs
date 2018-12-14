package bpy.types.rigidbodyconstraint;
@:enum abstract Enum1(String) from String to String {
	var SPRING1 : String = "SPRING1";
	var SPRING2 : String = "SPRING2";
}@:enum abstract Enum2(String) from String to String {
	var FIXED : String = "FIXED";
	var POINT : String = "POINT";
	var HINGE : String = "HINGE";
	var SLIDER : String = "SLIDER";
	var PISTON : String = "PISTON";
	var GENERIC : String = "GENERIC";
	var GENERIC_SPRING : String = "GENERIC_SPRING";
	var MOTOR : String = "MOTOR";
}/**
	Constraint influencing Objects inside Rigid Body Simulation
**/
@:pythonImport("bpy.types.RigidBodyConstraint") extern class RigidBodyConstraint {
	/**
		Impulse threshold that must be reached for the constraint to break
		
		Type: float in [0, inf], default 10.0
	**/
	var breaking_threshold : Float;
	/**
		Disable collisions between constrained rigid bodies
		
		Type: boolean, default False
	**/
	var disable_collisions : Bool;
	/**
		Enable this constraint
		
		Type: boolean, default False
	**/
	var enabled : Bool;
	/**
		Lower limit of X axis rotation
		
		Type: float in [-6.28319, 6.28319], default -0.785398
	**/
	var limit_ang_x_lower : Float;
	/**
		Upper limit of X axis rotation
		
		Type: float in [-6.28319, 6.28319], default 0.785398
	**/
	var limit_ang_x_upper : Float;
	/**
		Lower limit of Y axis rotation
		
		Type: float in [-6.28319, 6.28319], default -0.785398
	**/
	var limit_ang_y_lower : Float;
	/**
		Upper limit of Y axis rotation
		
		Type: float in [-6.28319, 6.28319], default 0.785398
	**/
	var limit_ang_y_upper : Float;
	/**
		Lower limit of Z axis rotation
		
		Type: float in [-6.28319, 6.28319], default -0.785398
	**/
	var limit_ang_z_lower : Float;
	/**
		Upper limit of Z axis rotation
		
		Type: float in [-6.28319, 6.28319], default 0.785398
	**/
	var limit_ang_z_upper : Float;
	/**
		Lower limit of X axis translation
		
		Type: float in [-inf, inf], default -1
	**/
	var limit_lin_x_lower : Float;
	/**
		Upper limit of X axis translation
		
		Type: float in [-inf, inf], default 1.0
	**/
	var limit_lin_x_upper : Float;
	/**
		Lower limit of Y axis translation
		
		Type: float in [-inf, inf], default -1
	**/
	var limit_lin_y_lower : Float;
	/**
		Upper limit of Y axis translation
		
		Type: float in [-inf, inf], default 1.0
	**/
	var limit_lin_y_upper : Float;
	/**
		Lower limit of Z axis translation
		
		Type: float in [-inf, inf], default -1
	**/
	var limit_lin_z_lower : Float;
	/**
		Upper limit of Z axis translation
		
		Type: float in [-inf, inf], default 1.0
	**/
	var limit_lin_z_upper : Float;
	/**
		Maximum angular motor impulse
		
		Type: float in [0, inf], default 1.0
	**/
	var motor_ang_max_impulse : Float;
	/**
		Target angular motor velocity
		
		Type: float in [-inf, inf], default 1.0
	**/
	var motor_ang_target_velocity : Float;
	/**
		Maximum linear motor impulse
		
		Type: float in [0, inf], default 1.0
	**/
	var motor_lin_max_impulse : Float;
	/**
		Target linear motor velocity
		
		Type: float in [-inf, inf], default 1.0
	**/
	var motor_lin_target_velocity : Float;
	/**
		First Rigid Body Object to be constrained
		
		Type: Object
	**/
	var object1 : bpy.types.object.Object;
	/**
		Second Rigid Body Object to be constrained
		
		Type: Object
	**/
	var object2 : bpy.types.object.Object;
	/**
		Number of constraint solver iterations made per simulation step (higher values are more accurate but slower)
		
		Type: int in [1, 1000], default 10
	**/
	var solver_iterations : Int;
	/**
		Damping on the X rotational axis
		
		Type: float in [0, inf], default 0.5
	**/
	var spring_damping_ang_x : Float;
	/**
		Damping on the Y rotational axis
		
		Type: float in [0, inf], default 0.5
	**/
	var spring_damping_ang_y : Float;
	/**
		Damping on the Z rotational axis
		
		Type: float in [0, inf], default 0.5
	**/
	var spring_damping_ang_z : Float;
	/**
		Damping on the X axis
		
		Type: float in [0, inf], default 0.5
	**/
	var spring_damping_x : Float;
	/**
		Damping on the Y axis
		
		Type: float in [0, inf], default 0.5
	**/
	var spring_damping_y : Float;
	/**
		Damping on the Z axis
		
		Type: float in [0, inf], default 0.5
	**/
	var spring_damping_z : Float;
	/**
		Stiffness on the X rotational axis
		
		Type: float in [0, inf], default 10.0
	**/
	var spring_stiffness_ang_x : Float;
	/**
		Stiffness on the Y rotational axis
		
		Type: float in [0, inf], default 10.0
	**/
	var spring_stiffness_ang_y : Float;
	/**
		Stiffness on the Z rotational axis
		
		Type: float in [0, inf], default 10.0
	**/
	var spring_stiffness_ang_z : Float;
	/**
		Stiffness on the X axis
		
		Type: float in [0, inf], default 10.0
	**/
	var spring_stiffness_x : Float;
	/**
		Stiffness on the Y axis
		
		Type: float in [0, inf], default 10.0
	**/
	var spring_stiffness_y : Float;
	/**
		Stiffness on the Z axis
		
		Type: float in [0, inf], default 10.0
	**/
	var spring_stiffness_z : Float;
	/**
		Which implementation of spring to use
		
		Type: enum in [‘SPRING1’, ‘SPRING2’], default ‘SPRING1’
	**/
	var spring_type : bpy.types.rigidbodyconstraint.RigidBodyConstraint.Enum1;
	/**
		Type of Rigid Body Constraint
		
		Type: enum in [‘FIXED’, ‘POINT’, ‘HINGE’, ‘SLIDER’, ‘PISTON’, ‘GENERIC’, ‘GENERIC_SPRING’, ‘MOTOR’], default ‘POINT’
	**/
	var type : bpy.types.rigidbodyconstraint.RigidBodyConstraint.Enum2;
	/**
		Constraint can be broken if it receives an impulse above the threshold
		
		Type: boolean, default False
	**/
	var use_breaking : Bool;
	/**
		Limit rotation around X axis
		
		Type: boolean, default False
	**/
	var use_limit_ang_x : Bool;
	/**
		Limit rotation around Y axis
		
		Type: boolean, default False
	**/
	var use_limit_ang_y : Bool;
	/**
		Limit rotation around Z axis
		
		Type: boolean, default False
	**/
	var use_limit_ang_z : Bool;
	/**
		Limit translation on X axis
		
		Type: boolean, default False
	**/
	var use_limit_lin_x : Bool;
	/**
		Limit translation on Y axis
		
		Type: boolean, default False
	**/
	var use_limit_lin_y : Bool;
	/**
		Limit translation on Z axis
		
		Type: boolean, default False
	**/
	var use_limit_lin_z : Bool;
	/**
		Enable angular motor
		
		Type: boolean, default False
	**/
	var use_motor_ang : Bool;
	/**
		Enable linear motor
		
		Type: boolean, default False
	**/
	var use_motor_lin : Bool;
	/**
		Override the number of solver iterations for this constraint
		
		Type: boolean, default False
	**/
	var use_override_solver_iterations : Bool;
	/**
		Enable spring on X rotational axis
		
		Type: boolean, default False
	**/
	var use_spring_ang_x : Bool;
	/**
		Enable spring on Y rotational axis
		
		Type: boolean, default False
	**/
	var use_spring_ang_y : Bool;
	/**
		Enable spring on Z rotational axis
		
		Type: boolean, default False
	**/
	var use_spring_ang_z : Bool;
	/**
		Enable spring on X axis
		
		Type: boolean, default False
	**/
	var use_spring_x : Bool;
	/**
		Enable spring on Y axis
		
		Type: boolean, default False
	**/
	var use_spring_y : Bool;
	/**
		Enable spring on Z axis
		
		Type: boolean, default False
	**/
	var use_spring_z : Bool;
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
}