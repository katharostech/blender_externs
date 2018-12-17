package bpy.types.bone;
@:enum abstract Enum1(String) from String to String {
	var AUTO : String = "AUTO";
	var ABSOLUTE : String = "ABSOLUTE";
	var RELATIVE : String = "RELATIVE";
	var TANGENT : String = "TANGENT";
}@:enum abstract Enum2(String) from String to String {
	var AUTO : String = "AUTO";
	var ABSOLUTE : String = "ABSOLUTE";
	var RELATIVE : String = "RELATIVE";
	var TANGENT : String = "TANGENT";
}/**
	Bone in an Armature data-block
**/
@:native("bpy.types.Bone") extern class Bone {
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
		
		Type: Bone
	**/
	var bbone_custom_handle_end : bpy.types.bone.Bone;
	/**
		Bone that serves as the start handle for the B-Bone curve
		
		Type: Bone
	**/
	var bbone_custom_handle_start : bpy.types.bone.Bone;
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
		Selects how the end handle of the B-Bone is computed
		
		Type: enum in [‘AUTO’, ‘ABSOLUTE’, ‘RELATIVE’, ‘TANGENT’], default ‘AUTO’
	**/
	var bbone_handle_type_end : bpy.types.bone.Bone.Enum1;
	/**
		Selects how the start handle of the B-Bone is computed
		
		Type: enum in [‘AUTO’, ‘ABSOLUTE’, ‘RELATIVE’, ‘TANGENT’], default ‘AUTO’
	**/
	var bbone_handle_type_start : bpy.types.bone.Bone.Enum2;
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
		Number of subdivisions of bone (for B-Bones only)
		
		Type: int in [1, 32], default 0
	**/
	var bbone_segments : Int;
	/**
		B-Bone X size
		
		Type: float in [0, 1000], default 0.0
	**/
	var bbone_x : Float;
	/**
		B-Bone Z size
		
		Type: float in [0, 1000], default 0.0
	**/
	var bbone_z : Float;
	/**
		Bones which are children of this bone
		
		Type: bpy_prop_collection of Bone, (readonly)
	**/
	var children(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Bone deformation distance (for Envelope deform only)
		
		Type: float in [0, 1000], default 0.0
	**/
	var envelope_distance : Float;
	/**
		Bone deformation weight (for Envelope deform only)
		
		Type: float in [0, 1000], default 0.0
	**/
	var envelope_weight : Float;
	/**
		Location of head end of the bone relative to its parent
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var head : Array<Float>;
	/**
		Location of head end of the bone relative to armature
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var head_local : Array<Float>;
	/**
		Radius of head of bone (for Envelope deform only)
		
		Type: float in [0, inf], default 0.0
	**/
	var head_radius : Float;
	/**
		Bone is not visible when it is not in Edit Mode (i.e. in Object or Pose Modes)
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		Bone is able to be selected
		
		Type: boolean, default False
	**/
	var hide_select : Bool;
	/**
		Layers bone exists in
		
		Type: boolean array of 32 items, default (False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False)
	**/
	var layers : Array<Bool>;
	/**
		3x3 bone matrix
		
		Type: float multi-dimensional array of 3 * 3 items in [-inf, inf], default ((0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0))
	**/
	var matrix : Array<Float>;
	/**
		4x4 bone matrix relative to armature
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix_local : Array<Float>;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Parent bone (in same Armature)
		
		Type: Bone, (readonly)
	**/
	var parent(default, never) : bpy.types.bone.Bone;
	/**
		
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var select_head : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var select_tail : Bool;
	/**
		Bone is always drawn as Wireframe regardless of viewport draw mode (useful for non-obstructive custom bone shapes)
		
		Type: boolean, default False
	**/
	var show_wire : Bool;
	/**
		Location of tail end of the bone
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var tail : Array<Float>;
	/**
		Location of tail end of the bone relative to armature
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var tail_local : Array<Float>;
	/**
		Radius of tail of bone (for Envelope deform only)
		
		Type: float in [0, inf], default 0.0
	**/
	var tail_radius : Float;
	/**
		When bone has a parent, bone’s head is stuck to the parent’s tail
		
		Type: boolean, default False, (readonly)
	**/
	var use_connect(default, never) : Bool;
	/**
		When bone doesn’t have a parent, it receives cyclic offset effects (Deprecated)
		
		Type: boolean, default False
	**/
	var use_cyclic_offset : Bool;
	/**
		Enable Bone to deform geometry
		
		Type: boolean, default False
	**/
	var use_deform : Bool;
	/**
		Use Roll Out of parent bone as Roll In of its children
		
		Type: boolean, default False
	**/
	var use_endroll_as_inroll : Bool;
	/**
		When deforming bone, multiply effects of Vertex Group weights with Envelope influence
		
		Type: boolean, default False
	**/
	var use_envelope_multiply : Bool;
	/**
		Bone inherits rotation or scale from parent bone
		
		Type: boolean, default False
	**/
	var use_inherit_rotation : Bool;
	/**
		Bone inherits scaling from parent bone
		
		Type: boolean, default False
	**/
	var use_inherit_scale : Bool;
	/**
		Bone location is set in local space
		
		Type: boolean, default False
	**/
	var use_local_location : Bool;
	/**
		Object children will use relative transform, like deform
		
		Type: boolean, default False
	**/
	var use_relative_parent : Bool;
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
		Convert the axis + roll representation to a matrix
		@param axis The main axis of the bone (tail - head) — float array of 3 items in [-inf, inf], (never None)
		@param roll The roll of the bone — float in [-inf, inf]
		
		@returns float multi-dimensional array of 3 * 3 items in [-inf, inf]
	**/
	static function MatrixFromAxisRoll(axis:Array<Float>, roll:Float):Array<Float>;
	/**
		Convert a rotational matrix to the axis + roll representation
		@param matrix The orientation matrix of the bone — float multi-dimensional array of 3 * 3 items in [-inf, inf], (never None)
		@param axis The optional override for the axis (finds closest approximation for the matrix) — float array of 3 items in [-inf, inf], (optional)
	**/
	static function AxisRollFromMatrix(matrix:Array<Float>, axis:Array<Float>):Void;
	/**
		The same as ‘bone in other_bone.parent_recursive’
		but saved generating a list.
	**/
	function parent_index(parent_test:Dynamic):Void;
	/**
		Utility function to add vec to the head and tail of this bone
	**/
	function translate(vec:Dynamic):Void;
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