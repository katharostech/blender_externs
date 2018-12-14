package bpy.ops.paint;
/**
	Paint Operators
**/
@:pythonImport("bpy.ops.paint") extern class Module {
	/**
		Add cube map uvs on mesh
	**/
	static function add_simple_uvs():Void;
	/**
		Add a texture paint slot
		@param type Type, Merge method to use — enum in ['BASE_COLOR', 'SPECULAR', 'ROUGHNESS', 'METALLIC', 'NORMAL', 'BUMP', 'DISPLACEMENT'], (optional)
		@param name Name, Image data-block name — string, (optional, never None)
		@param width Width, Image width — int in [1, inf], (optional)
		@param height Height, Image height — int in [1, inf], (optional)
		@param color Color, Default fill color — float array of 4 items in [0, inf], (optional)
		@param alpha Alpha, Create an image with an alpha channel — boolean, (optional)
		@param generated_type Generated Type, Fill the image with a grid for UV map testingBLANK Blank, Generate a blank image.UV_GRID UV Grid, Generated grid to test UV mappings.COLOR_GRID Color Grid, Generated improved UV grid to test UV mappings. — enum in ['BLANK', 'UV_GRID', 'COLOR_GRID'], (optional)
		@param float 32 bit Float, Create image with 32 bit floating point bit depth — boolean, (optional)
	**/
	static function add_texture_paint_slot(type:bpy.ops.paint.Paint.Enum1, name:String, width:Int, height:Int, color:Array<Float>, alpha:Bool, generated_type:bpy.ops.paint.Paint.Enum2, float:Bool):Void;
	/**
		Toggle foreground and background brush colors
	**/
	static function brush_colors_flip():Void;
	/**
		Select a paint mode’s brush by tool type
		@param sculpt_tool sculpt_tool — enum in ['DRAW', 'CLAY', 'CLAY_STRIPS', 'LAYER', 'INFLATE', 'BLOB', 'CREASE', 'SMOOTH', 'FLATTEN', 'FILL', 'SCRAPE', 'PINCH', 'GRAB', 'SNAKE_HOOK', 'THUMB', 'NUDGE', 'ROTATE', 'MASK', 'SIMPLIFY'], (optional)
		@param vertex_tool vertex_tool — enum in ['DRAW', 'BLUR', 'AVERAGE', 'SMEAR'], (optional)
		@param weight_tool weight_tool — enum in ['DRAW', 'BLUR', 'AVERAGE', 'SMEAR'], (optional)
		@param image_tool image_tool — enum in ['DRAW', 'SOFTEN', 'SMEAR', 'CLONE', 'FILL', 'MASK'], (optional)
		@param gpencil_tool gpencil_toolDRAW Draw, The brush is of type used for drawing strokes.FILL Fill, The brush is of type used for filling areas.ERASE Erase, The brush is used for erasing strokes. — enum in ['DRAW', 'FILL', 'ERASE'], (optional)
		@param toggle Toggle, Toggle between two brushes rather than cycling — boolean, (optional)
		@param create_missing Create Missing, If the requested brush type does not exist, create a new brush — boolean, (optional)
	**/
	static function brush_select(sculpt_tool:bpy.ops.paint.Paint.Enum3, vertex_tool:bpy.ops.paint.Paint.Enum4, weight_tool:bpy.ops.paint.Paint.Enum5, image_tool:bpy.ops.paint.Paint.Enum6, gpencil_tool:bpy.ops.paint.Paint.Enum7, toggle:Bool, create_missing:Bool):Void;
	/**
		Change selection for all faces
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function face_select_all(action:bpy.ops.paint.Paint.Enum8):Void;
	/**
		Hide selected faces
		@param unselected Unselected, Hide unselected rather than selected objects — boolean, (optional)
	**/
	static function face_select_hide(unselected:Bool):Void;
	/**
		Select linked faces
	**/
	static function face_select_linked():Void;
	/**
		Select linked faces under the cursor
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
	**/
	static function face_select_linked_pick(deselect:Bool):Void;
	/**
		Reveal hidden faces
		@param select Select — boolean, (optional)
	**/
	static function face_select_reveal(select:Bool):Void;
	/**
		Move the clone source image
		@param delta Delta, Delta offset of clone image in 0.0..1.0 coordinates — float array of 2 items in [-inf, inf], (optional)
	**/
	static function grab_clone(delta:Array<Float>):Void;
	/**
		Hide/show some vertices
		@param action Action, Whether to hide or show verticesHIDE Hide, Hide vertices.SHOW Show, Show vertices. — enum in ['HIDE', 'SHOW'], (optional)
		@param area Area, Which vertices to hide or showOUTSIDE Outside, Hide or show vertices outside the selection.INSIDE Inside, Hide or show vertices inside the selection.ALL All, Hide or show all vertices.MASKED Masked, Hide or show vertices that are masked (minimum mask value of 0.5). — enum in ['OUTSIDE', 'INSIDE', 'ALL', 'MASKED'], (optional)
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
	**/
	static function hide_show(action:bpy.ops.paint.Paint.Enum9, area:bpy.ops.paint.Paint.Enum10, xmin:Int, xmax:Int, ymin:Int, ymax:Int):Void;
	/**
		Make an image from the current 3D view for re-projection
		@param filepath File Path, Name of the file — string, (optional, never None)
	**/
	static function image_from_view(filepath:String):Void;
	/**
		Paint a stroke into the image
		@param stroke Stroke — bpy_prop_collection of OperatorStrokeElement, (optional)
		@param mode Stroke Mode, Action taken when a paint stroke is madeNORMAL Normal, Apply brush normally.INVERT Invert, Invert action of brush for duration of stroke.SMOOTH Smooth, Switch brush to smooth mode for duration of stroke. — enum in ['NORMAL', 'INVERT', 'SMOOTH'], (optional)
	**/
	static function image_paint(stroke:Dynamic, mode:bpy.ops.paint.Paint.Enum11):Void;
	/**
		Fill the whole mask with a given value, or invert its values
		@param mode ModeVALUE Value, Set mask to the level specified by the ‘value’ property.VALUE_INVERSE Value Inverted, Set mask to the level specified by the inverted ‘value’ property.INVERT Invert, Invert the mask. — enum in ['VALUE', 'VALUE_INVERSE', 'INVERT'], (optional)
		@param value Value, Mask level to use when mode is ‘Value’; zero means no masking and one is fully masked — float in [0, 1], (optional)
	**/
	static function mask_flood_fill(mode:bpy.ops.paint.Paint.Enum12, value:Float):Void;
	/**
		Add mask within the lasso as you move the brush
		@param path Path — bpy_prop_collection of OperatorMousePath, (optional)
		@param mode ModeVALUE Value, Set mask to the level specified by the ‘value’ property.VALUE_INVERSE Value Inverted, Set mask to the level specified by the inverted ‘value’ property.INVERT Invert, Invert the mask. — enum in ['VALUE', 'VALUE_INVERSE', 'INVERT'], (optional)
		@param value Value, Mask level to use when mode is ‘Value’; zero means no masking and one is fully masked — float in [0, 1], (optional)
	**/
	static function mask_lasso_gesture(path:Dynamic, mode:bpy.ops.paint.Paint.Enum13, value:Float):Void;
	/**
		Project an edited render from the active camera back onto the object
		@param image Image — enum in [], (optional)
	**/
	static function project_image(image:bpy.ops.paint.Paint.Enum14):Void;
	/**
		Use the mouse to sample a color in the image
		@param location Location — int array of 2 items in [0, inf], (optional)
		@param merged Sample Merged, Sample the output display color — boolean, (optional)
		@param palette Add to Palette — boolean, (optional)
	**/
	static function sample_color(location:Array<Int>, merged:Bool, palette:Bool):Void;
	/**
		Toggle texture paint mode in 3D view
	**/
	static function texture_paint_toggle():Void;
	/**
		Change selection for all vertices
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function vert_select_all(action:bpy.ops.paint.Paint.Enum15):Void;
	/**
		Select vertices without a group
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function vert_select_ungrouped(extend:Bool):Void;
	/**
		Adjust vertex color brightness/contrast
		@param brightness Brightness — float in [-100, 100], (optional)
		@param contrast Contrast — float in [-100, 100], (optional)
	**/
	static function vertex_color_brightness_contrast(brightness:Float, contrast:Float):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param blur_strength Blur Strength, Blur strength per iteration — float in [0.01, 1], (optional)
		@param blur_iterations Blur Iterations, Number of times to blur the colors (higher blurs more) — int in [0, 40], (optional)
		@param clean_angle Highlight Angle, Less than 90 limits the angle used in the tonal range — float in [0, 3.14159], (optional)
		@param dirt_angle Dirt Angle, Less than 90 limits the angle used in the tonal range — float in [0, 3.14159], (optional)
		@param dirt_only Dirt Only, Don’t calculate cleans for convex areas — boolean, (optional)
	**/
	static function vertex_color_dirt(blur_strength:Float, blur_iterations:Int, clean_angle:Float, dirt_angle:Float, dirt_only:Bool):Void;
	/**
		Convert active weight into gray scale vertex colors
	**/
	static function vertex_color_from_weight():Void;
	/**
		Adjust vertex color HSV values
		@param h Hue — float in [0, 1], (optional)
		@param s Saturation — float in [0, 2], (optional)
		@param v Value — float in [0, 2], (optional)
	**/
	static function vertex_color_hsv(h:Float, s:Float, v:Float):Void;
	/**
		Invert RGB values
	**/
	static function vertex_color_invert():Void;
	/**
		Adjust levels of vertex colors
		@param offset Offset, Value to add to colors — float in [-1, 1], (optional)
		@param gain Gain, Value to multiply colors by — float in [0, inf], (optional)
	**/
	static function vertex_color_levels(offset:Float, gain:Float):Void;
	/**
		Fill the active vertex color layer with the current paint color
	**/
	static function vertex_color_set():Void;
	/**
		Smooth colors across vertices
	**/
	static function vertex_color_smooth():Void;
	/**
		Paint a stroke in the active vertex color layer
		@param stroke Stroke — bpy_prop_collection of OperatorStrokeElement, (optional)
		@param mode Stroke Mode, Action taken when a paint stroke is madeNORMAL Normal, Apply brush normally.INVERT Invert, Invert action of brush for duration of stroke.SMOOTH Smooth, Switch brush to smooth mode for duration of stroke. — enum in ['NORMAL', 'INVERT', 'SMOOTH'], (optional)
	**/
	static function vertex_paint(stroke:Dynamic, mode:bpy.ops.paint.Paint.Enum16):Void;
	/**
		Toggle the vertex paint mode in 3D view
	**/
	static function vertex_paint_toggle():Void;
	/**
		Set the weights of the groups matching the attached armature’s selected bones, using the distance between the vertices and the bones
		@param type Type, Method to use for assigning weightsAUTOMATIC Automatic, Automatic weights from bones.ENVELOPES From Envelopes, Weights from envelopes with user defined radius. — enum in ['AUTOMATIC', 'ENVELOPES'], (optional)
	**/
	static function weight_from_bones(type:bpy.ops.paint.Paint.Enum17):Void;
	/**
		Draw a line to apply a weight gradient to selected vertices
		@param type Type — enum in ['LINEAR', 'RADIAL'], (optional)
		@param xstart X Start — int in [-inf, inf], (optional)
		@param xend X End — int in [-inf, inf], (optional)
		@param ystart Y Start — int in [-inf, inf], (optional)
		@param yend Y End — int in [-inf, inf], (optional)
		@param cursor Cursor, Mouse cursor style to use during the modal operator — int in [0, inf], (optional)
	**/
	static function weight_gradient(type:bpy.ops.paint.Paint.Enum18, xstart:Int, xend:Int, ystart:Int, yend:Int, cursor:Int):Void;
	/**
		Paint a stroke in the current vertex group’s weights
		@param stroke Stroke — bpy_prop_collection of OperatorStrokeElement, (optional)
		@param mode Stroke Mode, Action taken when a paint stroke is madeNORMAL Normal, Apply brush normally.INVERT Invert, Invert action of brush for duration of stroke.SMOOTH Smooth, Switch brush to smooth mode for duration of stroke. — enum in ['NORMAL', 'INVERT', 'SMOOTH'], (optional)
	**/
	static function weight_paint(stroke:Dynamic, mode:bpy.ops.paint.Paint.Enum19):Void;
	/**
		Toggle weight paint mode in 3D view
	**/
	static function weight_paint_toggle():Void;
	/**
		Use the mouse to sample a weight in the 3D view
	**/
	static function weight_sample():Void;
	/**
		Select one of the vertex groups available under current mouse position
		@param group Keying Set, The Keying Set to use — enum in ['DEFAULT'], (optional)
	**/
	static function weight_sample_group(group:bpy.ops.paint.Paint.Enum20):Void;
	/**
		Fill the active vertex group with the current paint weight
	**/
	static function weight_set():Void;
}