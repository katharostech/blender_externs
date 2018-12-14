package bpy.types.kinematicconstraint;
@:enum abstract Enum1(String) from String to String {
	var COPY_POSE : String = "COPY_POSE";
	var DISTANCE : String = "DISTANCE";
}@:enum abstract Enum2(String) from String to String {
	var LIMITDIST_INSIDE : String = "LIMITDIST_INSIDE";
	var LIMITDIST_OUTSIDE : String = "LIMITDIST_OUTSIDE";
	var LIMITDIST_ONSURFACE : String = "LIMITDIST_ONSURFACE";
}@:enum abstract Enum3(String) from String to String {
	var BONE : String = "BONE";
	var TARGET : String = "TARGET";
}/**
	Inverse Kinematics
**/
@:pythonImport("bpy.types.KinematicConstraint") extern class KinematicConstraint {
	/**
		How many bones are included in the IK effect - 0 uses all bones
		
		Type: int in [0, 255], default 0
	**/
	var chain_count : Int;
	/**
		Radius of limiting sphere
		
		Type: float in [0, 100], default 0.0
	**/
	var distance : Float;
	/**
		
		
		Type: enum in [‘COPY_POSE’, ‘DISTANCE’], default ‘COPY_POSE’
	**/
	var ik_type : bpy.types.kinematicconstraint.KinematicConstraint.Enum1;
	/**
		Maximum number of solving iterations
		
		Type: int in [0, 10000], default 0
	**/
	var iterations : Int;
	/**
		Distances in relation to sphere of influence to allow
		
		Type: enum in [‘LIMITDIST_INSIDE’, ‘LIMITDIST_OUTSIDE’, ‘LIMITDIST_ONSURFACE’], default ‘LIMITDIST_INSIDE’
	**/
	var limit_mode : bpy.types.kinematicconstraint.KinematicConstraint.Enum2;
	/**
		Constraint position along X axis
		
		Type: boolean, default False
	**/
	var lock_location_x : Bool;
	/**
		Constraint position along Y axis
		
		Type: boolean, default False
	**/
	var lock_location_y : Bool;
	/**
		Constraint position along Z axis
		
		Type: boolean, default False
	**/
	var lock_location_z : Bool;
	/**
		Constraint rotation along X axis
		
		Type: boolean, default False
	**/
	var lock_rotation_x : Bool;
	/**
		Constraint rotation along Y axis
		
		Type: boolean, default False
	**/
	var lock_rotation_y : Bool;
	/**
		Constraint rotation along Z axis
		
		Type: boolean, default False
	**/
	var lock_rotation_z : Bool;
	/**
		For Tree-IK: Weight of orientation control for this target
		
		Type: float in [0.01, 1], default 0.0
	**/
	var orient_weight : Float;
	/**
		Pole rotation offset
		
		Type: float in [-3.14159, 3.14159], default 0.0
	**/
	var pole_angle : Float;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var pole_subtarget : String;
	/**
		Object for pole rotation
		
		Type: Object
	**/
	var pole_target : bpy.types.object.Object;
	/**
		Constraint axis Lock options relative to Bone or Target reference
		
		Type: enum in [‘BONE’, ‘TARGET’], default ‘BONE’
	**/
	var reference_axis : bpy.types.kinematicconstraint.KinematicConstraint.Enum3;
	/**
		Armature bone, mesh or lattice vertex group, …
		
		Type: string, default “”, (never None)
	**/
	var subtarget : String;
	/**
		Target object
		
		Type: Object
	**/
	var target : bpy.types.object.Object;
	/**
		Chain follows position of target
		
		Type: boolean, default False
	**/
	var use_location : Bool;
	/**
		Chain follows rotation of target
		
		Type: boolean, default False
	**/
	var use_rotation : Bool;
	/**
		Enable IK Stretching
		
		Type: boolean, default False
	**/
	var use_stretch : Bool;
	/**
		Include bone’s tail as last element in chain
		
		Type: boolean, default False
	**/
	var use_tail : Bool;
	/**
		For Tree-IK: Weight of position control for this target
		
		Type: float in [0.01, 1], default 0.0
	**/
	var weight : Float;
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
		Constraint name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘CAMERA_SOLVER’, ‘FOLLOW_TRACK’, ‘OBJECT_SOLVER’, ‘COPY_LOCATION’, ‘COPY_ROTATION’, ‘COPY_SCALE’, ‘COPY_TRANSFORMS’, ‘LIMIT_DISTANCE’, ‘LIMIT_LOCATION’, ‘LIMIT_ROTATION’, ‘LIMIT_SCALE’, ‘MAINTAIN_VOLUME’, ‘TRANSFORM’, ‘TRANSFORM_CACHE’, ‘CLAMP_TO’, ‘DAMPED_TRACK’, ‘IK’, ‘LOCKED_TRACK’, ‘SPLINE_IK’, ‘STRETCH_TO’, ‘TRACK_TO’, ‘ACTION’, ‘CHILD_OF’, ‘FLOOR’, ‘FOLLOW_PATH’, ‘PIVOT’, ‘SHRINKWRAP’, ‘ARMATURE’], default ‘CAMERA_SOLVER’, (readonly)
	**/
	var type(default, never) : bpy.types.constraint.Constraint.Enum3;
	/**
		Space that owner is evaluated in
		
		Type: enum in [‘WORLD’, ‘POSE’, ‘LOCAL_WITH_PARENT’, ‘LOCAL’], default ‘WORLD’
	**/
	var owner_space : bpy.types.constraint.Constraint.Enum1;
	/**
		Space that target is evaluated in
		
		Type: enum in [‘WORLD’, ‘POSE’, ‘LOCAL_WITH_PARENT’, ‘LOCAL’], default ‘WORLD’
	**/
	var target_space : bpy.types.constraint.Constraint.Enum2;
	/**
		Enable/Disable Constraint
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		Constraint’s panel is expanded in UI
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Constraint has valid settings and can be evaluated
		
		Type: boolean, default False, (readonly)
	**/
	var is_valid(default, never) : Bool;
	/**
		Constraint is the one being edited
		
		Type: boolean, default False
	**/
	var active : Bool;
	/**
		Constraint was added in this proxy instance (i.e. did not belong to source Armature)
		
		Type: boolean, default False
	**/
	var is_proxy_local : Bool;
	/**
		Amount of influence constraint will have on the final solution
		
		Type: float in [0, 1], default 0.0
	**/
	var influence : Float;
	/**
		Amount of residual error in Blender space unit for constraints that work on position
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var error_location(default, never) : Float;
	/**
		Amount of residual error in radians for constraints that work on orientation
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var error_rotation(default, never) : Float;
}