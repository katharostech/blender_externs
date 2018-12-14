package bpy.ops.constraint;
/**
	Constraint Operators
**/
@:pythonImport("bpy.ops.constraint") extern class Module {
	/**
		Add a target to the constraint
	**/
	static function add_target():Void;
	/**
		Clear inverse correction for ChildOf constraint
		@param constraint Constraint, Name of the constraint to edit — string, (optional, never None)
		@param owner Owner, The owner of this constraintOBJECT Object, Edit a constraint on the active object.BONE Bone, Edit a constraint on the active bone. — enum in ['OBJECT', 'BONE'], (optional)
	**/
	static function childof_clear_inverse(constraint:String, owner:bpy.ops.constraint.Constraint.Enum1):Void;
	/**
		Set inverse correction for ChildOf constraint
		@param constraint Constraint, Name of the constraint to edit — string, (optional, never None)
		@param owner Owner, The owner of this constraintOBJECT Object, Edit a constraint on the active object.BONE Bone, Edit a constraint on the active bone. — enum in ['OBJECT', 'BONE'], (optional)
	**/
	static function childof_set_inverse(constraint:String, owner:bpy.ops.constraint.Constraint.Enum2):Void;
	/**
		Remove constraint from constraint stack
	**/
	static function delete():Void;
	/**
		Add default animation for path used by constraint if it isn’t animated already
		@param constraint Constraint, Name of the constraint to edit — string, (optional, never None)
		@param owner Owner, The owner of this constraintOBJECT Object, Edit a constraint on the active object.BONE Bone, Edit a constraint on the active bone. — enum in ['OBJECT', 'BONE'], (optional)
		@param frame_start Start Frame, First frame of path animation — int in [-1048574, 1048574], (optional)
		@param length Length, Number of frames that path animation should take — int in [0, 1048574], (optional)
	**/
	static function followpath_path_animate(constraint:String, owner:bpy.ops.constraint.Constraint.Enum3, frame_start:Int, length:Int):Void;
	/**
		Reset limiting distance for Limit Distance Constraint
		@param constraint Constraint, Name of the constraint to edit — string, (optional, never None)
		@param owner Owner, The owner of this constraintOBJECT Object, Edit a constraint on the active object.BONE Bone, Edit a constraint on the active bone. — enum in ['OBJECT', 'BONE'], (optional)
	**/
	static function limitdistance_reset(constraint:String, owner:bpy.ops.constraint.Constraint.Enum4):Void;
	/**
		Move constraint down in constraint stack
		@param constraint Constraint, Name of the constraint to edit — string, (optional, never None)
		@param owner Owner, The owner of this constraintOBJECT Object, Edit a constraint on the active object.BONE Bone, Edit a constraint on the active bone. — enum in ['OBJECT', 'BONE'], (optional)
	**/
	static function move_down(constraint:String, owner:bpy.ops.constraint.Constraint.Enum5):Void;
	/**
		Move constraint up in constraint stack
		@param constraint Constraint, Name of the constraint to edit — string, (optional, never None)
		@param owner Owner, The owner of this constraintOBJECT Object, Edit a constraint on the active object.BONE Bone, Edit a constraint on the active bone. — enum in ['OBJECT', 'BONE'], (optional)
	**/
	static function move_up(constraint:String, owner:bpy.ops.constraint.Constraint.Enum6):Void;
	/**
		Normalize weights of all target bones
	**/
	static function normalize_target_weights():Void;
	/**
		Clear inverse correction for ObjectSolver constraint
		@param constraint Constraint, Name of the constraint to edit — string, (optional, never None)
		@param owner Owner, The owner of this constraintOBJECT Object, Edit a constraint on the active object.BONE Bone, Edit a constraint on the active bone. — enum in ['OBJECT', 'BONE'], (optional)
	**/
	static function objectsolver_clear_inverse(constraint:String, owner:bpy.ops.constraint.Constraint.Enum7):Void;
	/**
		Set inverse correction for ObjectSolver constraint
		@param constraint Constraint, Name of the constraint to edit — string, (optional, never None)
		@param owner Owner, The owner of this constraintOBJECT Object, Edit a constraint on the active object.BONE Bone, Edit a constraint on the active bone. — enum in ['OBJECT', 'BONE'], (optional)
	**/
	static function objectsolver_set_inverse(constraint:String, owner:bpy.ops.constraint.Constraint.Enum8):Void;
	/**
		Remove the target from the constraint
		@param index index — int in [-inf, inf], (optional)
	**/
	static function remove_target(index:Int):Void;
	/**
		Reset original length of bone for Stretch To Constraint
		@param constraint Constraint, Name of the constraint to edit — string, (optional, never None)
		@param owner Owner, The owner of this constraintOBJECT Object, Edit a constraint on the active object.BONE Bone, Edit a constraint on the active bone. — enum in ['OBJECT', 'BONE'], (optional)
	**/
	static function stretchto_reset(constraint:String, owner:bpy.ops.constraint.Constraint.Enum9):Void;
}