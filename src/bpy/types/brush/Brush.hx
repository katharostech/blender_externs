package bpy.types.brush;
@:enum abstract Enum1(String) from String to String {
	var MIX : String = "MIX";
	var DARKEN : String = "DARKEN";
	var MUL : String = "MUL";
	var COLORBURN : String = "COLORBURN";
	var LINEARBURN : String = "LINEARBURN";
	var LIGHTEN : String = "LIGHTEN";
	var SCREEN : String = "SCREEN";
	var COLORDODGE : String = "COLORDODGE";
	var ADD : String = "ADD";
	var OVERLAY : String = "OVERLAY";
	var SOFTLIGHT : String = "SOFTLIGHT";
	var HARDLIGHT : String = "HARDLIGHT";
	var VIVIDLIGHT : String = "VIVIDLIGHT";
	var LINEARLIGHT : String = "LINEARLIGHT";
	var PINLIGHT : String = "PINLIGHT";
	var DIFFERENCE : String = "DIFFERENCE";
	var EXCLUSION : String = "EXCLUSION";
	var SUB : String = "SUB";
	var HUE : String = "HUE";
	var SATURATION : String = "SATURATION";
	var COLOR : String = "COLOR";
	var LUMINOSITY : String = "LUMINOSITY";
	var ERASE_ALPHA : String = "ERASE_ALPHA";
	var ADD_ALPHA : String = "ADD_ALPHA";
}@:enum abstract Enum2(String) from String to String {
	var BOX : String = "BOX";
	var GAUSSIAN : String = "GAUSSIAN";
}@:enum abstract Enum3(String) from String to String {
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
}@:enum abstract Enum4(String) from String to String {
	var DRAW : String = "DRAW";
	var FILL : String = "FILL";
	var ERASE : String = "ERASE";
}@:enum abstract Enum5(String) from String to String {
	var LINEAR : String = "LINEAR";
	var RADIAL : String = "RADIAL";
}@:enum abstract Enum6(String) from String to String {
	var PRESSURE : String = "PRESSURE";
	var SPACING_REPEAT : String = "SPACING_REPEAT";
	var SPACING_CLAMP : String = "SPACING_CLAMP";
}@:enum abstract Enum7(String) from String to String {
	var DRAW : String = "DRAW";
	var SOFTEN : String = "SOFTEN";
	var SMEAR : String = "SMEAR";
	var CLONE : String = "CLONE";
	var FILL : String = "FILL";
	var MASK : String = "MASK";
}@:enum abstract Enum8(String) from String to String {
	var DRAW : String = "DRAW";
	var SMOOTH : String = "SMOOTH";
}@:enum abstract Enum9(String) from String to String {
	var AREA : String = "AREA";
	var VIEW : String = "VIEW";
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum10(String) from String to String {
	var DRAW : String = "DRAW";
	var CLAY : String = "CLAY";
	var CLAY_STRIPS : String = "CLAY_STRIPS";
	var LAYER : String = "LAYER";
	var INFLATE : String = "INFLATE";
	var BLOB : String = "BLOB";
	var CREASE : String = "CREASE";
	var SMOOTH : String = "SMOOTH";
	var FLATTEN : String = "FLATTEN";
	var FILL : String = "FILL";
	var SCRAPE : String = "SCRAPE";
	var PINCH : String = "PINCH";
	var GRAB : String = "GRAB";
	var SNAKE_HOOK : String = "SNAKE_HOOK";
	var THUMB : String = "THUMB";
	var NUDGE : String = "NUDGE";
	var ROTATE : String = "ROTATE";
	var MASK : String = "MASK";
	var SIMPLIFY : String = "SIMPLIFY";
}@:enum abstract Enum11(String) from String to String {
	var DOTS : String = "DOTS";
	var DRAG_DOT : String = "DRAG_DOT";
	var SPACE : String = "SPACE";
	var AIRBRUSH : String = "AIRBRUSH";
	var ANCHORED : String = "ANCHORED";
	var LINE : String = "LINE";
	var CURVE : String = "CURVE";
}@:enum abstract Enum12(String) from String to String {
	var NONE : String = "NONE";
	var RAMP : String = "RAMP";
	var CUTOFF : String = "CUTOFF";
}@:enum abstract Enum13(String) from String to String {
	var DRAW : String = "DRAW";
	var BLUR : String = "BLUR";
	var AVERAGE : String = "AVERAGE";
	var SMEAR : String = "SMEAR";
}@:enum abstract Enum14(String) from String to String {
	var DRAW : String = "DRAW";
	var BLUR : String = "BLUR";
	var AVERAGE : String = "AVERAGE";
	var SMEAR : String = "SMEAR";
}/**
	Brush data-block for storing brush settings for painting and sculpting
**/
@:pythonImport("bpy.types.Brush") extern class Brush {
	/**
		Amount of smoothing to automatically apply to each stroke
		
		Type: float in [0, 1], default 0.0
	**/
	var auto_smooth_factor : Float;
	/**
		Brush blending mode
		
		Type: enum in [‘MIX’, ‘DARKEN’, ‘MUL’, ‘COLORBURN’, ‘LINEARBURN’, ‘LIGHTEN’, ‘SCREEN’, ‘COLORDODGE’, ‘ADD’, ‘OVERLAY’, ‘SOFTLIGHT’, ‘HARDLIGHT’, ‘VIVIDLIGHT’, ‘LINEARLIGHT’, ‘PINLIGHT’, ‘DIFFERENCE’, ‘EXCLUSION’, ‘SUB’, ‘HUE’, ‘SATURATION’, ‘COLOR’, ‘LUMINOSITY’, ‘ERASE_ALPHA’, ‘ADD_ALPHA’], default ‘MIX’
	**/
	var blend : bpy.types.brush.Brush.Enum1;
	/**
		Radius of kernel used for soften and sharpen in pixels
		
		Type: int in [1, 10000], default 0
	**/
	var blur_kernel_radius : Int;
	/**
		
		
		Type: enum in [‘BOX’, ‘GAUSSIAN’], default ‘GAUSSIAN’
	**/
	var blur_mode : bpy.types.brush.Brush.Enum2;
	/**
		Brush’s capabilities
		
		Type: BrushCapabilities, (readonly, never None)
	**/
	var brush_capabilities(default, never) : bpy.types.brushcapabilities.BrushCapabilities;
	/**
		Opacity of clone image display
		
		Type: float in [0, 1], default 0.0
	**/
	var clone_alpha : Float;
	/**
		Image for clone tool
		
		Type: Image
	**/
	var clone_image : bpy.types.image.Image;
	/**
		
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var clone_offset : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		How much the crease brush pinches
		
		Type: float in [0, 1], default 0.666667
	**/
	var crease_pinch_factor : Float;
	/**
		Color of cursor when adding
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var cursor_color_add : Array<Float>;
	/**
		Color of cursor when subtracting
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var cursor_color_subtract : Array<Float>;
	/**
		
		
		Type: int in [0, 100], default 0
	**/
	var cursor_overlay_alpha : Int;
	/**
		Editable falloff curve
		
		Type: CurveMapping, (readonly, never None)
	**/
	var curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		
		
		Type: enum in [‘ADD’, ‘SUBTRACT’], default ‘ADD’
	**/
	var direction : bpy.types.brush.Brush.Enum3;
	/**
		Paint most on faces pointing towards the view according to this angle
		
		Type: float in [0, 1.5708], default 0.0
	**/
	var falloff_angle : Float;
	/**
		Threshold above which filling is not propagated
		
		Type: float in [0, 100], default 0.0
	**/
	var fill_threshold : Float;
	/**
		
		
		Type: BrushGpencilSettings, (readonly)
	**/
	var gpencil_settings(default, never) : bpy.types.brushgpencilsettings.BrushGpencilSettings;
	/**
		Category of the brush
		
		Type: enum in [‘DRAW’, ‘FILL’, ‘ERASE’], default ‘DRAW’
	**/
	var gpencil_tool : bpy.types.brush.Brush.Enum4;
	/**
		Spacing before brush gradient goes full circle
		
		Type: int in [1, 10000], default 0
	**/
	var grad_spacing : Int;
	/**
		
		
		Type: ColorRamp, (readonly)
	**/
	var gradient(default, never) : bpy.types.colorramp.ColorRamp;
	/**
		
		
		Type: enum in [‘LINEAR’, ‘RADIAL’], default ‘LINEAR’
	**/
	var gradient_fill_mode : bpy.types.brush.Brush.Enum5;
	/**
		
		
		Type: enum in [‘PRESSURE’, ‘SPACING_REPEAT’, ‘SPACING_CLAMP’], default ‘PRESSURE’
	**/
	var gradient_stroke_mode : bpy.types.brush.Brush.Enum6;
	/**
		Affectable height of brush (layer height for layer tool, i.e.)
		
		Type: float in [0, 1], default 0.5
	**/
	var height : Float;
	/**
		File path to brush icon
		
		Type: string, default “”, (never None)
	**/
	var icon_filepath : String;
	/**
		Brush’s capabilities in image paint mode
		
		Type: ImapaintToolCapabilities, (readonly, never None)
	**/
	var image_paint_capabilities(default, never) : bpy.types.imapainttoolcapabilities.ImapaintToolCapabilities;
	/**
		
		
		Type: enum in [‘DRAW’, ‘SOFTEN’, ‘SMEAR’, ‘CLONE’, ‘FILL’, ‘MASK’], default ‘DRAW’
	**/
	var image_tool : bpy.types.brush.Brush.Enum7;
	/**
		Jitter the position of the brush while painting
		
		Type: float in [0, 1000], default 0.0
	**/
	var jitter : Float;
	/**
		Jitter the position of the brush in pixels while painting
		
		Type: int in [0, 1000000], default 0
	**/
	var jitter_absolute : Int;
	/**
		
		
		Type: int in [0, 100], default 0
	**/
	var mask_overlay_alpha : Int;
	/**
		Dimensions of mask stencil in viewport
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var mask_stencil_dimension : Array<Float>;
	/**
		Position of mask stencil in viewport
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var mask_stencil_pos : Array<Float>;
	/**
		
		
		Type: Texture
	**/
	var mask_texture : bpy.types.texture.Texture;
	/**
		
		
		Type: BrushTextureSlot, (readonly)
	**/
	var mask_texture_slot(default, never) : bpy.types.brushtextureslot.BrushTextureSlot;
	/**
		
		
		Type: enum in [‘DRAW’, ‘SMOOTH’], default ‘DRAW’
	**/
	var mask_tool : bpy.types.brush.Brush.Enum8;
	/**
		How much grab will pull vertexes out of surface during a grab
		
		Type: float in [0, 1], default 0.0
	**/
	var normal_weight : Float;
	/**
		Active Paint Curve
		
		Type: PaintCurve
	**/
	var paint_curve : bpy.types.paintcurve.PaintCurve;
	/**
		Adjust plane on which the brush acts towards or away from the object surface
		
		Type: float in [-2, 2], default 0.0
	**/
	var plane_offset : Float;
	/**
		If a vertex is further away from offset plane than this, then it is not affected
		
		Type: float in [0, 1], default 0.5
	**/
	var plane_trim : Float;
	/**
		How much grab will follow cursor rotation
		
		Type: float in [0, 10], default 0.0
	**/
	var rake_factor : Float;
	/**
		Interval between paints for Airbrush
		
		Type: float in [0.0001, 10000], default 0.0
	**/
	var rate : Float;
	/**
		Brush’s capabilities in sculpt mode
		
		Type: SculptToolCapabilities, (readonly, never None)
	**/
	var sculpt_capabilities(default, never) : bpy.types.sculpttoolcapabilities.SculptToolCapabilities;
	/**
		
		
		Type: enum in [‘AREA’, ‘VIEW’, ‘X’, ‘Y’, ‘Z’], default ‘AREA’
	**/
	var sculpt_plane : bpy.types.brush.Brush.Enum9;
	/**
		
		
		Type: enum in [‘DRAW’, ‘CLAY’, ‘CLAY_STRIPS’, ‘LAYER’, ‘INFLATE’, ‘BLOB’, ‘CREASE’, ‘SMOOTH’, ‘FLATTEN’, ‘FILL’, ‘SCRAPE’, ‘PINCH’, ‘GRAB’, ‘SNAKE_HOOK’, ‘THUMB’, ‘NUDGE’, ‘ROTATE’, ‘MASK’, ‘SIMPLIFY’], default ‘DRAW’
	**/
	var sculpt_tool : bpy.types.brush.Brush.Enum10;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var secondary_color : Array<Float>;
	/**
		Threshold below which, no sharpening is done
		
		Type: float in [0, 100], default 0.0
	**/
	var sharp_threshold : Float;
	/**
		Radius of the brush in pixels
		
		Type: int in [1, 5000], default 0
	**/
	var size : Int;
	/**
		Higher values give a smoother stroke
		
		Type: float in [0.5, 0.99], default 0.0
	**/
	var smooth_stroke_factor : Float;
	/**
		Minimum distance from last point before stroke continues
		
		Type: int in [10, 200], default 0
	**/
	var smooth_stroke_radius : Int;
	/**
		Spacing between brush daubs as a percentage of brush diameter
		
		Type: int in [1, 1000], default 0
	**/
	var spacing : Int;
	/**
		Dimensions of stencil in viewport
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var stencil_dimension : Array<Float>;
	/**
		Position of stencil in viewport
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var stencil_pos : Array<Float>;
	/**
		How powerful the effect of the brush is when applied
		
		Type: float in [0, 10], default 0.5
	**/
	var strength : Float;
	/**
		
		
		Type: enum in [‘DOTS’, ‘DRAG_DOT’, ‘SPACE’, ‘AIRBRUSH’, ‘ANCHORED’, ‘LINE’, ‘CURVE’], default ‘DOTS’
	**/
	var stroke_method : bpy.types.brush.Brush.Enum11;
	/**
		
		
		Type: Texture
	**/
	var texture : bpy.types.texture.Texture;
	/**
		
		
		Type: int in [0, 100], default 0
	**/
	var texture_overlay_alpha : Int;
	/**
		Value added to texture samples
		
		Type: float in [-1, 1], default 0.0
	**/
	var texture_sample_bias : Float;
	/**
		
		
		Type: BrushTextureSlot, (readonly)
	**/
	var texture_slot(default, never) : bpy.types.brushtextureslot.BrushTextureSlot;
	/**
		Radius of brush in Blender units
		
		Type: float in [0.001, inf], default 0.0
	**/
	var unprojected_radius : Float;
	/**
		Accumulate stroke daubs on top of each other
		
		Type: boolean, default False
	**/
	var use_accumulate : Bool;
	/**
		Space daubs according to surface orientation instead of screen space
		
		Type: boolean, default False
	**/
	var use_adaptive_space : Bool;
	/**
		Keep applying paint effect while holding mouse (spray)
		
		Type: boolean, default False
	**/
	var use_airbrush : Bool;
	/**
		When this is disabled, lock alpha while painting
		
		Type: boolean, default False
	**/
	var use_alpha : Bool;
	/**
		Keep the brush anchored to the initial location
		
		Type: boolean, default False
	**/
	var use_anchor : Bool;
	/**
		Show cursor in viewport
		
		Type: boolean, default False
	**/
	var use_cursor_overlay : Bool;
	/**
		Don’t show overlay during a stroke
		
		Type: boolean, default False
	**/
	var use_cursor_overlay_override : Bool;
	/**
		Define the stroke curve with a bezier curve. Dabs are separated according to spacing
		
		Type: boolean, default False
	**/
	var use_curve : Bool;
	/**
		Set the brush icon from an image file
		
		Type: boolean, default False
	**/
	var use_custom_icon : Bool;
	/**
		Drag anchor brush from edge-to-edge
		
		Type: boolean, default False
	**/
	var use_edge_to_edge : Bool;
	/**
		Brush only affects vertexes that face the viewer
		
		Type: boolean, default False
	**/
	var use_frontface : Bool;
	/**
		Blend brush influence by how much they face the front
		
		Type: boolean, default False
	**/
	var use_frontface_falloff : Bool;
	/**
		Use Gradient by utilizing a sampling method
		
		Type: boolean, default False
	**/
	var use_gradient : Bool;
	/**
		Lighter pressure causes more smoothing to be applied
		
		Type: boolean, default False
	**/
	var use_inverse_smooth_pressure : Bool;
	/**
		Draw a line with dabs separated according to spacing
		
		Type: boolean, default False
	**/
	var use_line : Bool;
	/**
		When locked brush stays same size relative to object; when unlocked brush size is given in pixels
		
		Type: boolean, default False
	**/
	var use_locked_size : Bool;
	/**
		Enable tablet pressure sensitivity for offset
		
		Type: boolean, default False
	**/
	var use_offset_pressure : Bool;
	/**
		When locked keep using normal of surface where stroke was initiated
		
		Type: boolean, default False
	**/
	var use_original_normal : Bool;
	/**
		Use this brush in grease pencil drawing mode
		
		Type: boolean, default False
	**/
	var use_paint_grease_pencil : Bool;
	/**
		Use this brush in texture paint mode
		
		Type: boolean, default False
	**/
	var use_paint_image : Bool;
	/**
		Use this brush in sculpt mode
		
		Type: boolean, default False
	**/
	var use_paint_sculpt : Bool;
	/**
		Use this brush in vertex paint mode
		
		Type: boolean, default False
	**/
	var use_paint_vertex : Bool;
	/**
		Use this brush in weight paint mode
		
		Type: boolean, default False
	**/
	var use_paint_weight : Bool;
	/**
		Sculpt on a persistent layer of the mesh
		
		Type: boolean, default False
	**/
	var use_persistent : Bool;
	/**
		Enable Plane Trim
		
		Type: boolean, default False
	**/
	var use_plane_trim : Bool;
	/**
		Enable tablet pressure sensitivity for jitter
		
		Type: boolean, default False
	**/
	var use_pressure_jitter : Bool;
	/**
		Pen pressure makes texture influence smaller
		
		Type: enum in [‘NONE’, ‘RAMP’, ‘CUTOFF’], default ‘NONE’
	**/
	var use_pressure_masking : bpy.types.brush.Brush.Enum12;
	/**
		Enable tablet pressure sensitivity for size
		
		Type: boolean, default False
	**/
	var use_pressure_size : Bool;
	/**
		Enable tablet pressure sensitivity for spacing
		
		Type: boolean, default False
	**/
	var use_pressure_spacing : Bool;
	/**
		Enable tablet pressure sensitivity for strength
		
		Type: boolean, default False
	**/
	var use_pressure_strength : Bool;
	/**
		Show texture in viewport
		
		Type: boolean, default False
	**/
	var use_primary_overlay : Bool;
	/**
		Don’t show overlay during a stroke
		
		Type: boolean, default False
	**/
	var use_primary_overlay_override : Bool;
	/**
		Apply brush influence in 2D circle instead of a sphere
		
		Type: boolean, default False
	**/
	var use_projected : Bool;
	/**
		Jittering happens in screen space, not relative to brush size
		
		Type: boolean, default False
	**/
	var use_relative_jitter : Bool;
	/**
		Allow a single dot to be carefully positioned
		
		Type: boolean, default False
	**/
	var use_restore_mesh : Bool;
	/**
		Show texture in viewport
		
		Type: boolean, default False
	**/
	var use_secondary_overlay : Bool;
	/**
		Don’t show overlay during a stroke
		
		Type: boolean, default False
	**/
	var use_secondary_overlay_override : Bool;
	/**
		Brush lags behind mouse and follows a smoother path
		
		Type: boolean, default False
	**/
	var use_smooth_stroke : Bool;
	/**
		Limit brush application to the distance specified by spacing
		
		Type: boolean, default False
	**/
	var use_space : Bool;
	/**
		Automatically adjust strength to give consistent results for different spacings
		
		Type: boolean, default False
	**/
	var use_space_attenuation : Bool;
	/**
		
		
		Type: enum in [‘DRAW’, ‘BLUR’, ‘AVERAGE’, ‘SMEAR’], default ‘DRAW’
	**/
	var vertex_tool : bpy.types.brush.Brush.Enum13;
	/**
		Vertex weight when brush is applied
		
		Type: float in [0, 1], default 1.0
	**/
	var weight : Float;
	/**
		
		
		Type: enum in [‘DRAW’, ‘BLUR’, ‘AVERAGE’, ‘SMEAR’], default ‘DRAW’
	**/
	var weight_tool : bpy.types.brush.Brush.Enum14;
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