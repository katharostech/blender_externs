package bpy.types.armature;
@:enum abstract Enum1(String) from String to String {
	var OCTAHEDRAL : String = "OCTAHEDRAL";
	var STICK : String = "STICK";
	var BBONE : String = "BBONE";
	var ENVELOPE : String = "ENVELOPE";
	var WIRE : String = "WIRE";
}@:enum abstract Enum2(String) from String to String {
	var CURRENT_FRAME : String = "CURRENT_FRAME";
	var RANGE : String = "RANGE";
	var KEYS : String = "KEYS";
}@:enum abstract Enum3(String) from String to String {
	var POSE : String = "POSE";
	var REST : String = "REST";
}/**
	Armature data-block containing a hierarchy of bones, usually used for rigging characters
**/
@:native("bpy.types.Armature") extern class Armature {
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		
		
		Type: ArmatureBones bpy_prop_collection of Bone, (readonly)
	**/
	var bones(default, never) : bpy.types.armaturebones.ArmatureBones;
	/**
		
		
		Type: enum in [‘OCTAHEDRAL’, ‘STICK’, ‘BBONE’, ‘ENVELOPE’, ‘WIRE’], default ‘OCTAHEDRAL’
	**/
	var display_type : bpy.types.armature.Armature.Enum1;
	/**
		
		
		Type: ArmatureEditBones bpy_prop_collection of EditBone, (readonly)
	**/
	var edit_bones(default, never) : bpy.types.armatureeditbones.ArmatureEditBones;
	/**
		End frame of range of Ghosts to display (not for ‘Around Current Frame’ Onion-skinning method)
		
		Type: int in [-inf, inf], default 0
	**/
	var ghost_frame_end : Int;
	/**
		Starting frame of range of Ghosts to display (not for ‘Around Current Frame’ Onion-skinning method)
		
		Type: int in [-inf, inf], default 0
	**/
	var ghost_frame_start : Int;
	/**
		Frame step for Ghosts (not for ‘On Keyframes’ Onion-skinning method)
		
		Type: int in [1, 20], default 0
	**/
	var ghost_size : Int;
	/**
		Number of frame steps on either side of current frame to show as ghosts (only for ‘Around Current Frame’ Onion-skinning method)
		
		Type: int in [0, 30], default 0
	**/
	var ghost_step : Int;
	/**
		Method of Onion-skinning for active Action
		
		Type: enum in [‘CURRENT_FRAME’, ‘RANGE’, ‘KEYS’], default ‘CURRENT_FRAME’
	**/
	var ghost_type : bpy.types.armature.Armature.Enum2;
	/**
		True when used in editmode
		
		Type: boolean, default False, (readonly)
	**/
	var is_editmode(default, never) : Bool;
	/**
		Armature layer visibility
		
		Type: boolean array of 32 items, default (False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False)
	**/
	var layers : Array<Bool>;
	/**
		Protected layers in Proxy Instances are restored to Proxy settings on file reload and undo
		
		Type: boolean array of 32 items, default (False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False)
	**/
	var layers_protected : Array<Bool>;
	/**
		Show armature in binding pose or final posed state
		
		Type: enum in [‘POSE’, ‘REST’], default ‘POSE’
	**/
	var pose_position : bpy.types.armature.Armature.Enum3;
	/**
		Display bone axes
		
		Type: boolean, default False
	**/
	var show_axes : Bool;
	/**
		Display bones with their custom shapes
		
		Type: boolean, default False
	**/
	var show_bone_custom_shapes : Bool;
	/**
		Display bone group colors
		
		Type: boolean, default False
	**/
	var show_group_colors : Bool;
	/**
		Display bone names
		
		Type: boolean, default False
	**/
	var show_names : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_only_ghost_selected : Bool;
	/**
		Add temporary IK constraints while grabbing bones in Pose Mode
		
		Type: boolean, default False
	**/
	var use_auto_ik : Bool;
	/**
		Don’t deform children when manipulating bones in Pose Mode
		
		Type: boolean, default False
	**/
	var use_deform_delay : Bool;
	/**
		Apply changes to matching bone on opposite side of X-Axis
		
		Type: boolean, default False
	**/
	var use_mirror_x : Bool;
	/**
		Transform armature bones by a matrix
		@param matrix Matrix — float multi-dimensional array of 4 * 4 items in [-inf, inf]
	**/
	function transform(matrix:Array<Float>):Void;
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
	/**
		Unique data-block ID name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Unique data-block ID name, including library one is any
		
		Type: string, default “”, (readonly, never None)
	**/
	var name_full(default, never) : String;
	/**
		Whether this ID is runtime-only, evaluated data-block, or actual data from .blend file
		
		Type: boolean, default False, (readonly)
	**/
	var is_evaluated(default, never) : Bool;
	/**
		Actual data-block from .blend file (Main database) that generated that evaluated one
		
		Type: ID, (readonly)
	**/
	var original(default, never) : bpy.types.id.ID;
	/**
		Number of times this data-block is referenced
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var users(default, never) : Int;
	/**
		Save this data-block even if it has no users
		
		Type: boolean, default False
	**/
	var use_fake_user : Bool;
	/**
		Tools can use this to tag data for their own purposes (initial state is undefined)
		
		Type: boolean, default False
	**/
	var tag : Bool;
	/**
		Is this ID block linked indirectly
		
		Type: boolean, default False, (readonly)
	**/
	var is_library_indirect(default, never) : Bool;
	/**
		Library file the data-block is linked from
		
		Type: Library, (readonly)
	**/
	var library(default, never) : bpy.types.library.Library;
	/**
		Static override data
		
		Type: IDOverrideStatic, (readonly)
	**/
	var override_static(default, never) : bpy.types.idoverridestatic.IDOverrideStatic;
	/**
		Preview image and icon of this data-block (None if not supported for this type of data)
		
		Type: ImagePreview, (readonly)
	**/
	var preview(default, never) : bpy.types.imagepreview.ImagePreview;
	/**
		Create a copy of this data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function copy():bpy.types.id.ID;
	/**
		Create an overridden local copy of this linked data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function override_create():bpy.types.id.ID;
	/**
		Clear the user count of a data-block so its not saved, on reload the data will be removed
		
		This function is for advanced use only, misuse can crash blender since the user
		count is used to prevent data being removed when it is used.
	**/
	function user_clear():Void;
	/**
		Replace all usage in the .blend file of this ID by new given one
		@param new_id New ID to use — ID, (never None)
	**/
	function user_remap(new_id:bpy.types.id.ID):Void;
	/**
		Make this datablock local, return local one (may be a copy of the original, in case it is also indirectly used)
		@param clear_proxy Whether to clear proxies (the default behavior, note that if object has to be duplicated to be made local, proxies are always cleared) — boolean, (optional)
		
		@returns ID
	**/
	function make_local(clear_proxy:Bool):bpy.types.id.ID;
	/**
		Count the number of times that ID uses/references given one
		@param id ID to count usages — ID, (never None)
		
		@returns int in [0, inf]
	**/
	function user_of_id(id:bpy.types.id.ID):Int;
	/**
		Create animation data to this ID, note that not all ID types support this
		
		@returns AnimData
	**/
	function animation_data_create():bpy.types.animdata.AnimData;
	/**
		Clear animation on this this ID
	**/
	function animation_data_clear():Void;
	/**
		Tag the ID to update its display data, e.g. when calling bpy.types.Scene.update
		@param refresh Type of updates to perform — enum set in {'OBJECT', 'DATA', 'TIME'}, (optional)
	**/
	function update_tag(refresh:Dynamic):Void;
}