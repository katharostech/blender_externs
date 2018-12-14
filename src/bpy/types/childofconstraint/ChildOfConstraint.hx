package bpy.types.childofconstraint;
/**
	Create constraint-based parent-child relationship
**/
@:pythonImport("bpy.types.ChildOfConstraint") extern class ChildOfConstraint {
	/**
		Transformation matrix to apply before
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var inverse_matrix : Array<Float>;
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
		Use X Location of Parent
		
		Type: boolean, default False
	**/
	var use_location_x : Bool;
	/**
		Use Y Location of Parent
		
		Type: boolean, default False
	**/
	var use_location_y : Bool;
	/**
		Use Z Location of Parent
		
		Type: boolean, default False
	**/
	var use_location_z : Bool;
	/**
		Use X Rotation of Parent
		
		Type: boolean, default False
	**/
	var use_rotation_x : Bool;
	/**
		Use Y Rotation of Parent
		
		Type: boolean, default False
	**/
	var use_rotation_y : Bool;
	/**
		Use Z Rotation of Parent
		
		Type: boolean, default False
	**/
	var use_rotation_z : Bool;
	/**
		Use X Scale of Parent
		
		Type: boolean, default False
	**/
	var use_scale_x : Bool;
	/**
		Use Y Scale of Parent
		
		Type: boolean, default False
	**/
	var use_scale_y : Bool;
	/**
		Use Z Scale of Parent
		
		Type: boolean, default False
	**/
	var use_scale_z : Bool;
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