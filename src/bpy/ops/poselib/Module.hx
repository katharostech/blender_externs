package bpy.ops.poselib;
/**
	Poselib Operators
**/
@:pythonImport("bpy.ops.poselib") extern class Module {
	/**
		Make action suitable for use as a Pose Library
	**/
	static function action_sanitize():Void;
	/**
		Apply specified Pose Library pose to the rig
		@param pose_index Pose, Index of the pose to apply (-2 for no change to pose, -1 for poselib active pose) — int in [-2, inf], (optional)
	**/
	static function apply_pose(pose_index:Int):Void;
	/**
		Interactively browse poses in 3D-View
		@param pose_index Pose, Index of the pose to apply (-2 for no change to pose, -1 for poselib active pose) — int in [-2, inf], (optional)
	**/
	static function browse_interactive(pose_index:Int):Void;
	/**
		Add New Pose Library to active Object
	**/
	static function pyNew():Void;
	/**
		Add the current Pose to the active Pose Library
		@param frame Frame, Frame to store pose on — int in [0, inf], (optional)
		@param name Pose Name, Name of newly added Pose — string, (optional, never None)
	**/
	static function pose_add(frame:Int, name:String):Void;
	/**
		Move the pose up or down in the active Pose Library
		@param pose Pose, The pose to move — enum in [], (optional)
		@param direction Direction, Direction to move the chosen pose towards — enum in ['UP', 'DOWN'], (optional)
	**/
	static function pose_move(pose:bpy.ops.poselib.Poselib.Enum1, direction:bpy.ops.poselib.Poselib.Enum2):Void;
	/**
		Remove nth pose from the active Pose Library
		@param pose Pose, The pose to remove — enum in [], (optional)
	**/
	static function pose_remove(pose:bpy.ops.poselib.Poselib.Enum3):Void;
	/**
		Rename specified pose from the active Pose Library
		@param name New Pose Name, New name for pose — string, (optional, never None)
		@param pose Pose, The pose to rename — enum in [], (optional)
	**/
	static function pose_rename(name:String, pose:bpy.ops.poselib.Poselib.Enum4):Void;
	/**
		Remove Pose Library from active Object
	**/
	static function unlink():Void;
}