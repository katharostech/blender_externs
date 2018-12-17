package bpy.types.speaker;
/**
	Speaker data-block for 3D audio speaker objects
**/
@:native("bpy.types.Speaker") extern class Speaker {
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		How strong the distance affects volume, depending on distance model
		
		Type: float in [0, inf], default 0.0
	**/
	var attenuation : Float;
	/**
		Angle of the inner cone, in degrees, inside the cone the volume is 100 %
		
		Type: float in [0, 360], default 0.0
	**/
	var cone_angle_inner : Float;
	/**
		Angle of the outer cone, in degrees, outside this cone the volume is the outer cone volume, between inner and outer cone the volume is interpolated
		
		Type: float in [0, 360], default 0.0
	**/
	var cone_angle_outer : Float;
	/**
		Volume outside the outer cone
		
		Type: float in [0, 1], default 0.0
	**/
	var cone_volume_outer : Float;
	/**
		Maximum distance for volume calculation, no matter how far away the object is
		
		Type: float in [0, inf], default 0.0
	**/
	var distance_max : Float;
	/**
		Reference distance at which volume is 100 %
		
		Type: float in [0, inf], default 0.0
	**/
	var distance_reference : Float;
	/**
		Mute the speaker
		
		Type: boolean, default False
	**/
	var muted : Bool;
	/**
		Playback pitch of the sound
		
		Type: float in [0.1, 10], default 0.0
	**/
	var pitch : Float;
	/**
		Whether the source is relative to the camera or not
		
		Type: boolean, default False, (readonly)
	**/
	var relative(default, never) : Bool;
	/**
		Sound data-block used by this speaker
		
		Type: Sound
	**/
	var sound : bpy.types.sound.Sound;
	/**
		How loud the sound is
		
		Type: float in [0, 1], default 0.0
	**/
	var volume : Float;
	/**
		Maximum volume, no matter how near the object is
		
		Type: float in [0, 1], default 0.0
	**/
	var volume_max : Float;
	/**
		Minimum volume, no matter how far away the object is
		
		Type: float in [0, 1], default 0.0
	**/
	var volume_min : Float;
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