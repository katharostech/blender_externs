package bpy.types.stretchtoconstraint;
@:enum abstract Enum1(String) from String to String {
	var PLANE_X : String = "PLANE_X";
	var PLANE_Z : String = "PLANE_Z";
}@:enum abstract Enum2(String) from String to String {
	var VOLUME_XZX : String = "VOLUME_XZX";
	var VOLUME_X : String = "VOLUME_X";
	var VOLUME_Z : String = "VOLUME_Z";
	var NO_VOLUME : String = "NO_VOLUME";
}/**
	Stretch to meet the target object
**/
@:pythonImport("bpy.types.StretchToConstraint") extern class StretchToConstraint {
	/**
		Factor between volume variation and stretching
		
		Type: float in [0, 100], default 0.0
	**/
	var bulge : Float;
	/**
		Maximum volume stretching factor
		
		Type: float in [1, 100], default 0.0
	**/
	var bulge_max : Float;
	/**
		Minimum volume stretching factor
		
		Type: float in [0, 1], default 0.0
	**/
	var bulge_min : Float;
	/**
		Strength of volume stretching clamping
		
		Type: float in [0, 1], default 0.0
	**/
	var bulge_smooth : Float;
	/**
		Target along length of bone: Head=0, Tail=1
		
		Type: float in [0, 1], default 0.0
	**/
	var head_tail : Float;
	/**
		Axis to maintain during stretch
		
		Type: enum in [‘PLANE_X’, ‘PLANE_Z’], default ‘PLANE_X’
	**/
	var keep_axis : bpy.types.stretchtoconstraint.StretchToConstraint.Enum1;
	/**
		Length at rest position
		
		Type: float in [0, 1000], default 0.0
	**/
	var rest_length : Float;
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
		Follow shape of B-Bone segments when calculating Head/Tail position
		
		Type: boolean, default False
	**/
	var use_bbone_shape : Bool;
	/**
		Use upper limit for volume variation
		
		Type: boolean, default False
	**/
	var use_bulge_max : Bool;
	/**
		Use lower limit for volume variation
		
		Type: boolean, default False
	**/
	var use_bulge_min : Bool;
	/**
		Maintain the object’s volume as it stretches
		
		Type: enum in [‘VOLUME_XZX’, ‘VOLUME_X’, ‘VOLUME_Z’, ‘NO_VOLUME’], default ‘VOLUME_XZX’
	**/
	var volume : bpy.types.stretchtoconstraint.StretchToConstraint.Enum2;
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