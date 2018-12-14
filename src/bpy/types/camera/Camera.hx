package bpy.types.camera;
@:enum abstract Enum1(String) from String to String {
	var MILLIMETERS : String = "MILLIMETERS";
	var FOV : String = "FOV";
}@:enum abstract Enum2(String) from String to String {
	var AUTO : String = "AUTO";
	var HORIZONTAL : String = "HORIZONTAL";
	var VERTICAL : String = "VERTICAL";
}@:enum abstract Enum3(String) from String to String {
	var PERSP : String = "PERSP";
	var ORTHO : String = "ORTHO";
	var PANO : String = "PANO";
}/**
	Camera data-block for storing camera settings
**/
@:pythonImport("bpy.types.Camera") extern class Camera {
	/**
		Camera lens field of view
		
		Type: float in [0.00640536, 3.01675], default 0.0
	**/
	var angle : Float;
	/**
		Camera lens horizontal field of view
		
		Type: float in [0.00640536, 3.01675], default 0.0
	**/
	var angle_x : Float;
	/**
		Camera lens vertical field of view
		
		Type: float in [0.00640536, 3.01675], default 0.0
	**/
	var angle_y : Float;
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		List of background images
		
		Type: CameraBackgroundImages bpy_prop_collection of CameraBackgroundImage, (readonly)
	**/
	var background_images(default, never) : bpy.types.camerabackgroundimages.CameraBackgroundImages;
	/**
		Camera far clipping distance
		
		Type: float in [1e-06, inf], default 1000.0
	**/
	var clip_end : Float;
	/**
		Camera near clipping distance
		
		Type: float in [1e-06, inf], default 0.1
	**/
	var clip_start : Float;
	/**
		Cycles camera settings
		
		Type: CyclesCameraSettings, (readonly)
	**/
	var cycles(default, never) : bpy.types.cyclescamerasettings.CyclesCameraSettings;
	/**
		Apparent size of the Camera object in the 3D View
		
		Type: float in [0.01, 1000], default 1.0
	**/
	var display_size : Float;
	/**
		Distance to the focus point for depth of field
		
		Type: float in [0, inf], default 0.0
	**/
	var dof_distance : Float;
	/**
		Use this object to define the depth of field focal point
		
		Type: Object
	**/
	var dof_object : bpy.types.object.Object;
	/**
		
		
		Type: GPUDOFSettings, (readonly)
	**/
	var gpu_dof(default, never) : bpy.types.gpudofsettings.GPUDOFSettings;
	/**
		Perspective Camera lens value in millimeters
		
		Type: float in [1, inf], default 50.0
	**/
	var lens : Float;
	/**
		Unit to edit lens in for the user interface
		
		Type: enum in [‘MILLIMETERS’, ‘FOV’], default ‘MILLIMETERS’
	**/
	var lens_unit : bpy.types.camera.Camera.Enum1;
	/**
		Orthographic Camera scale (similar to zoom)
		
		Type: float in [0, inf], default 6.0
	**/
	var ortho_scale : Float;
	/**
		Opacity (alpha) of the darkened overlay in Camera view
		
		Type: float in [0, 1], default 0.5
	**/
	var passepartout_alpha : Float;
	/**
		Method to fit image and field of view angle inside the sensor
		
		Type: enum in [‘AUTO’, ‘HORIZONTAL’, ‘VERTICAL’], default ‘AUTO’
	**/
	var sensor_fit : bpy.types.camera.Camera.Enum2;
	/**
		Vertical size of the image sensor area in millimeters
		
		Type: float in [1, inf], default 34.0
	**/
	var sensor_height : Float;
	/**
		Horizontal size of the image sensor area in millimeters
		
		Type: float in [1, inf], default 36.0
	**/
	var sensor_width : Float;
	/**
		Camera horizontal shift
		
		Type: float in [-10, 10], default 0.0
	**/
	var shift_x : Float;
	/**
		Camera vertical shift
		
		Type: float in [-10, 10], default 0.0
	**/
	var shift_y : Float;
	/**
		Display reference images behind objects in the 3D View
		
		Type: boolean, default False
	**/
	var show_background_images : Bool;
	/**
		Display overlay
		
		Type: enum set in {‘CENTER’, ‘CENTER_DIAGONAL’, ‘THIRDS’, ‘GOLDEN’, ‘GOLDEN_TRIANGLE_A’, ‘GOLDEN_TRIANGLE_B’, ‘HARMONY_TRIANGLE_A’, ‘HARMONY_TRIANGLE_B’}, default {‘CENTER’}
	**/
	var show_guide : Dynamic;
	/**
		Display the clipping range and focus point on the camera
		
		Type: boolean, default False
	**/
	var show_limits : Bool;
	/**
		Display a line from the Camera to indicate the mist area
		
		Type: boolean, default False
	**/
	var show_mist : Bool;
	/**
		Show the active Camera’s name in Camera view
		
		Type: boolean, default False
	**/
	var show_name : Bool;
	/**
		Show a darkened overlay outside the image area in Camera view
		
		Type: boolean, default True
	**/
	var show_passepartout : Bool;
	/**
		Show TV title safe and action safe areas in Camera view
		
		Type: boolean, default False
	**/
	var show_safe_areas : Bool;
	/**
		Show safe areas to fit content in a different aspect ratio
		
		Type: boolean, default False
	**/
	var show_safe_center : Bool;
	/**
		Show sensor size (film gate) in Camera view
		
		Type: boolean, default False
	**/
	var show_sensor : Bool;
	/**
		
		
		Type: CameraStereoData, (readonly, never None)
	**/
	var stereo(default, never) : bpy.types.camerastereodata.CameraStereoData;
	/**
		Camera types
		
		Type: enum in [‘PERSP’, ‘ORTHO’, ‘PANO’], default ‘PERSP’
	**/
	var type : bpy.types.camera.Camera.Enum3;
	/**
		Return 4 points for the cameras frame (before object transformation)
		@param scene Scene to use for aspect calculation, when omitted 1:1 aspect is used — Scene, (optional)
	**/
	function view_frame(scene:Dynamic):Void;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:Dynamic):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:Dynamic):Dynamic;
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