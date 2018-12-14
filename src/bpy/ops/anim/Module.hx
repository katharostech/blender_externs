package bpy.ops.anim;
/**
	Anim Operators
**/
@:pythonImport("bpy.ops.anim") extern class Module {
	/**
		Interactively change the current frame number
		@param frame Frame — float in [-1.04857e+06, 1.04857e+06], (optional)
		@param snap Snap — boolean, (optional)
	**/
	static function change_frame(frame:Float, snap:Bool):Void;
	/**
		Select all keyframes of channel under mouse
		@param extend Extend, Extend selection — boolean, (optional)
	**/
	static function channel_select_keys(extend:Bool):Void;
	/**
		Delete all empty animation data containers from visible data-blocks
	**/
	static function channels_clean_empty():Void;
	/**
		Handle mouse-clicks over animation channels
		@param extend Extend Select — boolean, (optional)
		@param children_only Select Children Only — boolean, (optional)
	**/
	static function channels_click(extend:Bool, children_only:Bool):Void;
	/**
		Collapse (i.e. close) all selected expandable animation channels
		@param all All, Collapse all channels (not just selected ones) — boolean, (optional)
	**/
	static function channels_collapse(all:Bool):Void;
	/**
		Delete all selected animation channels
	**/
	static function channels_delete():Void;
	/**
		Toggle editability of selected channels
		@param mode Mode — enum in ['TOGGLE', 'DISABLE', 'ENABLE', 'INVERT'], (optional)
		@param type Type — enum in ['PROTECT', 'MUTE'], (optional)
	**/
	static function channels_editable_toggle(mode:bpy.ops.anim.Anim.Enum1, type:bpy.ops.anim.Anim.Enum2):Void;
	/**
		Expand (i.e. open) all selected expandable animation channels
		@param all All, Expand all channels (not just selected ones) — boolean, (optional)
	**/
	static function channels_expand(all:Bool):Void;
	/**
		Clears ‘disabled’ tag from all F-Curves to get broken F-Curves working again
	**/
	static function channels_fcurves_enable():Void;
	/**
		Filter the set of channels shown to only include those with matching names
		@param query Text to search for in channel names — string, (optional, never None)
	**/
	static function channels_find(query:String):Void;
	/**
		Add selected F-Curves to a new group
		@param name Name, Name of newly created group — string, (optional, never None)
	**/
	static function channels_group(name:String):Void;
	/**
		Rearrange selected animation channels
		@param direction Direction — enum in ['TOP', 'UP', 'DOWN', 'BOTTOM'], (optional)
	**/
	static function channels_move(direction:bpy.ops.anim.Anim.Enum3):Void;
	/**
		Rename animation channel under mouse
	**/
	static function channels_rename():Void;
	/**
		Toggle selection of all animation channels
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function channels_select_all(action:bpy.ops.anim.Anim.Enum4):Void;
	/**
		Select all animation channels within the specified region
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function channels_select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool):Void;
	/**
		Disable specified setting on all selected animation channels
		@param mode Mode — enum in ['TOGGLE', 'DISABLE', 'ENABLE', 'INVERT'], (optional)
		@param type Type — enum in ['PROTECT', 'MUTE'], (optional)
	**/
	static function channels_setting_disable(mode:bpy.ops.anim.Anim.Enum5, type:bpy.ops.anim.Anim.Enum6):Void;
	/**
		Enable specified setting on all selected animation channels
		@param mode Mode — enum in ['TOGGLE', 'DISABLE', 'ENABLE', 'INVERT'], (optional)
		@param type Type — enum in ['PROTECT', 'MUTE'], (optional)
	**/
	static function channels_setting_enable(mode:bpy.ops.anim.Anim.Enum7, type:bpy.ops.anim.Anim.Enum8):Void;
	/**
		Toggle specified setting on all selected animation channels
		@param mode Mode — enum in ['TOGGLE', 'DISABLE', 'ENABLE', 'INVERT'], (optional)
		@param type Type — enum in ['PROTECT', 'MUTE'], (optional)
	**/
	static function channels_setting_toggle(mode:bpy.ops.anim.Anim.Enum9, type:bpy.ops.anim.Anim.Enum10):Void;
	/**
		Remove selected F-Curves from their current groups
	**/
	static function channels_ungroup():Void;
	/**
		Mark actions with no F-Curves for deletion after save &amp; reload of file preserving “action libraries”
		@param only_unused Only Unused, Only unused (Fake User only) actions get considered — boolean, (optional)
	**/
	static function clear_useless_actions(only_unused:Bool):Void;
	/**
		Copy the driver for the highlighted button
	**/
	static function copy_driver_button():Void;
	/**
		Add driver for the property under the cursor
	**/
	static function driver_button_add():Void;
	/**
		Edit the drivers for the property connected represented by the highlighted button
	**/
	static function driver_button_edit():Void;
	/**
		Remove the driver(s) for the property(s) connected represented by the highlighted button
		@param all All, Delete drivers for all elements of the array — boolean, (optional)
	**/
	static function driver_button_remove(all:Bool):Void;
	/**
		Set the current frame as the preview or scene end frame
	**/
	static function end_frame_set():Void;
	/**
		Clear all keyframes on the currently active property
		@param all All, Clear keyframes from all elements of the array — boolean, (optional)
	**/
	static function keyframe_clear_button(all:Bool):Void;
	/**
		Remove all keyframe animation for selected objects
	**/
	static function keyframe_clear_v3d():Void;
	/**
		Delete keyframes on the current frame for all properties in the specified Keying Set
		@param type Keying Set, The Keying Set to use — enum in ['DEFAULT'], (optional)
		@param confirm_success Confirm Successful Delete, Show a popup when the keyframes get successfully removed — boolean, (optional)
	**/
	static function keyframe_delete(type:bpy.ops.anim.Anim.Enum11, confirm_success:Bool):Void;
	/**
		Delete current keyframe of current UI-active property
		@param all All, Delete keyframes from all elements of the array — boolean, (optional)
	**/
	static function keyframe_delete_button(all:Bool):Void;
	/**
		Remove keyframes on current frame for selected objects and bones
	**/
	static function keyframe_delete_v3d():Void;
	/**
		Insert keyframes on the current frame for all properties in the specified Keying Set
		@param type Keying Set, The Keying Set to use — enum in ['DEFAULT'], (optional)
		@param confirm_success Confirm Successful Insert, Show a popup when the keyframes get successfully added — boolean, (optional)
	**/
	static function keyframe_insert(type:bpy.ops.anim.Anim.Enum12, confirm_success:Bool):Void;
	/**
		Insert a keyframe for current UI-active property
		@param all All, Insert a keyframe for all element of the array — boolean, (optional)
	**/
	static function keyframe_insert_button(all:Bool):Void;
	/**
		Insert Keyframes for specified Keying Set, with menu of available Keying Sets if undefined
		@param type Keying Set, The Keying Set to use — enum in ['DEFAULT'], (optional)
		@param confirm_success Confirm Successful Insert, Show a popup when the keyframes get successfully added — boolean, (optional)
		@param always_prompt Always Show Menu — boolean, (optional)
	**/
	static function keyframe_insert_menu(type:bpy.ops.anim.Anim.Enum13, confirm_success:Bool, always_prompt:Bool):Void;
	/**
		Select a new keying set as the active one
		@param type Keying Set, The Keying Set to use — enum in ['DEFAULT'], (optional)
	**/
	static function keying_set_active_set(type:bpy.ops.anim.Anim.Enum14):Void;
	/**
		Add a new (empty) Keying Set to the active Scene
	**/
	static function keying_set_add():Void;
	/**
		Export Keying Set to a python script
		@param filepath filepath — string, (optional, never None)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_text Filter text — boolean, (optional)
		@param filter_python Filter python — boolean, (optional)
	**/
	static function keying_set_export(filepath:String, filter_folder:Bool, filter_text:Bool, filter_python:Bool):Void;
	/**
		Add empty path to active Keying Set
	**/
	static function keying_set_path_add():Void;
	/**
		Remove active Path from active Keying Set
	**/
	static function keying_set_path_remove():Void;
	/**
		Remove the active Keying Set
	**/
	static function keying_set_remove():Void;
	/**
		Add current UI-active property to current keying set
		@param all All, Add all elements of the array to a Keying Set — boolean, (optional)
	**/
	static function keyingset_button_add(all:Bool):Void;
	/**
		Remove current UI-active property from current keying set
	**/
	static function keyingset_button_remove():Void;
	/**
		Paste the driver in the copy/paste buffer for the highlighted button
	**/
	static function paste_driver_button():Void;
	/**
		Clear Preview Range
	**/
	static function previewrange_clear():Void;
	/**
		Interactively define frame range used for playback
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
	**/
	static function previewrange_set(xmin:Int, xmax:Int, ymin:Int, ymax:Int):Void;
	/**
		Set the current frame as the preview or scene start frame
	**/
	static function start_frame_set():Void;
	/**
		Update fcurves/drivers affecting Transform constraints (use it with files from 2.70 and earlier)
		@param use_convert_to_radians Convert To Radians, Convert fcurves/drivers affecting rotations to radians (Warning: use this only once!) — boolean, (optional)
	**/
	static function update_animated_transform_constraints(use_convert_to_radians:Bool):Void;
}