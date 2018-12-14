package bpy_extras.anim_utils;
/**
	bpy_extras submodule (bpy_extras.anim_utils)
**/
@:pythonImport("bpy_extras.anim_utils") extern class Module {
	/**
		
		@param obj Object to bake. — bpy.types.Object
		@param action An action to bake the data into, or None for a new action
		                                        to be created. — bpy.types.Action or None
		@param frames Frames to bake. — iterable of int
		
		@returns bpy.types.Action
	**/
	static function bake_action(obj:Dynamic, action:Dynamic, frames:Dynamic):bpy.types.action.Action;
	/**
		A version of bake_action_objects_iter() that takes frames and returns the output.
		@param frames Frames to bake. — iterable of int
		
		@returns sequence of bpy.types.Action
	**/
	static function bake_action_objects(frames:Dynamic):Dynamic;
	/**
		An coroutine that bakes action for a single object.
		@param obj Object to bake. — bpy.types.Object
		@param action An action to bake the data into, or None for a new action
		                                        to be created. — bpy.types.Action or None
		@param only_selected Only bake selected bones. — bool
		@param do_pose Bake pose channels. — bool
		@param do_object Bake objects. — bool
		@param do_visual_keying Use the final transformations for baking (‘visual keying’) — bool
		@param do_constraint_clear Remove constraints after baking. — bool
		@param do_parents_clear Unparent after baking objects. — bool
		@param do_clean Remove redundant keyframes after baking. — bool
		
		@returns bpy.types.Action
	**/
	static function bake_action_iter(obj:Dynamic, action:Dynamic, only_selected:Dynamic, do_pose:Dynamic, do_object:Dynamic, do_visual_keying:Dynamic, do_constraint_clear:Dynamic, do_parents_clear:Dynamic, do_clean:Dynamic):bpy.types.action.Action;
	/**
		An coroutine that bakes actions for multiple objects.
		@param object_action_pairs Sequence of object action tuples,
		                                action is the destination for the baked data. When None a new action will be created. — Sequence of (bpy.types.Object, bpy.types.Action)
	**/
	static function bake_action_objects_iter(object_action_pairs:bpy.types.sequence.Sequence):Void;
}