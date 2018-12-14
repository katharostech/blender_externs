package bpy.types.objectconstraints;
@:enum abstract Enum1(String) from String to String {
	var CAMERA_SOLVER : String = "CAMERA_SOLVER";
	var FOLLOW_TRACK : String = "FOLLOW_TRACK";
	var OBJECT_SOLVER : String = "OBJECT_SOLVER";
	var COPY_LOCATION : String = "COPY_LOCATION";
	var COPY_ROTATION : String = "COPY_ROTATION";
	var COPY_SCALE : String = "COPY_SCALE";
	var COPY_TRANSFORMS : String = "COPY_TRANSFORMS";
	var LIMIT_DISTANCE : String = "LIMIT_DISTANCE";
	var LIMIT_LOCATION : String = "LIMIT_LOCATION";
	var LIMIT_ROTATION : String = "LIMIT_ROTATION";
	var LIMIT_SCALE : String = "LIMIT_SCALE";
	var MAINTAIN_VOLUME : String = "MAINTAIN_VOLUME";
	var TRANSFORM : String = "TRANSFORM";
	var TRANSFORM_CACHE : String = "TRANSFORM_CACHE";
	var CLAMP_TO : String = "CLAMP_TO";
	var DAMPED_TRACK : String = "DAMPED_TRACK";
	var IK : String = "IK";
	var LOCKED_TRACK : String = "LOCKED_TRACK";
	var SPLINE_IK : String = "SPLINE_IK";
	var STRETCH_TO : String = "STRETCH_TO";
	var TRACK_TO : String = "TRACK_TO";
	var ACTION : String = "ACTION";
	var CHILD_OF : String = "CHILD_OF";
	var FLOOR : String = "FLOOR";
	var FOLLOW_PATH : String = "FOLLOW_PATH";
	var PIVOT : String = "PIVOT";
	var SHRINKWRAP : String = "SHRINKWRAP";
	var ARMATURE : String = "ARMATURE";
}/**
	Collection of object constraints
**/
@:pythonImport("bpy.types.ObjectConstraints") extern class ObjectConstraints {
	/**
		Active Object constraint
		
		Type: Constraint
	**/
	var active : bpy.types.constraint.Constraint;
	/**
		Add a new constraint to this object
		@param type Constraint type to addCAMERA_SOLVER Camera Solver.FOLLOW_TRACK Follow Track.OBJECT_SOLVER Object Solver.COPY_LOCATION Copy Location, Copy the location of a target (with an optional offset), so that they move together.COPY_ROTATION Copy Rotation, Copy the rotation of a target (with an optional offset), so that they rotate together.COPY_SCALE Copy Scale, Copy the scale factors of a target (with an optional offset), so that they are scaled by the same amount.COPY_TRANSFORMS Copy Transforms, Copy all the transformations of a target, so that they move together.LIMIT_DISTANCE Limit Distance, Restrict movements to within a certain distance of a target (at the time of constraint evaluation only).LIMIT_LOCATION Limit Location, Restrict movement along each axis within given ranges.LIMIT_ROTATION Limit Rotation, Restrict rotation along each axis within given ranges.LIMIT_SCALE Limit Scale, Restrict scaling along each axis with given ranges.MAINTAIN_VOLUME Maintain Volume, Compensate for scaling one axis by applying suitable scaling to the other two axes.TRANSFORM Transformation, Use one transform property from target to control another (or same) property on owner.TRANSFORM_CACHE Transform Cache, Look up the transformation matrix from an external file.CLAMP_TO Clamp To, Restrict movements to lie along a curve by remapping location along curve’s longest axis.DAMPED_TRACK Damped Track, Point towards a target by performing the smallest rotation necessary.IK Inverse Kinematics, Control a chain of bones by specifying the endpoint target (Bones only).LOCKED_TRACK Locked Track, Rotate around the specified (‘locked’) axis to point towards a target.SPLINE_IK Spline IK, Align chain of bones along a curve (Bones only).STRETCH_TO Stretch To, Stretch along Y-Axis to point towards a target.TRACK_TO Track To, Legacy tracking constraint prone to twisting artifacts.ACTION Action, Use transform property of target to look up pose for owner from an Action.CHILD_OF Child Of, Make target the ‘detachable’ parent of owner.FLOOR Floor, Use position (and optionally rotation) of target to define a ‘wall’ or ‘floor’ that the owner can not cross.FOLLOW_PATH Follow Path, Use to animate an object/bone following a path.PIVOT Pivot, Change pivot point for transforms (buggy).SHRINKWRAP Shrinkwrap, Restrict movements to surface of target mesh.ARMATURE Armature, Apply weight-blended transformation from multiple bones like the Armature modifier. — enum in ['CAMERA_SOLVER', 'FOLLOW_TRACK', 'OBJECT_SOLVER', 'COPY_LOCATION', 'COPY_ROTATION', 'COPY_SCALE', 'COPY_TRANSFORMS', 'LIMIT_DISTANCE', 'LIMIT_LOCATION', 'LIMIT_ROTATION', 'LIMIT_SCALE', 'MAINTAIN_VOLUME', 'TRANSFORM', 'TRANSFORM_CACHE', 'CLAMP_TO', 'DAMPED_TRACK', 'IK', 'LOCKED_TRACK', 'SPLINE_IK', 'STRETCH_TO', 'TRACK_TO', 'ACTION', 'CHILD_OF', 'FLOOR', 'FOLLOW_PATH', 'PIVOT', 'SHRINKWRAP', 'ARMATURE']
		
		@returns Constraint
	**/
	function new(type:bpy.types.objectconstraints.ObjectConstraints.Enum1):bpy.types.constraint.Constraint;
	/**
		Remove a constraint from this object
		@param constraint Removed constraint — Constraint, (never None)
	**/
	function remove(constraint:Dynamic):Void;
	/**
		Remove all constraint from this object
	**/
	function clear():Void;
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