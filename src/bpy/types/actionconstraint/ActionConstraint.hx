package bpy.types.actionconstraint;
@:enum abstract Enum1(String) from String to String {
	var LOCATION_X : String = "LOCATION_X";
	var LOCATION_Y : String = "LOCATION_Y";
	var LOCATION_Z : String = "LOCATION_Z";
	var ROTATION_X : String = "ROTATION_X";
	var ROTATION_Y : String = "ROTATION_Y";
	var ROTATION_Z : String = "ROTATION_Z";
	var SCALE_X : String = "SCALE_X";
	var SCALE_Y : String = "SCALE_Y";
	var SCALE_Z : String = "SCALE_Z";
}/**
	Map an action to the transform axes of a bone
**/
@:native("bpy.types.ActionConstraint") extern class ActionConstraint {
	/**
		The constraining action
		
		Type: Action
	**/
	var action : bpy.types.action.Action;
	/**
		Last frame of the Action to use
		
		Type: int in [-1048574, 1048574], default 0
	**/
	var frame_end : Int;
	/**
		First frame of the Action to use
		
		Type: int in [-1048574, 1048574], default 0
	**/
	var frame_start : Int;
	/**
		Maximum value for target channel range
		
		Type: float in [-1000, 1000], default 0.0
	**/
	var max : Float;
	/**
		Minimum value for target channel range
		
		Type: float in [-1000, 1000], default 0.0
	**/
	var min : Float;
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
		Transformation channel from the target that is used to key the Action
		
		Type: enum in [‘LOCATION_X’, ‘LOCATION_Y’, ‘LOCATION_Z’, ‘ROTATION_X’, ‘ROTATION_Y’, ‘ROTATION_Z’, ‘SCALE_X’, ‘SCALE_Y’, ‘SCALE_Z’], default ‘ROTATION_X’
	**/
	var transform_channel : bpy.types.actionconstraint.ActionConstraint.Enum1;
	/**
		Bones only: apply the object’s transformation channels of the action to the constrained bone, instead of bone’s channels
		
		Type: boolean, default False
	**/
	var use_bone_object_action : Bool;
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