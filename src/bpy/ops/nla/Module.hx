package bpy.ops.nla;
/**
	Nla Operators
**/
@:pythonImport("bpy.ops.nla") extern class Module {
	/**
		Push action down onto the top of the NLA stack as a new strip
		@param channel_index Channel Index, Index of NLA action channel to perform pushdown operation on — int in [-1, inf], (optional)
	**/
	static function action_pushdown(channel_index:Int):Void;
	/**
		Synchronize the length of the referenced Action with the length used in the strip
		@param active Active Strip Only, Only sync the active length for the active strip — boolean, (optional)
	**/
	static function action_sync_length(active:Bool):Void;
	/**
		Unlink this action from the active action slot (and/or exit Tweak Mode)
		@param force_delete Force Delete, Clear Fake User and remove copy stashed in this datablock’s NLA stack — boolean, (optional)
	**/
	static function action_unlink(force_delete:Bool):Void;
	/**
		Add an Action-Clip strip (i.e. an NLA Strip referencing an Action) to the active track
		@param action Action — enum in [], (optional)
	**/
	static function actionclip_add(action:bpy.ops.nla.Nla.Enum1):Void;
	/**
		Apply scaling of selected strips to their referenced Actions
	**/
	static function apply_scale():Void;
	/**
		Bake all selected objects loc/scale/rotation animation to an action
		@param frame_start Start Frame, Start frame for baking — int in [0, 300000], (optional)
		@param frame_end End Frame, End frame for baking — int in [1, 300000], (optional)
		@param step Frame Step, Frame Step — int in [1, 120], (optional)
		@param only_selected Only Selected Bones, Only key selected bones (Pose baking only) — boolean, (optional)
		@param visual_keying Visual Keying, Keyframe from the final transformations (with constraints applied) — boolean, (optional)
		@param clear_constraints Clear Constraints, Remove all constraints from keyed object/bones, and do ‘visual’ keying — boolean, (optional)
		@param clear_parents Clear Parents, Bake animation onto the object then clear parents (objects only) — boolean, (optional)
		@param use_current_action Overwrite Current Action, Bake animation into current action, instead of creating a new one (useful for baking only part of bones in an armature) — boolean, (optional)
		@param bake_types Bake Data, Which data’s transformations to bakePOSE Pose, Bake bones transformations.OBJECT Object, Bake object transformations. — enum set in {'POSE', 'OBJECT'}, (optional)
	**/
	static function bake(frame_start:Int, frame_end:Int, step:Int, only_selected:Bool, visual_keying:Bool, clear_constraints:Bool, clear_parents:Bool, use_current_action:Bool, bake_types:Dynamic):Void;
	/**
		Handle clicks to select NLA channels
		@param extend Extend Select — boolean, (optional)
	**/
	static function channels_click(extend:Bool):Void;
	/**
		Reset scaling of selected strips
	**/
	static function clear_scale():Void;
	/**
		Handle clicks to select NLA Strips
		@param extend Extend Select — boolean, (optional)
	**/
	static function click_select(extend:Bool):Void;
	/**
		Delete selected strips
	**/
	static function delete():Void;
	/**
		Duplicate selected NLA-Strips, adding the new strips in new tracks above the originals
		@param linked Linked, When duplicating strips, assign new copies of the actions they use — boolean, (optional)
		@param mode Mode — enum in ['INIT', 'DUMMY', 'TRANSLATION', 'ROTATION', 'RESIZE', 'SKIN_RESIZE', 'TOSPHERE', 'SHEAR', 'BEND', 'SHRINKFATTEN', 'TILT', 'TRACKBALL', 'PUSHPULL', 'CREASE', 'MIRROR', 'BONE_SIZE', 'BONE_ENVELOPE', 'BONE_ENVELOPE_DIST', 'CURVE_SHRINKFATTEN', 'MASK_SHRINKFATTEN', 'GPENCIL_SHRINKFATTEN', 'BONE_ROLL', 'TIME_TRANSLATE', 'TIME_SLIDE', 'TIME_SCALE', 'TIME_EXTEND', 'BAKE_TIME', 'BWEIGHT', 'ALIGN', 'EDGESLIDE', 'SEQSLIDE'], (optional)
	**/
	static function duplicate(linked:Bool, mode:bpy.ops.nla.Nla.Enum2):Void;
	/**
		Add F-Modifier to the active/selected NLA-Strips
		@param type TypeNULL Invalid.GENERATOR Generator, Generate a curve using a factorized or expanded polynomial.FNGENERATOR Built-In Function, Generate a curve using standard math functions such as sin and cos.ENVELOPE Envelope, Reshape F-Curve values - e.g. change amplitude of movements.CYCLES Cycles, Cyclic extend/repeat keyframe sequence.NOISE Noise, Add pseudo-random noise on top of F-Curves.LIMITS Limits, Restrict maximum and minimum values of F-Curve.STEPPED Stepped Interpolation, Snap values to nearest grid-step - e.g. for a stop-motion look. — enum in ['NULL', 'GENERATOR', 'FNGENERATOR', 'ENVELOPE', 'CYCLES', 'NOISE', 'LIMITS', 'STEPPED'], (optional)
		@param only_active Only Active, Only add a F-Modifier of the specified type to the active strip — boolean, (optional)
	**/
	static function fmodifier_add(type:bpy.ops.nla.Nla.Enum3, only_active:Bool):Void;
	/**
		Copy the F-Modifier(s) of the active NLA-Strip
	**/
	static function fmodifier_copy():Void;
	/**
		Add copied F-Modifiers to the selected NLA-Strips
		@param only_active Only Active, Only paste F-Modifiers on active strip — boolean, (optional)
		@param replace Replace Existing, Replace existing F-Modifiers, instead of just appending to the end of the existing list — boolean, (optional)
	**/
	static function fmodifier_paste(only_active:Bool, replace:Bool):Void;
	/**
		Ensure that each action is only used once in the set of strips selected
	**/
	static function make_single_user():Void;
	/**
		Add new meta-strips incorporating the selected strips
	**/
	static function meta_add():Void;
	/**
		Separate out the strips held by the selected meta-strips
	**/
	static function meta_remove():Void;
	/**
		Move selected strips down a track if there’s room
	**/
	static function move_down():Void;
	/**
		Move selected strips up a track if there’s room
	**/
	static function move_up():Void;
	/**
		Mute or un-mute selected strips
	**/
	static function mute_toggle():Void;
	/**
		Automatically set Preview Range based on range of keyframes
	**/
	static function previewrange_set():Void;
	/**
		Toggle the properties region visibility
	**/
	static function properties():Void;
	/**
		Select or deselect all NLA-Strips
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.nla.Nla.Enum4):Void;
	/**
		Use box selection to grab NLA-Strips
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param axis_range Axis Range — boolean, (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool, axis_range:Bool):Void;
	/**
		Select strips to the left or the right of the current frame
		@param mode Mode — enum in ['CHECK', 'LEFT', 'RIGHT'], (optional)
		@param extend Extend Select — boolean, (optional)
	**/
	static function select_leftright(mode:bpy.ops.nla.Nla.Enum5, extend:Bool):Void;
	/**
		Make selected objects appear in NLA Editor by adding Animation Data
	**/
	static function selected_objects_add():Void;
	/**
		Move start of strips to specified time
		@param type Type — enum in ['CFRA', 'NEAREST_FRAME', 'NEAREST_SECOND', 'NEAREST_MARKER'], (optional)
	**/
	static function snap(type:bpy.ops.nla.Nla.Enum6):Void;
	/**
		Add a strip for controlling when speaker plays its sound clip
	**/
	static function soundclip_add():Void;
	/**
		Split selected strips at their midpoints
	**/
	static function split():Void;
	/**
		Swap order of selected strips within tracks
	**/
	static function swap():Void;
	/**
		Add NLA-Tracks above/after the selected tracks
		@param above_selected Above Selected, Add a new NLA Track above every existing selected one — boolean, (optional)
	**/
	static function tracks_add(above_selected:Bool):Void;
	/**
		Delete selected NLA-Tracks and the strips they contain
	**/
	static function tracks_delete():Void;
	/**
		Add a transition strip between two adjacent selected strips
	**/
	static function transition_add():Void;
	/**
		Enter tweaking mode for the action referenced by the active strip to edit its keyframes
		@param isolate_action Isolate Action, Enable ‘solo’ on the NLA Track containing the active strip, to edit it without seeing the effects of the NLA stack — boolean, (optional)
	**/
	static function tweakmode_enter(isolate_action:Bool):Void;
	/**
		Exit tweaking mode for the action referenced by the active strip
		@param isolate_action Isolate Action, Disable ‘solo’ on any of the NLA Tracks after exiting tweak mode to get things back to normal — boolean, (optional)
	**/
	static function tweakmode_exit(isolate_action:Bool):Void;
	/**
		Reset viewable area to show full strips range
	**/
	static function view_all():Void;
	/**
		Reset viewable area to show range around current frame
	**/
	static function view_frame():Void;
	/**
		Reset viewable area to show selected strips range
	**/
	static function view_selected():Void;
}