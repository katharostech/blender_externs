package bpy.ops.pose;
/**
	Pose Operators
**/
@:pythonImport("bpy.ops.pose") extern class Module {
	/**
		Apply the current pose as the new rest pose
	**/
	static function armature_apply():Void;
	/**
		Automatically renames the selected bones according to which side of the target axis they fall on
		@param axis Axis, Axis tag names withXAXIS X-Axis, Left/Right.YAXIS Y-Axis, Front/Back.ZAXIS Z-Axis, Top/Bottom. — enum in ['XAXIS', 'YAXIS', 'ZAXIS'], (optional)
	**/
	static function autoside_names(axis:bpy.ops.pose.Pose.Enum1):Void;
	/**
		Change the layers that the selected bones belong to
		@param layers Layer, Armature layers that bone belongs to — boolean array of 32 items, (optional)
	**/
	static function bone_layers(layers:Array<Bool>):Void;
	/**
		Create a suitable breakdown pose on the current frame
		@param percentage Percentage, Weighting factor for which keyframe is favored more — float in [0, 1], (optional)
		@param prev_frame Previous Keyframe, Frame number of keyframe immediately before the current frame — int in [-1048574, 1048574], (optional)
		@param next_frame Next Keyframe, Frame number of keyframe immediately after the current frame — int in [-1048574, 1048574], (optional)
		@param channels Channels, Set of properties that are affectedALL All Properties, All properties, including transforms, bendy bone shape, and custom properties.LOC Location, Location only.ROT Rotation, Rotation only.SIZE Scale, Scale only.BBONE Bendy Bone, Bendy Bone shape properties.CUSTOM Custom Properties, Custom properties. — enum in ['ALL', 'LOC', 'ROT', 'SIZE', 'BBONE', 'CUSTOM'], (optional)
		@param axis_lock Axis Lock, Transform axis to restrict effects toFREE Free, All axes are affected.X X, Only X-axis transforms are affected.Y Y, Only Y-axis transforms are affected.Z Z, Only Z-axis transforms are affected. — enum in ['FREE', 'X', 'Y', 'Z'], (optional)
	**/
	static function breakdown(percentage:Float, prev_frame:Int, next_frame:Int, channels:bpy.ops.pose.Pose.Enum2, axis_lock:bpy.ops.pose.Pose.Enum3):Void;
	/**
		Add a constraint to the active bone
		@param type TypeCAMERA_SOLVER Camera Solver.FOLLOW_TRACK Follow Track.OBJECT_SOLVER Object Solver.COPY_LOCATION Copy Location, Copy the location of a target (with an optional offset), so that they move together.COPY_ROTATION Copy Rotation, Copy the rotation of a target (with an optional offset), so that they rotate together.COPY_SCALE Copy Scale, Copy the scale factors of a target (with an optional offset), so that they are scaled by the same amount.COPY_TRANSFORMS Copy Transforms, Copy all the transformations of a target, so that they move together.LIMIT_DISTANCE Limit Distance, Restrict movements to within a certain distance of a target (at the time of constraint evaluation only).LIMIT_LOCATION Limit Location, Restrict movement along each axis within given ranges.LIMIT_ROTATION Limit Rotation, Restrict rotation along each axis within given ranges.LIMIT_SCALE Limit Scale, Restrict scaling along each axis with given ranges.MAINTAIN_VOLUME Maintain Volume, Compensate for scaling one axis by applying suitable scaling to the other two axes.TRANSFORM Transformation, Use one transform property from target to control another (or same) property on owner.TRANSFORM_CACHE Transform Cache, Look up the transformation matrix from an external file.CLAMP_TO Clamp To, Restrict movements to lie along a curve by remapping location along curve’s longest axis.DAMPED_TRACK Damped Track, Point towards a target by performing the smallest rotation necessary.IK Inverse Kinematics, Control a chain of bones by specifying the endpoint target (Bones only).LOCKED_TRACK Locked Track, Rotate around the specified (‘locked’) axis to point towards a target.SPLINE_IK Spline IK, Align chain of bones along a curve (Bones only).STRETCH_TO Stretch To, Stretch along Y-Axis to point towards a target.TRACK_TO Track To, Legacy tracking constraint prone to twisting artifacts.ACTION Action, Use transform property of target to look up pose for owner from an Action.CHILD_OF Child Of, Make target the ‘detachable’ parent of owner.FLOOR Floor, Use position (and optionally rotation) of target to define a ‘wall’ or ‘floor’ that the owner can not cross.FOLLOW_PATH Follow Path, Use to animate an object/bone following a path.PIVOT Pivot, Change pivot point for transforms (buggy).SHRINKWRAP Shrinkwrap, Restrict movements to surface of target mesh.ARMATURE Armature, Apply weight-blended transformation from multiple bones like the Armature modifier. — enum in ['CAMERA_SOLVER', 'FOLLOW_TRACK', 'OBJECT_SOLVER', 'COPY_LOCATION', 'COPY_ROTATION', 'COPY_SCALE', 'COPY_TRANSFORMS', 'LIMIT_DISTANCE', 'LIMIT_LOCATION', 'LIMIT_ROTATION', 'LIMIT_SCALE', 'MAINTAIN_VOLUME', 'TRANSFORM', 'TRANSFORM_CACHE', 'CLAMP_TO', 'DAMPED_TRACK', 'IK', 'LOCKED_TRACK', 'SPLINE_IK', 'STRETCH_TO', 'TRACK_TO', 'ACTION', 'CHILD_OF', 'FLOOR', 'FOLLOW_PATH', 'PIVOT', 'SHRINKWRAP', 'ARMATURE'], (optional)
	**/
	static function constraint_add(type:bpy.ops.pose.Pose.Enum4):Void;
	/**
		Add a constraint to the active bone, with target (where applicable) set to the selected Objects/Bones
		@param type TypeCAMERA_SOLVER Camera Solver.FOLLOW_TRACK Follow Track.OBJECT_SOLVER Object Solver.COPY_LOCATION Copy Location, Copy the location of a target (with an optional offset), so that they move together.COPY_ROTATION Copy Rotation, Copy the rotation of a target (with an optional offset), so that they rotate together.COPY_SCALE Copy Scale, Copy the scale factors of a target (with an optional offset), so that they are scaled by the same amount.COPY_TRANSFORMS Copy Transforms, Copy all the transformations of a target, so that they move together.LIMIT_DISTANCE Limit Distance, Restrict movements to within a certain distance of a target (at the time of constraint evaluation only).LIMIT_LOCATION Limit Location, Restrict movement along each axis within given ranges.LIMIT_ROTATION Limit Rotation, Restrict rotation along each axis within given ranges.LIMIT_SCALE Limit Scale, Restrict scaling along each axis with given ranges.MAINTAIN_VOLUME Maintain Volume, Compensate for scaling one axis by applying suitable scaling to the other two axes.TRANSFORM Transformation, Use one transform property from target to control another (or same) property on owner.TRANSFORM_CACHE Transform Cache, Look up the transformation matrix from an external file.CLAMP_TO Clamp To, Restrict movements to lie along a curve by remapping location along curve’s longest axis.DAMPED_TRACK Damped Track, Point towards a target by performing the smallest rotation necessary.IK Inverse Kinematics, Control a chain of bones by specifying the endpoint target (Bones only).LOCKED_TRACK Locked Track, Rotate around the specified (‘locked’) axis to point towards a target.SPLINE_IK Spline IK, Align chain of bones along a curve (Bones only).STRETCH_TO Stretch To, Stretch along Y-Axis to point towards a target.TRACK_TO Track To, Legacy tracking constraint prone to twisting artifacts.ACTION Action, Use transform property of target to look up pose for owner from an Action.CHILD_OF Child Of, Make target the ‘detachable’ parent of owner.FLOOR Floor, Use position (and optionally rotation) of target to define a ‘wall’ or ‘floor’ that the owner can not cross.FOLLOW_PATH Follow Path, Use to animate an object/bone following a path.PIVOT Pivot, Change pivot point for transforms (buggy).SHRINKWRAP Shrinkwrap, Restrict movements to surface of target mesh.ARMATURE Armature, Apply weight-blended transformation from multiple bones like the Armature modifier. — enum in ['CAMERA_SOLVER', 'FOLLOW_TRACK', 'OBJECT_SOLVER', 'COPY_LOCATION', 'COPY_ROTATION', 'COPY_SCALE', 'COPY_TRANSFORMS', 'LIMIT_DISTANCE', 'LIMIT_LOCATION', 'LIMIT_ROTATION', 'LIMIT_SCALE', 'MAINTAIN_VOLUME', 'TRANSFORM', 'TRANSFORM_CACHE', 'CLAMP_TO', 'DAMPED_TRACK', 'IK', 'LOCKED_TRACK', 'SPLINE_IK', 'STRETCH_TO', 'TRACK_TO', 'ACTION', 'CHILD_OF', 'FLOOR', 'FOLLOW_PATH', 'PIVOT', 'SHRINKWRAP', 'ARMATURE'], (optional)
	**/
	static function constraint_add_with_targets(type:bpy.ops.pose.Pose.Enum5):Void;
	/**
		Clear all the constraints for the selected bones
	**/
	static function constraints_clear():Void;
	/**
		Copy constraints to other selected bones
	**/
	static function constraints_copy():Void;
	/**
		Copies the current pose of the selected bones to copy/paste buffer
	**/
	static function copy():Void;
	/**
		Flips (and corrects) the axis suffixes of the names of selected bones
		@param do_strip_numbers Strip Numbers, Try to remove right-most dot-number from flipped names (WARNING: may result in incoherent naming in some cases) — boolean, (optional)
	**/
	static function flip_names(do_strip_numbers:Bool):Void;
	/**
		Add a new bone group
	**/
	static function group_add():Void;
	/**
		Add selected bones to the chosen bone group
		@param type Bone Group Index — int in [0, inf], (optional)
	**/
	static function group_assign(type:Int):Void;
	/**
		Deselect bones of active Bone Group
	**/
	static function group_deselect():Void;
	/**
		Change position of active Bone Group in list of Bone Groups
		@param direction Direction, Direction to move the active Bone Group towards — enum in ['UP', 'DOWN'], (optional)
	**/
	static function group_move(direction:bpy.ops.pose.Pose.Enum6):Void;
	/**
		Remove the active bone group
	**/
	static function group_remove():Void;
	/**
		Select bones in active Bone Group
	**/
	static function group_select():Void;
	/**
		Sort Bone Groups by their names in ascending order
	**/
	static function group_sort():Void;
	/**
		Remove selected bones from all bone groups
	**/
	static function group_unassign():Void;
	/**
		Tag selected bones to not be visible in Pose Mode
		@param unselected Unselected — boolean, (optional)
	**/
	static function hide(unselected:Bool):Void;
	/**
		Add IK Constraint to the active Bone
		@param with_targets With Targets, Assign IK Constraint with targets derived from the select bones/objects — boolean, (optional)
	**/
	static function ik_add(with_targets:Bool):Void;
	/**
		Remove all IK Constraints from selected bones
	**/
	static function ik_clear():Void;
	/**
		Reset locations of selected bones to their default values
	**/
	static function loc_clear():Void;
	/**
		Paste the stored pose on to the current pose
		@param flipped Flipped on X-Axis, Paste the stored pose flipped on to current pose — boolean, (optional)
		@param selected_mask On Selected Only, Only paste the stored pose on to selected bones in the current pose — boolean, (optional)
	**/
	static function paste(flipped:Bool, selected_mask:Bool):Void;
	/**
		Calculate paths for the selected bones
		@param start_frame Start, First frame to calculate bone paths on — int in [-1048574, 1048574], (optional)
		@param end_frame End, Last frame to calculate bone paths on — int in [-1048574, 1048574], (optional)
		@param bake_location Bake Location, Which point on the bones is used when calculating pathsHEADS Heads, Calculate bone paths from heads.TAILS Tails, Calculate bone paths from tails. — enum in ['HEADS', 'TAILS'], (optional)
	**/
	static function paths_calculate(start_frame:Int, end_frame:Int, bake_location:bpy.ops.pose.Pose.Enum7):Void;
	/**
		Clear path caches for all bones, hold Shift key for selected bones only
		@param only_selected Only Selected, Only clear paths from selected bones — boolean, (optional)
	**/
	static function paths_clear(only_selected:Bool):Void;
	/**
		Update frame range for motion paths from the Scene’s current frame range
	**/
	static function paths_range_update():Void;
	/**
		Recalculate paths for bones that already have them
	**/
	static function paths_update():Void;
	/**
		Copy selected aspects of the current pose to subsequent poses already keyframed
		@param mode Terminate Mode, Method used to determine when to stop propagating pose to keyframesWHILE_HELD While Held, Propagate pose to all keyframes after current frame that don’t change (Default behavior).NEXT_KEY To Next Keyframe, Propagate pose to first keyframe following the current frame only.LAST_KEY To Last Keyframe, Propagate pose to the last keyframe only (i.e. making action cyclic).BEFORE_FRAME Before Frame, Propagate pose to all keyframes between current frame and ‘Frame’ property.BEFORE_END Before Last Keyframe, Propagate pose to all keyframes from current frame until no more are found.SELECTED_KEYS On Selected Keyframes, Propagate pose to all selected keyframes.SELECTED_MARKERS On Selected Markers, Propagate pose to all keyframes occurring on frames with Scene Markers after the current frame. — enum in ['WHILE_HELD', 'NEXT_KEY', 'LAST_KEY', 'BEFORE_FRAME', 'BEFORE_END', 'SELECTED_KEYS', 'SELECTED_MARKERS'], (optional)
		@param end_frame End Frame, Frame to stop propagating frames to (for ‘Before Frame’ mode) — float in [1.17549e-38, inf], (optional)
	**/
	static function propagate(mode:bpy.ops.pose.Pose.Enum8, end_frame:Float):Void;
	/**
		Exaggerate the current pose
		@param percentage Percentage, Weighting factor for which keyframe is favored more — float in [0, 1], (optional)
		@param prev_frame Previous Keyframe, Frame number of keyframe immediately before the current frame — int in [-1048574, 1048574], (optional)
		@param next_frame Next Keyframe, Frame number of keyframe immediately after the current frame — int in [-1048574, 1048574], (optional)
		@param channels Channels, Set of properties that are affectedALL All Properties, All properties, including transforms, bendy bone shape, and custom properties.LOC Location, Location only.ROT Rotation, Rotation only.SIZE Scale, Scale only.BBONE Bendy Bone, Bendy Bone shape properties.CUSTOM Custom Properties, Custom properties. — enum in ['ALL', 'LOC', 'ROT', 'SIZE', 'BBONE', 'CUSTOM'], (optional)
		@param axis_lock Axis Lock, Transform axis to restrict effects toFREE Free, All axes are affected.X X, Only X-axis transforms are affected.Y Y, Only Y-axis transforms are affected.Z Z, Only Z-axis transforms are affected. — enum in ['FREE', 'X', 'Y', 'Z'], (optional)
	**/
	static function push(percentage:Float, prev_frame:Int, next_frame:Int, channels:bpy.ops.pose.Pose.Enum9, axis_lock:bpy.ops.pose.Pose.Enum10):Void;
	/**
		Flip quaternion values to achieve desired rotations, while maintaining the same orientations
	**/
	static function quaternions_flip():Void;
	/**
		Make the current pose more similar to its surrounding ones
		@param percentage Percentage, Weighting factor for which keyframe is favored more — float in [0, 1], (optional)
		@param prev_frame Previous Keyframe, Frame number of keyframe immediately before the current frame — int in [-1048574, 1048574], (optional)
		@param next_frame Next Keyframe, Frame number of keyframe immediately after the current frame — int in [-1048574, 1048574], (optional)
		@param channels Channels, Set of properties that are affectedALL All Properties, All properties, including transforms, bendy bone shape, and custom properties.LOC Location, Location only.ROT Rotation, Rotation only.SIZE Scale, Scale only.BBONE Bendy Bone, Bendy Bone shape properties.CUSTOM Custom Properties, Custom properties. — enum in ['ALL', 'LOC', 'ROT', 'SIZE', 'BBONE', 'CUSTOM'], (optional)
		@param axis_lock Axis Lock, Transform axis to restrict effects toFREE Free, All axes are affected.X X, Only X-axis transforms are affected.Y Y, Only Y-axis transforms are affected.Z Z, Only Z-axis transforms are affected. — enum in ['FREE', 'X', 'Y', 'Z'], (optional)
	**/
	static function relax(percentage:Float, prev_frame:Int, next_frame:Int, channels:bpy.ops.pose.Pose.Enum11, axis_lock:bpy.ops.pose.Pose.Enum12):Void;
	/**
		Reveal all bones hidden in Pose Mode
		@param select Select — boolean, (optional)
	**/
	static function reveal(select:Bool):Void;
	/**
		Reset rotations of selected bones to their default values
	**/
	static function rot_clear():Void;
	/**
		Set the rotation representation used by selected bones
		@param type Rotation ModeQUATERNION Quaternion (WXYZ), No Gimbal Lock (default).XYZ XYZ Euler, XYZ Rotation Order (prone to Gimbal Lock).XZY XZY Euler, XZY Rotation Order (prone to Gimbal Lock).YXZ YXZ Euler, YXZ Rotation Order (prone to Gimbal Lock).YZX YZX Euler, YZX Rotation Order (prone to Gimbal Lock).ZXY ZXY Euler, ZXY Rotation Order (prone to Gimbal Lock).ZYX ZYX Euler, ZYX Rotation Order (prone to Gimbal Lock).AXIS_ANGLE Axis Angle, Axis Angle (W+XYZ), defines a rotation around some axis defined by 3D-Vector. — enum in ['QUATERNION', 'XYZ', 'XZY', 'YXZ', 'YZX', 'ZXY', 'ZYX', 'AXIS_ANGLE'], (optional)
	**/
	static function rotation_mode_set(type:bpy.ops.pose.Pose.Enum13):Void;
	/**
		Reset scaling of selected bones to their default values
	**/
	static function scale_clear():Void;
	/**
		Toggle selection status of all bones
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.pose.Pose.Enum14):Void;
	/**
		Select bones used as targets for the currently selected bones
	**/
	static function select_constraint_target():Void;
	/**
		Select all visible bones grouped by similar properties
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param type TypeLAYER Layer, Shared layers.GROUP Group, Shared group.KEYINGSET Keying Set, All bones affected by active Keying Set. — enum in ['LAYER', 'GROUP', 'KEYINGSET'], (optional)
	**/
	static function select_grouped(extend:Bool, type:bpy.ops.pose.Pose.Enum15):Void;
	/**
		Select immediate parent/children of selected bones
		@param direction Direction — enum in ['PARENT', 'CHILD'], (optional)
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function select_hierarchy(direction:bpy.ops.pose.Pose.Enum16, extend:Bool):Void;
	/**
		Select bones related to selected ones by parent/child relationships
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_linked(extend:Bool):Void;
	/**
		Mirror the bone selection
		@param only_active Active Only, Only operate on the active bone — boolean, (optional)
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function select_mirror(only_active:Bool, extend:Bool):Void;
	/**
		Select bones that are parents of the currently selected bones
	**/
	static function select_parent():Void;
	/**
		Reset location, rotation, and scaling of selected bones to their default values
	**/
	static function transforms_clear():Void;
	/**
		Reset pose on selected bones to keyframed state
		@param only_selected Only Selected, Only visible/selected bones — boolean, (optional)
	**/
	static function user_transforms_clear(only_selected:Bool):Void;
	/**
		Apply final constrained position of pose bones to their transform
	**/
	static function visual_transform_apply():Void;
}