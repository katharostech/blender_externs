package bpy.types.spaceclipeditor;
@:enum abstract Enum1(String) from String to String {
	var CLIP : String = "CLIP";
	var TRACK : String = "TRACK";
}@:enum abstract Enum2(String) from String to String {
	var OUTLINE : String = "OUTLINE";
	var DASH : String = "DASH";
	var BLACK : String = "BLACK";
	var WHITE : String = "WHITE";
}@:enum abstract Enum3(String) from String to String {
	var ALPHACHANNEL : String = "ALPHACHANNEL";
	var COMBINED : String = "COMBINED";
}@:enum abstract Enum4(String) from String to String {
	var TRACKING : String = "TRACKING";
	var MASK : String = "MASK";
}@:enum abstract Enum5(String) from String to String {
	var BOUNDING_BOX_CENTER : String = "BOUNDING_BOX_CENTER";
	var CURSOR : String = "CURSOR";
	var INDIVIDUAL_ORIGINS : String = "INDIVIDUAL_ORIGINS";
	var MEDIAN_POINT : String = "MEDIAN_POINT";
}@:enum abstract Enum6(String) from String to String {
	var CLIP : String = "CLIP";
	var GRAPH : String = "GRAPH";
	var DOPESHEET : String = "DOPESHEET";
}/**
	Clip editor space data
**/
@:pythonImport("bpy.types.SpaceClipEditor") extern class SpaceClipEditor {
	/**
		Movie clip displayed and edited in this space
		
		Type: MovieClip
	**/
	var clip : bpy.types.movieclip.MovieClip;
	/**
		Parameters defining which frame of the movie clip is displayed
		
		Type: MovieClipUser, (readonly, never None)
	**/
	var clip_user(default, never) : bpy.types.movieclipuser.MovieClipUser;
	/**
		Where the grease pencil comes from
		
		Type: enum in [‘CLIP’, ‘TRACK’], default ‘CLIP’
	**/
	var grease_pencil_source : bpy.types.spaceclipeditor.SpaceClipEditor.Enum1;
	/**
		Lock viewport to selected markers during playback
		
		Type: boolean, default False
	**/
	var lock_selection : Bool;
	/**
		Lock curves view to time cursor during playback and tracking
		
		Type: boolean, default False
	**/
	var lock_time_cursor : Bool;
	/**
		Mask displayed and edited in this space
		
		Type: Mask
	**/
	var mask : bpy.types.mask.Mask;
	/**
		Display type for mask splines
		
		Type: enum in [‘OUTLINE’, ‘DASH’, ‘BLACK’, ‘WHITE’], default ‘OUTLINE’
	**/
	var mask_display_type : bpy.types.spaceclipeditor.SpaceClipEditor.Enum2;
	/**
		Overlay mode of rasterized mask
		
		Type: enum in [‘ALPHACHANNEL’, ‘COMBINED’], default ‘ALPHACHANNEL’
	**/
	var mask_overlay_mode : bpy.types.spaceclipeditor.SpaceClipEditor.Enum3;
	/**
		Editing context being displayed
		
		Type: enum in [‘TRACKING’, ‘MASK’], default ‘TRACKING’
	**/
	var mode : bpy.types.spaceclipeditor.SpaceClipEditor.Enum4;
	/**
		Length of displaying path, in frames
		
		Type: int in [0, inf], default 0
	**/
	var path_length : Int;
	/**
		Pivot center for rotation/scaling
		
		Type: enum in [‘BOUNDING_BOX_CENTER’, ‘CURSOR’, ‘INDIVIDUAL_ORIGINS’, ‘MEDIAN_POINT’], default ‘BOUNDING_BOX_CENTER’
	**/
	var pivot_point : bpy.types.spaceclipeditor.SpaceClipEditor.Enum5;
	/**
		Scopes to visualize movie clip statistics
		
		Type: MovieClipScopes, (readonly)
	**/
	var scopes(default, never) : bpy.types.movieclipscopes.MovieClipScopes;
	/**
		Show annotations for this view
		
		Type: boolean, default False
	**/
	var show_annotation : Bool;
	/**
		Show blue channel in the frame
		
		Type: boolean, default False
	**/
	var show_blue_channel : Bool;
	/**
		Show projection of 3D markers into footage
		
		Type: boolean, default False
	**/
	var show_bundles : Bool;
	/**
		Show disabled tracks from the footage
		
		Type: boolean, default False
	**/
	var show_disabled : Bool;
	/**
		Show filters for graph editor
		
		Type: boolean, default False
	**/
	var show_filters : Bool;
	/**
		Show curve for per-frame average error (camera motion should be solved first)
		
		Type: boolean, default False
	**/
	var show_graph_frames : Bool;
	/**
		Include channels from objects/bone that aren’t visible
		
		Type: boolean, default False
	**/
	var show_graph_hidden : Bool;
	/**
		Only include channels relating to selected objects and data
		
		Type: boolean, default False
	**/
	var show_graph_only_selected : Bool;
	/**
		Display the reprojection error curve for selected tracks
		
		Type: boolean, default False
	**/
	var show_graph_tracks_error : Bool;
	/**
		Display the speed curves (in “x” direction red, in “y” direction green) for the selected tracks
		
		Type: boolean, default False
	**/
	var show_graph_tracks_motion : Bool;
	/**
		Show green channel in the frame
		
		Type: boolean, default False
	**/
	var show_green_channel : Bool;
	/**
		Show grid showing lens distortion
		
		Type: boolean, default False
	**/
	var show_grid : Bool;
	/**
		Show pattern boundbox for markers
		
		Type: boolean, default False
	**/
	var show_marker_pattern : Bool;
	/**
		Show search boundbox for markers
		
		Type: boolean, default False
	**/
	var show_marker_search : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_mask_overlay : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_mask_smooth : Bool;
	/**
		Show metadata of clip
		
		Type: boolean, default False
	**/
	var show_metadata : Bool;
	/**
		Show track names and status
		
		Type: boolean, default False
	**/
	var show_names : Bool;
	/**
		Show red channel in the frame
		
		Type: boolean, default False
	**/
	var show_red_channel : Bool;
	/**
		Show timing in seconds not frames
		
		Type: boolean, default False
	**/
	var show_seconds : Bool;
	/**
		Show stable footage in editor (if stabilization is enabled)
		
		Type: boolean, default False
	**/
	var show_stable : Bool;
	/**
		Show markers in a more compact manner
		
		Type: boolean, default False
	**/
	var show_tiny_markers : Bool;
	/**
		Show path of how track moves
		
		Type: boolean, default False
	**/
	var show_track_path : Bool;
	/**
		Display frame in grayscale mode
		
		Type: boolean, default False
	**/
	var use_grayscale_preview : Bool;
	/**
		Use manual calibration helpers
		
		Type: boolean, default False
	**/
	var use_manual_calibration : Bool;
	/**
		Mute footage and show black background instead
		
		Type: boolean, default False
	**/
	var use_mute_footage : Bool;
	/**
		Type of the clip editor view
		
		Type: enum in [‘CLIP’, ‘GRAPH’, ‘DOPESHEET’], default ‘CLIP’
	**/
	var view : bpy.types.spaceclipeditor.SpaceClipEditor.Enum6;
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