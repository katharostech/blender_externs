package bpy.types.pose;
@:enum abstract Enum1(String) from String to String {
	var LEGACY : String = "LEGACY";
	var ITASC : String = "ITASC";
}/**
	A collection of pose channels, including settings for animating bones
**/
@:native("bpy.types.Pose") extern class Pose {
	/**
		Animation data for this data-block
		
		Type: AnimViz, (readonly, never None)
	**/
	var animation_visualization(default, never) : bpy.types.animviz.AnimViz;
	/**
		Groups of the bones
		
		Type: BoneGroups bpy_prop_collection of BoneGroup, (readonly)
	**/
	var bone_groups(default, never) : bpy.types.bonegroups.BoneGroups;
	/**
		Individual pose bones for the armature
		
		Type: bpy_prop_collection of PoseBone, (readonly)
	**/
	var bones(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Parameters for IK solver
		
		Type: IKParam, (readonly)
	**/
	var ik_param(default, never) : bpy.types.ikparam.IKParam;
	/**
		Selection of IK solver for IK chain
		
		Type: enum in [‘LEGACY’, ‘ITASC’], default ‘LEGACY’
	**/
	var ik_solver : bpy.types.pose.Pose.Enum1;
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