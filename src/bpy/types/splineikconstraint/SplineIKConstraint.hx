package bpy.types.splineikconstraint;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var BONE_ORIGINAL : String = "BONE_ORIGINAL";
	var INVERSE_PRESERVE : String = "INVERSE_PRESERVE";
	var VOLUME_PRESERVE : String = "VOLUME_PRESERVE";
}/**
	Align ‘n’ bones along a curve
**/
@:native("bpy.types.SplineIKConstraint") extern class SplineIKConstraint {
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
		How many bones are included in the chain
		
		Type: int in [1, 255], default 0
	**/
	var chain_count : Int;
	/**
		(EXPERIENCED USERS ONLY) The relative positions of the joints along the chain, as percentages
		
		Type: float array of 32 items in [0, 1], default (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
	**/
	var joint_bindings : Array<Float>;
	/**
		Curve that controls this relationship
		
		Type: Object
	**/
	var target : bpy.types.object.Object;
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
		Offset the entire chain relative to the root joint
		
		Type: boolean, default False
	**/
	var use_chain_offset : Bool;
	/**
		Average radius of the endpoints is used to tweak the X and Z Scaling of the bones, on top of XZ Scale mode
		
		Type: boolean, default False
	**/
	var use_curve_radius : Bool;
	/**
		Ignore the relative lengths of the bones when fitting to the curve
		
		Type: boolean, default False
	**/
	var use_even_divisions : Bool;
	/**
		Stretch the Y axis of the bones to fit the curve
		
		Type: boolean, default False
	**/
	var use_y_stretch : Bool;
	/**
		Method used for determining the scaling of the X and Z axes of the bones
		
		Type: enum in [‘NONE’, ‘BONE_ORIGINAL’, ‘INVERSE_PRESERVE’, ‘VOLUME_PRESERVE’], default ‘NONE’
	**/
	var xz_scale_mode : bpy.types.splineikconstraint.SplineIKConstraint.Enum1;
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