package bpy.ops.import_anim;
/**
	Import Anim Operators
**/
@:pythonImport("bpy.ops.import_anim") extern class Module {
	/**
		Load a BVH motion capture file
		@param filepath File Path, Filepath used for importing the file — string, (optional, never None)
		@param filter_glob filter_glob — string, (optional, never None)
		@param target Target, Import target type — enum in ['ARMATURE', 'OBJECT'], (optional)
		@param global_scale Scale, Scale the BVH by this value — float in [0.0001, 1e+06], (optional)
		@param frame_start Start Frame, Starting frame for the animation — int in [-inf, inf], (optional)
		@param use_fps_scale Scale FPS, Scale the framerate from the BVH to the current scenes, otherwise each BVH frame maps directly to a Blender frame — boolean, (optional)
		@param update_scene_fps Update Scene FPS, Set the scene framerate to that of the BVH file (note that this nullifies the ‘Scale FPS’ option, as the scale will be 1:1) — boolean, (optional)
		@param update_scene_duration Update Scene Duration, Extend the scene’s duration to the BVH duration (never shortens the scene) — boolean, (optional)
		@param use_cyclic Loop, Loop the animation playback — boolean, (optional)
		@param rotate_mode Rotation, Rotation conversionQUATERNION Quaternion, Convert rotations to quaternions.NATIVE Euler (Native), Use the rotation order defined in the BVH file.XYZ Euler (XYZ), Convert rotations to euler XYZ.XZY Euler (XZY), Convert rotations to euler XZY.YXZ Euler (YXZ), Convert rotations to euler YXZ.YZX Euler (YZX), Convert rotations to euler YZX.ZXY Euler (ZXY), Convert rotations to euler ZXY.ZYX Euler (ZYX), Convert rotations to euler ZYX. — enum in ['QUATERNION', 'NATIVE', 'XYZ', 'XZY', 'YXZ', 'YZX', 'ZXY', 'ZYX'], (optional)
		@param axis_forward Forward — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param axis_up Up — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
	**/
	static function bvh(filepath:String, filter_glob:String, target:bpy.ops.import_anim.Import_anim.Enum1, global_scale:Float, frame_start:Int, use_fps_scale:Bool, update_scene_fps:Bool, update_scene_duration:Bool, use_cyclic:Bool, rotate_mode:bpy.ops.import_anim.Import_anim.Enum2, axis_forward:bpy.ops.import_anim.Import_anim.Enum3, axis_up:bpy.ops.import_anim.Import_anim.Enum4):Void;
}