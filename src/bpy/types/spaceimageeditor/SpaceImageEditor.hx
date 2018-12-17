package bpy.types.spaceimageeditor;
@:enum abstract Enum1(String) from String to String {
	var COLOR_ALPHA : String = "COLOR_ALPHA";
	var COLOR : String = "COLOR";
	var ALPHA : String = "ALPHA";
	var Z_BUFFER : String = "Z_BUFFER";
	var RED : String = "RED";
	var GREEN : String = "GREEN";
	var BLUE : String = "BLUE";
}@:enum abstract Enum2(String) from String to String {
	var OUTLINE : String = "OUTLINE";
	var DASH : String = "DASH";
	var BLACK : String = "BLACK";
	var WHITE : String = "WHITE";
}@:enum abstract Enum3(String) from String to String {
	var ALPHACHANNEL : String = "ALPHACHANNEL";
	var COMBINED : String = "COMBINED";
}@:enum abstract Enum4(String) from String to String {
	var VIEW : String = "VIEW";
	var UV : String = "UV";
	var PAINT : String = "PAINT";
	var MASK : String = "MASK";
}@:enum abstract Enum5(String) from String to String {
	var BOUNDING_BOX_CENTER : String = "BOUNDING_BOX_CENTER";
	var CURSOR : String = "CURSOR";
	var INDIVIDUAL_ORIGINS : String = "INDIVIDUAL_ORIGINS";
	var MEDIAN_POINT : String = "MEDIAN_POINT";
	var ACTIVE_ELEMENT : String = "ACTIVE_ELEMENT";
}/**
	Image and UV editor space data
**/
@:native("bpy.types.SpaceImageEditor") extern class SpaceImageEditor {
	/**
		2D cursor location for this view
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var cursor_location : Array<Float>;
	/**
		Channels of the image to draw
		
		Type: enum in [‘COLOR_ALPHA’, ‘COLOR’, ‘ALPHA’, ‘Z_BUFFER’, ‘RED’, ‘GREEN’, ‘BLUE’], default ‘COLOR’
	**/
	var display_channels : bpy.types.spaceimageeditor.SpaceImageEditor.Enum1;
	/**
		Grease pencil data for this space
		
		Type: GreasePencil
	**/
	var grease_pencil : bpy.types.greasepencil.GreasePencil;
	/**
		Image displayed and edited in this space
		
		Type: Image
	**/
	var image : bpy.types.image.Image;
	/**
		Parameters defining which layer, pass and frame of the image is displayed
		
		Type: ImageUser, (readonly, never None)
	**/
	var image_user(default, never) : bpy.types.imageuser.ImageUser;
	/**
		Mask displayed and edited in this space
		
		Type: Mask
	**/
	var mask : bpy.types.mask.Mask;
	/**
		Display type for mask splines
		
		Type: enum in [‘OUTLINE’, ‘DASH’, ‘BLACK’, ‘WHITE’], default ‘OUTLINE’
	**/
	var mask_display_type : bpy.types.spaceimageeditor.SpaceImageEditor.Enum2;
	/**
		Overlay mode of rasterized mask
		
		Type: enum in [‘ALPHACHANNEL’, ‘COMBINED’], default ‘ALPHACHANNEL’
	**/
	var mask_overlay_mode : bpy.types.spaceimageeditor.SpaceImageEditor.Enum3;
	/**
		Editing context being displayed
		
		Type: enum in [‘VIEW’, ‘UV’, ‘PAINT’, ‘MASK’], default ‘VIEW’
	**/
	var mode : bpy.types.spaceimageeditor.SpaceImageEditor.Enum4;
	/**
		Rotation/Scaling Pivot
		
		Type: enum in [‘BOUNDING_BOX_CENTER’, ‘CURSOR’, ‘INDIVIDUAL_ORIGINS’, ‘MEDIAN_POINT’, ‘ACTIVE_ELEMENT’], default ‘BOUNDING_BOX_CENTER’
	**/
	var pivot_point : bpy.types.spaceimageeditor.SpaceImageEditor.Enum5;
	/**
		Sampled colors along line
		
		Type: Histogram, (readonly)
	**/
	var sample_histogram(default, never) : bpy.types.histogram.Histogram;
	/**
		Scopes to visualize image statistics
		
		Type: Scopes, (readonly)
	**/
	var scopes(default, never) : bpy.types.scopes.Scopes;
	/**
		Show annotations for this view
		
		Type: boolean, default False
	**/
	var show_annotation : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_mask_overlay : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_mask_smooth : Bool;
	/**
		Show Mask editing related properties
		
		Type: boolean, default False, (readonly)
	**/
	var show_maskedit(default, never) : Bool;
	/**
		Show paint related properties
		
		Type: boolean, default False, (readonly)
	**/
	var show_paint(default, never) : Bool;
	/**
		Show render related properties
		
		Type: boolean, default False, (readonly)
	**/
	var show_render(default, never) : Bool;
	/**
		Display the image repeated outside of the main view
		
		Type: boolean, default False
	**/
	var show_repeat : Bool;
	/**
		Display the image in Stereo 3D
		
		Type: boolean, default False
	**/
	var pyshow_stereo_3d : Bool;
	/**
		Show UV editing related properties
		
		Type: boolean, default False, (readonly)
	**/
	var show_uvedit(default, never) : Bool;
	/**
		Display current image regardless of object selection
		
		Type: boolean, default False
	**/
	var use_image_pin : Bool;
	/**
		Update other affected window spaces automatically to reflect changes during interactive operations such as transform
		
		Type: boolean, default False
	**/
	var use_realtime_update : Bool;
	/**
		UV editor settings
		
		Type: SpaceUVEditor, (readonly, never None)
	**/
	var uv_editor(default, never) : bpy.types.spaceuveditor.SpaceUVEditor;
	/**
		Zoom factor
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0), (readonly)
	**/
	var zoom(default, never) : Array<Float>;
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