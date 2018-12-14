package bpy.types.spaceview3d;
@:enum abstract Enum1(String) from String to String {
	var LEFT : String = "LEFT";
	var RIGHT : String = "RIGHT";
	var S3D : String = "S3D";
}@:enum abstract Enum2(String) from String to String {
	var LEFT_EYE : String = "LEFT_EYE";
	var RIGHT_EYE : String = "RIGHT_EYE";
}@:enum abstract Enum3(String) from String to String {
	var PLAIN_AXES : String = "PLAIN_AXES";
	var ARROWS : String = "ARROWS";
	var SINGLE_ARROW : String = "SINGLE_ARROW";
	var CIRCLE : String = "CIRCLE";
	var CUBE : String = "CUBE";
	var SPHERE : String = "SPHERE";
	var CONE : String = "CONE";
}/**
	3D View space data
**/
@:pythonImport("bpy.types.SpaceView3D") extern class SpaceView3D {
	/**
		Active camera used in this view (when unlocked from the scene’s active camera)
		
		Type: Object
	**/
	var camera : bpy.types.object.Object;
	/**
		3D View far clipping distance
		
		Type: float in [1e-06, inf], default 1000.0
	**/
	var clip_end : Float;
	/**
		3D View near clipping distance (perspective view only)
		
		Type: float in [1e-06, inf], default 0.1
	**/
	var clip_start : Float;
	/**
		Options used for real time compositing
		
		Type: GPUFXSettings, (readonly)
	**/
	var fx_settings(default, never) : bpy.types.gpufxsettings.GPUFXSettings;
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var icon_from_show_object_viewport(default, never) : Int;
	/**
		Viewport lens angle
		
		Type: float in [1, 250], default 0.0
	**/
	var lens : Float;
	/**
		Display an isolated sub-set of objects, apart from the scene visibility
		
		Type: SpaceView3D, (readonly)
	**/
	var local_view(default, never) : bpy.types.spaceview3d.SpaceView3D;
	/**
		3D View center is locked to this bone’s position
		
		Type: string, default “”, (never None)
	**/
	var lock_bone : String;
	/**
		Enable view navigation within the camera view
		
		Type: boolean, default False
	**/
	var lock_camera : Bool;
	/**
		Use the scene’s active camera and layers in this view, rather than local layers
		
		Type: boolean, default False
	**/
	var lock_camera_and_layers : Bool;
	/**
		3D View center is locked to the cursor’s position
		
		Type: boolean, default False
	**/
	var lock_cursor : Bool;
	/**
		3D View center is locked to this object’s position
		
		Type: Object
	**/
	var lock_object : bpy.types.object.Object;
	/**
		Settings for display of overlays in the 3D viewport
		
		Type: View3DOverlay, (readonly, never None)
	**/
	var overlay(default, never) : bpy.types.view3doverlay.View3DOverlay;
	/**
		3D region in this space, in case of quad view the camera region
		
		Type: RegionView3D, (readonly)
	**/
	var region_3d(default, never) : bpy.types.regionview3d.RegionView3D;
	/**
		3D regions (the third one defines quad view settings, the fourth one is same as ‘region_3d’)
		
		Type: bpy_prop_collection of RegionView3D, (readonly)
	**/
	var region_quadviews(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Maximum X value for the render border
		
		Type: float in [0, 1], default 0.0
	**/
	var render_border_max_x : Float;
	/**
		Maximum Y value for the render border
		
		Type: float in [0, 1], default 0.0
	**/
	var render_border_max_y : Float;
	/**
		Minimum X value for the render border
		
		Type: float in [0, 1], default 0.0
	**/
	var render_border_min_x : Float;
	/**
		Minimum Y value for the render border
		
		Type: float in [0, 1], default 0.0
	**/
	var render_border_min_y : Float;
	/**
		Settings for shading in the 3D viewport
		
		Type: View3DShading, (readonly, never None)
	**/
	var shading(default, never) : bpy.types.view3dshading.View3DShading;
	/**
		Show names for reconstructed tracks objects
		
		Type: boolean, default False
	**/
	var show_bundle_names : Bool;
	/**
		Show reconstructed camera path
		
		Type: boolean, default False
	**/
	var show_camera_path : Bool;
	/**
		Show gizmos of all types
		
		Type: boolean, default False
	**/
	var show_gizmo : Bool;
	/**
		Context sensitive gizmos for the active item
		
		Type: boolean, default False
	**/
	var show_gizmo_context : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_gizmo_navigate : Bool;
	/**
		Active tool gizmo
		
		Type: boolean, default False
	**/
	var show_gizmo_tool : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_armature : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_camera : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_curve : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_empty : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_font : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_grease_pencil : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_lattice : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_light : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_light_probe : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_mesh : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_meta : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_speaker : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_select_surf : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_armature : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_camera : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_curve : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_empty : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_font : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_grease_pencil : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_lattice : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_light : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_light_probe : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_mesh : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_meta : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_speaker : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_object_viewport_surf : Bool;
	/**
		Display reconstruction data from active movie clip
		
		Type: boolean, default False
	**/
	var show_reconstruction : Bool;
	/**
		Show the left and right cameras
		
		Type: boolean, default False
	**/
	var show_stereo_3d_cameras : Bool;
	/**
		Show the stereo 3d convergence plane
		
		Type: boolean, default False
	**/
	var show_stereo_3d_convergence_plane : Bool;
	/**
		Show the stereo 3d frustum volume
		
		Type: boolean, default False
	**/
	var show_stereo_3d_volume : Bool;
	/**
		Display face-assigned textures in solid view
		
		Type: boolean, default False
	**/
	var show_textured_solid : Bool;
	/**
		
		
		Type: enum in [‘LEFT’, ‘RIGHT’, ‘S3D’], default ‘LEFT’
	**/
	var stereo_3d_camera : bpy.types.spaceview3d.SpaceView3D.Enum1;
	/**
		Opacity (alpha) of the convergence plane
		
		Type: float in [0, 1], default 0.0
	**/
	var stereo_3d_convergence_plane_alpha : Float;
	/**
		Current stereo eye being drawn
		
		Type: enum in [‘LEFT_EYE’, ‘RIGHT_EYE’], default ‘LEFT_EYE’, (readonly)
	**/
	var stereo_3d_eye(default, never) : bpy.types.spaceview3d.SpaceView3D.Enum2;
	/**
		Opacity (alpha) of the cameras’ frustum volume
		
		Type: float in [0, 1], default 0.0
	**/
	var stereo_3d_volume_alpha : Float;
	/**
		Display size of tracks from reconstructed data
		
		Type: float in [0, inf], default 0.0
	**/
	var tracks_display_size : Float;
	/**
		Viewport display style for tracks
		
		Type: enum in [‘PLAIN_AXES’, ‘ARROWS’, ‘SINGLE_ARROW’, ‘CIRCLE’, ‘CUBE’, ‘SPHERE’, ‘CONE’], default ‘PLAIN_AXES’
	**/
	var tracks_display_type : bpy.types.spaceview3d.SpaceView3D.Enum3;
	/**
		Use a region within the frame size for rendered viewport (when not viewing through the camera)
		
		Type: boolean, default False
	**/
	var use_render_border : Bool;
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
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function draw_handler_add():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function draw_handler_remove():Void;
	/**
		Space data type
		
		Type: enum in [‘EMPTY’, ‘VIEW_3D’, ‘IMAGE_EDITOR’, ‘NODE_EDITOR’, ‘SEQUENCE_EDITOR’, ‘CLIP_EDITOR’, ‘DOPESHEET_EDITOR’, ‘GRAPH_EDITOR’, ‘NLA_EDITOR’, ‘TEXT_EDITOR’, ‘CONSOLE’, ‘INFO’, ‘TOPBAR’, ‘STATUSBAR’, ‘OUTLINER’, ‘PROPERTIES’, ‘FILE_BROWSER’, ‘USER_PREFERENCES’], default ‘EMPTY’, (readonly)
	**/
	var type(default, never) : bpy.types.space.Space.Enum1;
	/**
		
		
		Type: boolean, default False
	**/
	var show_locked_time : Bool;
}