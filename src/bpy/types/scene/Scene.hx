package bpy.types.scene;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var INVERSE : String = "INVERSE";
	var INVERSE_CLAMPED : String = "INVERSE_CLAMPED";
	var LINEAR : String = "LINEAR";
	var LINEAR_CLAMPED : String = "LINEAR_CLAMPED";
	var EXPONENT : String = "EXPONENT";
	var EXPONENT_CLAMPED : String = "EXPONENT_CLAMPED";
}@:enum abstract Enum2(String) from String to String {
	var NONE : String = "NONE";
	var FRAME_DROP : String = "FRAME_DROP";
	var AUDIO_SYNC : String = "AUDIO_SYNC";
}@:enum abstract Enum3(String) from String to String {
	var GLOBAL : String = "GLOBAL";
	var LOCAL : String = "LOCAL";
	var NORMAL : String = "NORMAL";
	var GIMBAL : String = "GIMBAL";
	var VIEW : String = "VIEW";
	var CURSOR : String = "CURSOR";
}@:enum abstract Enum4(String) from String to String {
	var OGAWA : String = "OGAWA";
	var HDF5 : String = "HDF5";
}@:enum abstract Enum5(String) from String to String {
	var BEAUTY : String = "BEAUTY";
	var FIXED : String = "FIXED";
	var FIXED_ALTERNATE : String = "FIXED_ALTERNATE";
	var SHORTEST_DIAGONAL : String = "SHORTEST_DIAGONAL";
}@:enum abstract Enum6(String) from String to String {
	var BEAUTY : String = "BEAUTY";
	var FIXED : String = "FIXED";
	var FIXED_ALTERNATE : String = "FIXED_ALTERNATE";
	var SHORTEST_DIAGONAL : String = "SHORTEST_DIAGONAL";
}/**
	Scene data-block, consisting in objects and defining time and render related settings
**/
@:pythonImport("bpy.types.Scene") extern class Scene {
	/**
		Active movie clip used for constraints and viewport drawing
		
		Type: MovieClip
	**/
	var active_clip : bpy.types.movieclip.MovieClip;
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Distance model for distance attenuation calculation
		
		Type: enum in [‘NONE’, ‘INVERSE’, ‘INVERSE_CLAMPED’, ‘LINEAR’, ‘LINEAR_CLAMPED’, ‘EXPONENT’, ‘EXPONENT_CLAMPED’], default ‘NONE’
	**/
	var audio_distance_model : bpy.types.scene.Scene.Enum1;
	/**
		Pitch factor for Doppler effect calculation
		
		Type: float in [0, inf], default 0.0
	**/
	var audio_doppler_factor : Float;
	/**
		Speed of sound for Doppler effect calculation
		
		Type: float in [0.01, inf], default 0.0
	**/
	var audio_doppler_speed : Float;
	/**
		Audio volume
		
		Type: float in [0, 100], default 0.0
	**/
	var audio_volume : Float;
	/**
		Background set scene
		
		Type: Scene
	**/
	var background_set : bpy.types.scene.Scene;
	/**
		Active camera, used for rendering the scene
		
		Type: Object
	**/
	var camera : bpy.types.object.Object;
	/**
		Scene master collection that objects and other collections in the scene
		
		Type: Collection, (readonly, never None)
	**/
	var collection(default, never) : bpy.types.collection.Collection;
	/**
		Current transformation orientation
		
		Type: TransformOrientation, (readonly)
	**/
	var current_orientation(default, never) : bpy.types.transformorientation.TransformOrientation;
	/**
		3D cursor location
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var cursor_location : Array<Float>;
	/**
		3D cursor rotation in quaternions (keep normalized)
		
		Type: float array of 4 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var cursor_rotation : Array<Float>;
	/**
		Cycles render settings
		
		Type: CyclesRenderSettings, (readonly)
	**/
	var cycles(default, never) : bpy.types.cyclesrendersettings.CyclesRenderSettings;
	/**
		Cycles hair rendering settings
		
		Type: CyclesCurveRenderSettings, (readonly)
	**/
	var cycles_curves(default, never) : bpy.types.cyclescurverendersettings.CyclesCurveRenderSettings;
	/**
		Scene display settings for 3d viewport
		
		Type: SceneDisplay, (readonly)
	**/
	var display(default, never) : bpy.types.scenedisplay.SceneDisplay;
	/**
		Settings of device saved image would be displayed on
		
		Type: ColorManagedDisplaySettings, (readonly)
	**/
	var display_settings(default, never) : bpy.types.colormanageddisplaysettings.ColorManagedDisplaySettings;
	/**
		EEVEE settings for the scene
		
		Type: SceneEEVEE, (readonly)
	**/
	var eevee(default, never) : bpy.types.sceneeevee.SceneEEVEE;
	/**
		Current Frame, to update animation data from python frame_set() instead
		
		Type: int in [-1048574, 1048574], default 0
	**/
	var frame_current : Int;
	/**
		Current frame with subframe and time remapping applied
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0, (readonly)
	**/
	var frame_current_final(default, never) : Float;
	/**
		Final frame of the playback/rendering range
		
		Type: int in [0, 1048574], default 250
	**/
	var frame_end : Int;
	/**
		
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0
	**/
	var frame_float : Float;
	/**
		Alternative end frame for UI playback
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_preview_end : Int;
	/**
		Alternative start frame for UI playback
		
		Type: int in [-inf, inf], default 0
	**/
	var frame_preview_start : Int;
	/**
		First frame of the playback/rendering range
		
		Type: int in [0, 1048574], default 1
	**/
	var frame_start : Int;
	/**
		Number of frames to skip forward while rendering/playing back each frame
		
		Type: int in [0, 1048574], default 0
	**/
	var frame_step : Int;
	/**
		
		
		Type: float in [0, 1], default 0.0
	**/
	var frame_subframe : Float;
	/**
		Constant acceleration in a given direction
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var gravity : Array<Float>;
	/**
		Grease Pencil data-block used for annotations in the 3D view
		
		Type: GreasePencil
	**/
	var grease_pencil : bpy.types.greasepencil.GreasePencil;
	/**
		Whether there is any action referenced by NLA being edited (strictly read-only)
		
		Type: boolean, default False, (readonly)
	**/
	var is_nla_tweakmode(default, never) : Bool;
	/**
		Absolute Keying Sets for this Scene
		
		Type: KeyingSets bpy_prop_collection of KeyingSet, (readonly)
	**/
	var keying_sets(default, never) : bpy.types.keyingsets.KeyingSets;
	/**
		All Keying Sets available for use (Builtins and Absolute Keying Sets for this Scene)
		
		Type: KeyingSetsAll bpy_prop_collection of KeyingSet, (readonly)
	**/
	var keying_sets_all(default, never) : bpy.types.keyingsetsall.KeyingSetsAll;
	/**
		Don’t allow frame to be selected with mouse outside of frame range
		
		Type: boolean, default False
	**/
	var lock_frame_selection_to_range : Bool;
	/**
		Compositing node tree
		
		Type: NodeTree, (readonly)
	**/
	var node_tree(default, never) : bpy.types.nodetree.NodeTree;
	/**
		
		
		Type: SceneObjects bpy_prop_collection of Object, (readonly)
	**/
	var objects(default, never) : bpy.types.sceneobjects.SceneObjects;
	/**
		
		
		Type: RenderSettings, (readonly, never None)
	**/
	var render(default, never) : bpy.types.rendersettings.RenderSettings;
	/**
		
		
		Type: RigidBodyWorld, (readonly)
	**/
	var rigidbody_world(default, never) : bpy.types.rigidbodyworld.RigidBodyWorld;
	/**
		
		
		Type: DisplaySafeAreas, (readonly, never None)
	**/
	var safe_areas(default, never) : bpy.types.displaysafeareas.DisplaySafeAreas;
	/**
		
		
		Type: SequenceEditor, (readonly)
	**/
	var sequence_editor(default, never) : bpy.types.sequenceeditor.SequenceEditor;
	/**
		Settings of color space sequencer is working in
		
		Type: ColorManagedSequencerColorspaceSettings, (readonly)
	**/
	var sequencer_colorspace_settings(default, never) : bpy.types.colormanagedsequencercolorspacesettings.ColorManagedSequencerColorspaceSettings;
	/**
		Consider keyframes for active Object and/or its selected bones only (in timeline and when jumping between keyframes)
		
		Type: boolean, default False
	**/
	var show_keys_from_selected_only : Bool;
	/**
		Show current scene subframe and allow set it using interface tools
		
		Type: boolean, default False
	**/
	var show_subframe : Bool;
	/**
		How to sync playback
		
		Type: enum in [‘NONE’, ‘FRAME_DROP’, ‘AUDIO_SYNC’], default ‘AUDIO_SYNC’
	**/
	var sync_mode : bpy.types.scene.Scene.Enum2;
	/**
		Markers used in all timelines for the current scene
		
		Type: TimelineMarkers bpy_prop_collection of TimelineMarker, (readonly)
	**/
	var timeline_markers(default, never) : bpy.types.timelinemarkers.TimelineMarkers;
	/**
		
		
		Type: ToolSettings, (readonly, never None)
	**/
	var tool_settings(default, never) : bpy.types.toolsettings.ToolSettings;
	/**
		Transformation orientation
		
		Type: enum in [‘GLOBAL’, ‘LOCAL’, ‘NORMAL’, ‘GIMBAL’, ‘VIEW’, ‘CURSOR’], default ‘GLOBAL’
	**/
	var transform_orientation : bpy.types.scene.Scene.Enum3;
	/**
		Unit editing settings
		
		Type: UnitSettings, (readonly, never None)
	**/
	var unit_settings(default, never) : bpy.types.unitsettings.UnitSettings;
	/**
		Play back of audio from Sequence Editor will be muted
		
		Type: boolean, default False
	**/
	var use_audio : Bool;
	/**
		Play audio from Sequence Editor while scrubbing
		
		Type: boolean, default False
	**/
	var use_audio_scrub : Bool;
	/**
		Use global gravity for all dynamics
		
		Type: boolean, default False
	**/
	var use_gravity : Bool;
	/**
		Enable the compositing node tree
		
		Type: boolean, default False
	**/
	var use_nodes : Bool;
	/**
		Use an alternative start/end frame range for animation playback and OpenGL renders instead of the Render properties start/end frame range
		
		Type: boolean, default False
	**/
	var use_preview_range : Bool;
	/**
		User defined note for the render stamping
		
		Type: string, default “”, (never None)
	**/
	var use_stamp_note : String;
	/**
		
		
		Type: ViewLayers bpy_prop_collection of ViewLayer, (readonly)
	**/
	var view_layers(default, never) : bpy.types.viewlayers.ViewLayers;
	/**
		Color management settings applied on image before saving
		
		Type: ColorManagedViewSettings, (readonly)
	**/
	var view_settings(default, never) : bpy.types.colormanagedviewsettings.ColorManagedViewSettings;
	/**
		World used for rendering the scene
		
		Type: World
	**/
	var world : bpy.types.world.World;
	/**
		statistics
		@param view_layer Active layer — ViewLayer, (never None)
		
		@returns string, (never None)
	**/
	function statistics(view_layer:bpy.types.viewlayer.ViewLayer):String;
	/**
		Set scene frame updating all objects immediately
		@param frame Frame number to set — int in [-1048574, 1048574]
		@param subframe Sub-frame time, between 0.0 and 1.0 — float in [0, 1], (optional)
	**/
	function frame_set(frame:Int, subframe:Float):Void;
	/**
		Update data tagged to be updated from previous access to data or operators
	**/
	function update():Void;
	/**
		Get uv aspect for current object
		@param object Object — Object, (never None)
		
		@returns float array of 2 items in [0, inf]
	**/
	function uvedit_aspect(object:Dynamic):Array<Float>;
	/**
		Cast a ray onto in object space
		@param view_layer Scene Layer — ViewLayer, (never None)
		@param distance Maximum distance — float in [0, inf], (optional)
	**/
	function ray_cast(view_layer:bpy.types.viewlayer.ViewLayer, distance:Float):Void;
	/**
		Ensure sequence editor is valid in this scene
		
		@returns SequenceEditor
	**/
	function sequence_editor_create():bpy.types.sequenceeditor.SequenceEditor;
	/**
		Clear sequence editor in this scene
	**/
	function sequence_editor_clear():Void;
	/**
		Export to Alembic file (deprecated, use the Alembic export operator)
		@param filepath File Path, File path to write Alembic file — string, (never None)
		@param frame_start Start, Start Frame — int in [-inf, inf], (optional)
		@param frame_end End, End Frame — int in [-inf, inf], (optional)
		@param xform_samples Xform samples, Transform samples per frame — int in [1, 128], (optional)
		@param geom_samples Geom samples, Geometry samples per frame — int in [1, 128], (optional)
		@param shutter_open Shutter open — float in [-1, 1], (optional)
		@param shutter_close Shutter close — float in [-1, 1], (optional)
		@param selected_only Selected only, Export only selected objects — boolean, (optional)
		@param uvs UVs, Export UVs — boolean, (optional)
		@param normals Normals, Export normals — boolean, (optional)
		@param vcolors Vertex colors, Export vertex colors — boolean, (optional)
		@param apply_subdiv Subsurfs as meshes, Export subdivision surfaces as meshes — boolean, (optional)
		@param flatten Flatten hierarchy, Flatten hierarchy — boolean, (optional)
		@param visible_layers_only Visible layers only, Export only objects in visible layers — boolean, (optional)
		@param renderable_only Renderable objects only, Export only objects marked renderable in the outliner — boolean, (optional)
		@param face_sets Facesets, Export face sets — boolean, (optional)
		@param subdiv_schema Use Alembic subdivision Schema, Use Alembic subdivision Schema — boolean, (optional)
		@param export_hair Export Hair, Exports hair particle systems as animated curves — boolean, (optional)
		@param export_particles Export Particles, Exports non-hair particle systems — boolean, (optional)
		@param compression_type Compression — enum in ['OGAWA', 'HDF5'], (optional)
		@param packuv Export with packed UV islands, Export with packed UV islands — boolean, (optional)
		@param scale Scale, Value by which to enlarge or shrink the objects with respect to the world’s origin — float in [0.0001, 1000], (optional)
		@param triangulate Triangulate, Export Polygons (Quads &amp; NGons) as Triangles — boolean, (optional)
		@param quad_method Quad Method, Method for splitting the quads into trianglesBEAUTY Beauty , Split the quads in nice triangles, slower method.FIXED Fixed, Split the quads on the first and third vertices.FIXED_ALTERNATE Fixed Alternate, Split the quads on the 2nd and 4th vertices.SHORTEST_DIAGONAL Shortest Diagonal, Split the quads based on the distance between the vertices. — enum in ['BEAUTY', 'FIXED', 'FIXED_ALTERNATE', 'SHORTEST_DIAGONAL'], (optional)
		@param ngon_method Polygon Method, Method for splitting the polygons into trianglesBEAUTY Beauty , Split the quads in nice triangles, slower method.FIXED Fixed, Split the quads on the first and third vertices.FIXED_ALTERNATE Fixed Alternate, Split the quads on the 2nd and 4th vertices.SHORTEST_DIAGONAL Shortest Diagonal, Split the quads based on the distance between the vertices. — enum in ['BEAUTY', 'FIXED', 'FIXED_ALTERNATE', 'SHORTEST_DIAGONAL'], (optional)
	**/
	function alembic_export(filepath:String, frame_start:Int, frame_end:Int, xform_samples:Int, geom_samples:Int, shutter_open:Float, shutter_close:Float, selected_only:Bool, uvs:Bool, normals:Bool, vcolors:Bool, apply_subdiv:Bool, flatten:Bool, visible_layers_only:Bool, renderable_only:Bool, face_sets:Bool, subdiv_schema:Bool, export_hair:Bool, export_particles:Bool, compression_type:bpy.types.scene.Scene.Enum4, packuv:Bool, scale:Float, triangulate:Bool, quad_method:bpy.types.scene.Scene.Enum5, ngon_method:bpy.types.scene.Scene.Enum6):Void;
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