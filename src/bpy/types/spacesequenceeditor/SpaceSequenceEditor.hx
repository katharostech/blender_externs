package bpy.types.spacesequenceeditor;
@:enum abstract Enum1(String) from String to String {
	var IMAGE : String = "IMAGE";
	var WAVEFORM : String = "WAVEFORM";
	var VECTOR_SCOPE : String = "VECTOR_SCOPE";
	var HISTOGRAM : String = "HISTOGRAM";
}@:enum abstract Enum2(String) from String to String {
	var RECTANGLE : String = "RECTANGLE";
	var REFERENCE : String = "REFERENCE";
	var CURRENT : String = "CURRENT";
}@:enum abstract Enum3(String) from String to String {
	var COLOR_ALPHA : String = "COLOR_ALPHA";
	var COLOR : String = "COLOR";
}@:enum abstract Enum4(String) from String to String {
	var NONE : String = "NONE";
	var SCENE : String = "SCENE";
	var pyPROXY_25 : String = "PROXY_25";
	var pyPROXY_50 : String = "PROXY_50";
	var pyPROXY_75 : String = "PROXY_75";
	var pyPROXY_100 : String = "PROXY_100";
	var FULL : String = "FULL";
}@:enum abstract Enum5(String) from String to String {
	var SEQUENCER : String = "SEQUENCER";
	var PREVIEW : String = "PREVIEW";
	var SEQUENCER_PREVIEW : String = "SEQUENCER_PREVIEW";
}@:enum abstract Enum6(String) from String to String {
	var NO_WAVEFORMS : String = "NO_WAVEFORMS";
	var ALL_WAVEFORMS : String = "ALL_WAVEFORMS";
	var DEFAULT_WAVEFORMS : String = "DEFAULT_WAVEFORMS";
}/**
	Sequence editor space data
**/
@:native("bpy.types.SpaceSequenceEditor") extern class SpaceSequenceEditor {
	/**
		The channel number shown in the image preview. 0 is the result of all strips combined
		
		Type: int in [-5, 32], default 0
	**/
	var display_channel : Int;
	/**
		View mode to use for displaying sequencer output
		
		Type: enum in [‘IMAGE’, ‘WAVEFORM’, ‘VECTOR_SCOPE’, ‘HISTOGRAM’], default ‘IMAGE’
	**/
	var display_mode : bpy.types.spacesequenceeditor.SpaceSequenceEditor.Enum1;
	/**
		Grease Pencil data for this Preview region
		
		Type: GreasePencil
	**/
	var grease_pencil : bpy.types.greasepencil.GreasePencil;
	/**
		Overlay draw type
		
		Type: enum in [‘RECTANGLE’, ‘REFERENCE’, ‘CURRENT’], default ‘RECTANGLE’
	**/
	var overlay_type : bpy.types.spacesequenceeditor.SpaceSequenceEditor.Enum2;
	/**
		Channels of the preview to draw
		
		Type: enum in [‘COLOR_ALPHA’, ‘COLOR’], default ‘COLOR’
	**/
	var preview_channels : bpy.types.spacesequenceeditor.SpaceSequenceEditor.Enum3;
	/**
		Display preview using full resolution or different proxy resolutions
		
		Type: enum in [‘NONE’, ‘SCENE’, ‘PROXY_25’, ‘PROXY_50’, ‘PROXY_75’, ‘PROXY_100’, ‘FULL’], default ‘SCENE’
	**/
	var proxy_render_size : bpy.types.spacesequenceeditor.SpaceSequenceEditor.Enum4;
	/**
		Show annotations for this view
		
		Type: boolean, default False
	**/
	var show_annotation : Bool;
	/**
		Display result under strips
		
		Type: boolean, default False
	**/
	var show_backdrop : Bool;
	/**
		Show frame number beside the current frame indicator line
		
		Type: boolean, default False
	**/
	var show_frame_indicator : Bool;
	/**
		Display frames rather than seconds
		
		Type: boolean, default False
	**/
	var show_frames : Bool;
	/**
		Show metadata of first visible strip
		
		Type: boolean, default False
	**/
	var show_metadata : Bool;
	/**
		Show overexposed areas with zebra stripes
		
		Type: int in [0, 110], default 0
	**/
	var show_overexposed : Int;
	/**
		Show TV title safe and action safe areas in preview
		
		Type: boolean, default False
	**/
	var show_safe_areas : Bool;
	/**
		Show safe areas to fit content in a different aspect ratio
		
		Type: boolean, default False
	**/
	var show_safe_center : Bool;
	/**
		Show timing in seconds not frames
		
		Type: boolean, default False
	**/
	var show_seconds : Bool;
	/**
		Separate color channels in preview
		
		Type: boolean, default False
	**/
	var show_separate_color : Bool;
	/**
		Display strip in/out offsets
		
		Type: boolean, default False
	**/
	var show_strip_offset : Bool;
	/**
		Transform markers as well as strips
		
		Type: boolean, default False
	**/
	var use_marker_sync : Bool;
	/**
		Type of the Sequencer view (sequencer, preview or both)
		
		Type: enum in [‘SEQUENCER’, ‘PREVIEW’, ‘SEQUENCER_PREVIEW’], default ‘SEQUENCER’
	**/
	var view_type : bpy.types.spacesequenceeditor.SpaceSequenceEditor.Enum5;
	/**
		How Waveforms are drawn
		
		Type: enum in [‘NO_WAVEFORMS’, ‘ALL_WAVEFORMS’, ‘DEFAULT_WAVEFORMS’], default ‘DEFAULT_WAVEFORMS’
	**/
	var waveform_display_type : bpy.types.spacesequenceeditor.SpaceSequenceEditor.Enum6;
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