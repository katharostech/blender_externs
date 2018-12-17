package bpy.types.editbone;
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
	Editmode bone in an Armature data-block
**/
@:native("bpy.types.EditBone") extern class EditBone {
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
		
		Type: EditBone
	**/
	var bbone_custom_handle_end : bpy.types.editbone.EditBone;
	/**
		Bone that serves as the start handle for the B-Bone curve
		
		Type: EditBone
	**/
	var bbone_custom_handle_start : bpy.types.editbone.EditBone;
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
	var bbone_handle_type_end : bpy.types.editbone.EditBone.Enum1;
	/**
		Selects how the start handle of the B-Bone is computed
		
		Type: enum in [‘AUTO’, ‘ABSOLUTE’, ‘RELATIVE’, ‘TANGENT’], default ‘AUTO’
	**/
	var bbone_handle_type_start : bpy.types.editbone.EditBone.Enum2;
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
		Location of head end of the bone
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var head : Array<Float>;
	/**
		Radius of head of bone (for Envelope deform only)
		
		Type: float in [0, inf], default 0.0
	**/
	var head_radius : Float;
	/**
		Bone is not visible when in Edit Mode
		
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
		Bone is not able to be transformed when in Edit Mode
		
		Type: boolean, default False
	**/
	var lock : Bool;
	/**
		Matrix combining loc/rot of the bone (head position, direction and roll), in armature space (WARNING: does not include/support bone’s length/size)
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix : Array<Float>;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Parent edit bone (in same Armature)
		
		Type: EditBone
	**/
	var parent : bpy.types.editbone.EditBone;
	/**
		Bone rotation around head-tail axis
		
		Type: float in [-inf, inf], default 0.0
	**/
	var roll : Float;
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
		Radius of tail of bone (for Envelope deform only)
		
		Type: float in [0, inf], default 0.0
	**/
	var tail_radius : Float;
	/**
		When bone has a parent, bone’s head is stuck to the parent’s tail
		
		Type: boolean, default False
	**/
	var use_connect : Bool;
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
		A list of all the bones children. Warning: takes O(len(bones)) time.
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
		Align the bone to a localspace roll so the Z axis points in the direction of the vector given
		@param vector Vector — float array of 3 items in [-inf, inf]
	**/
	function align_roll(vector:Array<Float>):Void;
	/**
		Align this bone to another by moving its tail and settings its roll
		the length of the other bone is not used.
	**/
	function align_orientation(other:Dynamic):Void;
	/**
		The same as ‘bone in other_bone.parent_recursive’
		but saved generating a list.
	**/
	function parent_index(parent_test:Dynamic):Void;
	/**
		Transform the the bones head, tail, roll and envelope
		(when the matrix has a scale component).
		@param matrix 3x3 or 4x4 transformation matrix. — mathutils.Matrix
		@param scale Scale the bone envelope by the matrix. — bool
		@param roll Correct the roll to point in the same relative
		                                                direction to the head and tail. — bool
	**/
	function transform(matrix:Dynamic, scale:Dynamic, roll:Dynamic):Void;
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