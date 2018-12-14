package bpy.ops.export_anim;
/**
	Export Anim Operators
**/
@:pythonImport("bpy.ops.export_anim") extern class Module {
	/**
		Save a BVH motion capture file from an armature
		@param filepath File Path, Filepath used for exporting the file — string, (optional, never None)
		@param check_existing Check Existing, Check and warn on overwriting existing files — boolean, (optional)
		@param axis_forward Forward — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param axis_up Up — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param filter_glob filter_glob — string, (optional, never None)
		@param global_scale Scale, Scale the BVH by this value — float in [0.0001, 1e+06], (optional)
		@param frame_start Start Frame, Starting frame to export — int in [-inf, inf], (optional)
		@param frame_end End Frame, End frame to export — int in [-inf, inf], (optional)
		@param rotate_mode Rotation, Rotation conversionNATIVE Euler (Native), Use the rotation order defined in the BVH file.XYZ Euler (XYZ), Convert rotations to euler XYZ.XZY Euler (XZY), Convert rotations to euler XZY.YXZ Euler (YXZ), Convert rotations to euler YXZ.YZX Euler (YZX), Convert rotations to euler YZX.ZXY Euler (ZXY), Convert rotations to euler ZXY.ZYX Euler (ZYX), Convert rotations to euler ZYX. — enum in ['NATIVE', 'XYZ', 'XZY', 'YXZ', 'YZX', 'ZXY', 'ZYX'], (optional)
		@param root_transform_only Root Translation Only, Only write out translation channels for the root bone — boolean, (optional)
	**/
	static function bvh(filepath:String, check_existing:Bool, axis_forward:bpy.ops.export_anim.Export_anim.Enum1, axis_up:bpy.ops.export_anim.Export_anim.Enum2, filter_glob:String, global_scale:Float, frame_start:Int, frame_end:Int, rotate_mode:bpy.ops.export_anim.Export_anim.Enum3, root_transform_only:Bool):Void;
}