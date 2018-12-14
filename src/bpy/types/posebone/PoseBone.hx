package bpy.types.posebone;
@:enum abstract Enum1(String) from String to String {
	var QUATERNION : String = "QUATERNION";
	var XYZ : String = "XYZ";
	var XZY : String = "XZY";
	var YXZ : String = "YXZ";
	var YZX : String = "YZX";
	var ZXY : String = "ZXY";
	var ZYX : String = "ZYX";
	var AXIS_ANGLE : String = "AXIS_ANGLE";
}/**
	Channel defining pose data for a bone in a Pose
**/
@:pythonImport("bpy.types.PoseBone") extern class PoseBone {
	/**
		X-axis handle offset for start of the B-Bone’s curve, adjusts curvature
		
		Type: float in [-5, 5], default 0.0
	**/
	var bbone_curveinx : Float;
	/**
		Y-axis handle offset for start of the B-Bone’s curve, adjusts curvature
		
		Type: float in [-5, 5], default 0.0
	**/
	var bbone_curveiny : Float;
	/**
		X-axis handle offset for end of the B-Bone’s curve, adjusts curvature
		
		Type: float in [-5, 5], default 0.0
	**/
	var bbone_curveoutx : Float;
	/**
		Y-axis handle offset for end of the B-Bone’s curve, adjusts curvature
		
		Type: float in [-5, 5], default 0.0
	**/
	var bbone_curveouty : Float;
	/**
		Bone that serves as the end handle for the B-Bone curve
		
		Type: PoseBone, (readonly)
	**/
	var bbone_custom_handle_end(default, never) : bpy.types.posebone.PoseBone;
	/**
		Bone that serves as the start handle for the B-Bone curve
		
		Type: PoseBone, (readonly)
	**/
	var bbone_custom_handle_start(default, never) : bpy.types.posebone.PoseBone;
	/**
		Length of first Bezier Handle (for B-Bones only)
		
		Type: float in [-5, 5], default 1.0
	**/
	var bbone_easein : Float;
	/**
		Length of second Bezier Handle (for B-Bones only)
		
		Type: float in [-5, 5], default 1.0
	**/
	var bbone_easeout : Float;
	/**
		Roll offset for the start of the B-Bone, adjusts twist
		
		Type: float in [-6.28319, 6.28319], default 0.0
	**/
	var bbone_rollin : Float;
	/**
		Roll offset for the end of the B-Bone, adjusts twist
		
		Type: float in [-6.28319, 6.28319], default 0.0
	**/
	var bbone_rollout : Float;
	/**
		Scale factor for start of the B-Bone, adjusts thickness (for tapering effects)
		
		Type: float in [0, 5], default 1.0
	**/
	var bbone_scalein : Float;
	/**
		Scale factor for end of the B-Bone, adjusts thickness (for tapering effects)
		
		Type: float in [0, 5], default 1.0
	**/
	var bbone_scaleout : Float;
	/**
		Bone associated with this PoseBone
		
		Type: Bone, (readonly, never None)
	**/
	var bone(default, never) : bpy.types.bone.Bone;
	/**
		Bone Group this pose channel belongs to
		
		Type: BoneGroup
	**/
	var bone_group : bpy.types.bonegroup.BoneGroup;
	/**
		Bone Group this pose channel belongs to (0=no group)
		
		Type: int in [-32768, 32767], default 0
	**/
	var bone_group_index : Int;
	/**
		Child of this pose bone
		
		Type: PoseBone, (readonly)
	**/
	var child(default, never) : bpy.types.posebone.PoseBone;
	/**
		Constraints that act on this PoseChannel
		
		Type: PoseBoneConstraints bpy_prop_collection of Constraint, (readonly)
	**/
	var constraints(default, never) : bpy.types.poseboneconstraints.PoseBoneConstraints;
	/**
		Object that defines custom draw type for this bone
		
		Type: Object
	**/
	var custom_shape : bpy.types.object.Object;
	/**
		Adjust the size of the custom shape
		
		Type: float in [0, 1000], default 0.0
	**/
	var custom_shape_scale : Float;
	/**
		Bone that defines the display transform of this custom shape
		
		Type: PoseBone
	**/
	var custom_shape_transform : bpy.types.posebone.PoseBone;
	/**
		Location of head of the channel’s bone
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0), (readonly)
	**/
	var head(default, never) : Array<Float>;
	/**
		Weight of scale constraint for IK
		
		Type: float in [0, 1], default 0.0
	**/
	var ik_linear_weight : Float;
	/**
		Maximum angles for IK Limit
		
		Type: float in [0, 3.14159], default 0.0
	**/
	var ik_max_x : Float;
	/**
		Maximum angles for IK Limit
		
		Type: float in [0, 3.14159], default 0.0
	**/
	var ik_max_y : Float;
	/**
		Maximum angles for IK Limit
		
		Type: float in [0, 3.14159], default 0.0
	**/
	var ik_max_z : Float;
	/**
		Minimum angles for IK Limit
		
		Type: float in [-3.14159, 0], default 0.0
	**/
	var ik_min_x : Float;
	/**
		Minimum angles for IK Limit
		
		Type: float in [-3.14159, 0], default 0.0
	**/
	var ik_min_y : Float;
	/**
		Minimum angles for IK Limit
		
		Type: float in [-3.14159, 0], default 0.0
	**/
	var ik_min_z : Float;
	/**
		Weight of rotation constraint for IK
		
		Type: float in [0, 1], default 0.0
	**/
	var ik_rotation_weight : Float;
	/**
		IK stiffness around the X axis
		
		Type: float in [0, 0.99], default 0.0
	**/
	var ik_stiffness_x : Float;
	/**
		IK stiffness around the Y axis
		
		Type: float in [0, 0.99], default 0.0
	**/
	var ik_stiffness_y : Float;
	/**
		IK stiffness around the Z axis
		
		Type: float in [0, 0.99], default 0.0
	**/
	var ik_stiffness_z : Float;
	/**
		Allow scaling of the bone for IK
		
		Type: float in [0, 1], default 0.0
	**/
	var ik_stretch : Float;
	/**
		Is part of an IK chain
		
		Type: boolean, default False, (readonly)
	**/
	var is_in_ik_chain(default, never) : Bool;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var location : Array<Float>;
	/**
		Disallow movement around the X axis
		
		Type: boolean, default False
	**/
	var lock_ik_x : Bool;
	/**
		Disallow movement around the Y axis
		
		Type: boolean, default False
	**/
	var lock_ik_y : Bool;
	/**
		Disallow movement around the Z axis
		
		Type: boolean, default False
	**/
	var lock_ik_z : Bool;
	/**
		Lock editing of location in the interface
		
		Type: boolean array of 3 items, default (False, False, False)
	**/
	var lock_location : Array<Bool>;
	/**
		Lock editing of rotation in the interface
		
		Type: boolean array of 3 items, default (False, False, False)
	**/
	var lock_rotation : Array<Bool>;
	/**
		Lock editing of ‘angle’ component of four-component rotations in the interface
		
		Type: boolean, default False
	**/
	var lock_rotation_w : Bool;
	/**
		Lock editing of four component rotations by components (instead of as Eulers)
		
		Type: boolean, default False
	**/
	var lock_rotations_4d : Bool;
	/**
		Lock editing of scale in the interface
		
		Type: boolean array of 3 items, default (False, False, False)
	**/
	var lock_scale : Array<Bool>;
	/**
		Final 4x4 matrix after constraints and drivers are applied (object space)
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix : Array<Float>;
	/**
		Alternative access to location/scale/rotation relative to the parent and own rest bone
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix_basis : Array<Float>;
	/**
		4x4 matrix, before constraints
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0)), (readonly)
	**/
	var matrix_channel(default, never) : Array<Float>;
	/**
		Motion Path for this element
		
		Type: MotionPath, (readonly)
	**/
	var motion_path(default, never) : bpy.types.motionpath.MotionPath;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Parent of this pose bone
		
		Type: PoseBone, (readonly)
	**/
	var parent(default, never) : bpy.types.posebone.PoseBone;
	/**
		Angle of Rotation for Axis-Angle rotation representation
		
		Type: float array of 4 items in [-inf, inf], default (0.0, 0.0, 1.0, 0.0)
	**/
	var rotation_axis_angle : Array<Float>;
	/**
		Rotation in Eulers
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var rotation_euler : Array<Float>;
	/**
		
		
		Type: enum in [‘QUATERNION’, ‘XYZ’, ‘XZY’, ‘YXZ’, ‘YZX’, ‘ZXY’, ‘ZYX’, ‘AXIS_ANGLE’], default ‘QUATERNION’
	**/
	var rotation_mode : bpy.types.posebone.PoseBone.Enum1;
	/**
		Rotation in Quaternions
		
		Type: float array of 4 items in [-inf, inf], default (1.0, 0.0, 0.0, 0.0)
	**/
	var rotation_quaternion : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (1.0, 1.0, 1.0)
	**/
	var scale : Array<Float>;
	/**
		Location of tail of the channel’s bone
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0), (readonly)
	**/
	var tail(default, never) : Array<Float>;
	/**
		Scale the custom object by the bone length
		
		Type: boolean, default False
	**/
	var use_custom_shape_bone_size : Bool;
	/**
		Limit movement around the X axis
		
		Type: boolean, default False
	**/
	var use_ik_limit_x : Bool;
	/**
		Limit movement around the Y axis
		
		Type: boolean, default False
	**/
	var use_ik_limit_y : Bool;
	/**
		Limit movement around the Z axis
		
		Type: boolean, default False
	**/
	var use_ik_limit_z : Bool;
	/**
		Apply channel size as IK constraint if stretching is enabled
		
		Type: boolean, default False
	**/
	var use_ik_linear_control : Bool;
	/**
		Apply channel rotation as IK constraint
		
		Type: boolean, default False
	**/
	var use_ik_rotation_control : Bool;
	/**
		The name of this bone before any ‘.’ character
		(readonly)
	**/
	var basename(default, never) : Dynamic;
	/**
		The midpoint between the head and the tail.
		(readonly)
	**/
	var center(default, never) : Dynamic;
	/**
		(readonly)
	**/
	var children(default, never) : Dynamic;
	/**
		A list of all children from this bone. Warning: takes O(len(bones)**2) time.
		(readonly)
	**/
	var children_recursive(default, never) : Dynamic;
	/**
		Returns a chain of children with the same base name as this bone.
		Only direct chains are supported, forks caused by multiple children
		with matching base names will terminate the function
		and not be returned. Warning: takes O(len(bones)**2) time.
		(readonly)
	**/
	var children_recursive_basename(default, never) : Dynamic;
	/**
		The distance from head to tail,
		when set the head is moved to fit the length.
	**/
	var length : Dynamic;
	/**
		A list of parents, starting with the immediate parent
		(readonly)
	**/
	var parent_recursive(default, never) : Dynamic;
	/**
		The direction this bone is pointing.
		Utility function for (tail - head)
		(readonly)
	**/
	var vector(default, never) : Dynamic;
	/**
		Vector pointing down the x-axis of the bone.
		(readonly)
	**/
	var x_axis(default, never) : Dynamic;
	/**
		Vector pointing down the y-axis of the bone.
		(readonly)
	**/
	var y_axis(default, never) : Dynamic;
	/**
		Vector pointing down the z-axis of the bone.
		(readonly)
	**/
	var z_axis(default, never) : Dynamic;
	/**
		Calculate bone envelope at given point
		@param point Point, Position in 3d space to evaluate — float array of 3 items in [-inf, inf]
		
		@returns float in [-inf, inf]
	**/
	function evaluate_envelope(point:Array<Float>):Float;
	/**
		Retrieve the matrix of the B-Bone segment if available
		@param index Index of the segment — int in [0, inf]
		@param rest Return the rest pose matrix — boolean, (optional)
		
		@returns float multi-dimensional array of 4 * 4 items in [-inf, inf]
	**/
	function bbone_segment_matrix(index:Int, rest:Bool):Array<Float>;
	/**
		Retrieve the vectors and rolls coming from B-Bone custom handles
		@param rest Return the rest pose state — boolean, (optional)
		@param ease Apply scale from ease values — boolean, (optional)
		@param offsets Apply roll and curve offsets from bone properties — boolean, (optional)
	**/
	function compute_bbone_handles(rest:Bool, ease:Bool, offsets:Bool):Void;
	/**
		The same as ‘bone in other_bone.parent_recursive’
		but saved generating a list.
	**/
	function parent_index():Void;
	/**
		Utility function to add vec to the head and tail of this bone
	**/
	function translate():Void;
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