package bpy.types.action;
@:enum abstract Enum1(String) from String to String {
	var ACTION : String = "ACTION";
	var ARMATURE : String = "ARMATURE";
	var BRUSH : String = "BRUSH";
	var CAMERA : String = "CAMERA";
	var CACHEFILE : String = "CACHEFILE";
	var CURVE : String = "CURVE";
	var FONT : String = "FONT";
	var GREASEPENCIL : String = "GREASEPENCIL";
	var COLLECTION : String = "COLLECTION";
	var IMAGE : String = "IMAGE";
	var KEY : String = "KEY";
	var LIGHT : String = "LIGHT";
	var LIBRARY : String = "LIBRARY";
	var LINESTYLE : String = "LINESTYLE";
	var LATTICE : String = "LATTICE";
	var MASK : String = "MASK";
	var MATERIAL : String = "MATERIAL";
	var META : String = "META";
	var MESH : String = "MESH";
	var MOVIECLIP : String = "MOVIECLIP";
	var NODETREE : String = "NODETREE";
	var OBJECT : String = "OBJECT";
	var PAINTCURVE : String = "PAINTCURVE";
	var PALETTE : String = "PALETTE";
	var PARTICLE : String = "PARTICLE";
	var LIGHT_PROBE : String = "LIGHT_PROBE";
	var SCENE : String = "SCENE";
	var SOUND : String = "SOUND";
	var SPEAKER : String = "SPEAKER";
	var TEXT : String = "TEXT";
	var TEXTURE : String = "TEXTURE";
	var WINDOWMANAGER : String = "WINDOWMANAGER";
	var WORLD : String = "WORLD";
	var WORKSPACE : String = "WORKSPACE";
}/**
	A collection of F-Curves for animation
**/
@:native("bpy.types.Action") extern class Action {
	/**
		The individual F-Curves that make up the action
		
		Type: ActionFCurves bpy_prop_collection of FCurve, (readonly)
	**/
	var fcurves(default, never) : bpy.types.actionfcurves.ActionFCurves;
	/**
		The final frame range of all F-Curves within this action
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0), (readonly)
	**/
	var frame_range(default, never) : Array<Float>;
	/**
		Convenient groupings of F-Curves
		
		Type: ActionGroups bpy_prop_collection of ActionGroup, (readonly)
	**/
	var groups(default, never) : bpy.types.actiongroups.ActionGroups;
	/**
		Type of ID block that action can be used on - DO NOT CHANGE UNLESS YOU KNOW WHAT YOU ARE DOING
		
		Type: enum in [‘ACTION’, ‘ARMATURE’, ‘BRUSH’, ‘CAMERA’, ‘CACHEFILE’, ‘CURVE’, ‘FONT’, ‘GREASEPENCIL’, ‘COLLECTION’, ‘IMAGE’, ‘KEY’, ‘LIGHT’, ‘LIBRARY’, ‘LINESTYLE’, ‘LATTICE’, ‘MASK’, ‘MATERIAL’, ‘META’, ‘MESH’, ‘MOVIECLIP’, ‘NODETREE’, ‘OBJECT’, ‘PAINTCURVE’, ‘PALETTE’, ‘PARTICLE’, ‘LIGHT_PROBE’, ‘SCENE’, ‘SOUND’, ‘SPEAKER’, ‘TEXT’, ‘TEXTURE’, ‘WINDOWMANAGER’, ‘WORLD’, ‘WORKSPACE’], default ‘ACTION’
	**/
	var id_root : bpy.types.action.Action.Enum1;
	/**
		Markers specific to this action, for labeling poses
		
		Type: ActionPoseMarkers bpy_prop_collection of TimelineMarker, (readonly)
	**/
	var pose_markers(default, never) : bpy.types.actionposemarkers.ActionPoseMarkers;
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