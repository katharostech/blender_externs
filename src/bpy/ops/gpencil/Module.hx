package bpy.ops.gpencil;
/**
	Gpencil Operators
**/
@:pythonImport("bpy.ops.gpencil") extern class Module {
	/**
		Delete the active frame for the active Grease Pencil Layer
	**/
	static function active_frame_delete():Void;
	/**
		Delete the active frame(s) of all editable Grease Pencil layers
	**/
	static function active_frames_delete_all():Void;
	/**
		Make annotations on the active data
		@param mode Mode, Way to interpret mouse movementsDRAW Draw Freehand, Draw freehand stroke(s).DRAW_STRAIGHT Draw Straight Lines, Draw straight line segment(s).DRAW_POLY Draw Poly Line, Click to place endpoints of straight line segments (connected).ERASER Eraser, Erase Annotation strokes. — enum in ['DRAW', 'DRAW_STRAIGHT', 'DRAW_POLY', 'ERASER'], (optional)
		@param stroke Stroke — bpy_prop_collection of OperatorStrokeElement, (optional)
		@param wait_for_input Wait for Input, Wait for first click instead of painting immediately — boolean, (optional)
	**/
	static function annotate(mode:bpy.ops.gpencil.Gpencil.Enum1, stroke:Dynamic, wait_for_input:Bool):Void;
	/**
		Insert a blank frame on the current frame (all subsequently existing frames, if any, are shifted right by one frame)
		@param all_layers All Layers, Create blank frame in all layers, not only active — boolean, (optional)
	**/
	static function blank_frame_add(all_layers:Bool):Void;
	/**
		Create a set of predefined Grease Pencil drawing brushes
	**/
	static function brush_presets_create():Void;
	/**
		Hide selected/unselected Grease Pencil colors
		@param unselected Unselected, Hide unselected rather than selected colors — boolean, (optional)
	**/
	static function color_hide(unselected:Bool):Void;
	/**
		Toggle whether the active color is the only one that is editable and/or visible
		@param affect_visibility Affect Visibility, In addition to toggling the editability, also affect the visibility — boolean, (optional)
	**/
	static function color_isolate(affect_visibility:Bool):Void;
	/**
		Lock all Grease Pencil colors to prevent them from being accidentally modified
	**/
	static function color_lock_all():Void;
	/**
		Unhide all hidden Grease Pencil colors
	**/
	static function color_reveal():Void;
	/**
		Select all Grease Pencil strokes using current color
		@param deselect Deselect, Unselect strokes — boolean, (optional)
	**/
	static function color_select(deselect:Bool):Void;
	/**
		Unlock all Grease Pencil colors so that they can be edited
	**/
	static function color_unlock_all():Void;
	/**
		Convert the active Grease Pencil layer to a new Curve Object
		@param type Type, Which type of curve to convert toPATH Path, Animation path.CURVE Bezier Curve, Smooth Bezier curve.POLY Polygon Curve, Bezier curve with straight-line segments (vector handles). — enum in ['PATH', 'CURVE', 'POLY'], (optional)
		@param use_normalize_weights Normalize Weight, Normalize weight (set from stroke width) — boolean, (optional)
		@param radius_multiplier Radius Fac, Multiplier for the points’ radii (set from stroke width) — float in [0, 1000], (optional)
		@param use_link_strokes Link Strokes, Whether to link strokes with zero-radius sections of curves — boolean, (optional)
		@param timing_mode Timing Mode, How to use timing data stored in strokesNONE No Timing, Ignore timing.LINEAR Linear, Simple linear timing.FULL Original, Use the original timing, gaps included.CUSTOMGAP Custom Gaps, Use the original timing, but with custom gap lengths (in frames). — enum in ['NONE', 'LINEAR', 'FULL', 'CUSTOMGAP'], (optional)
		@param frame_range Frame Range, The duration of evaluation of the path control curve — int in [1, 10000], (optional)
		@param start_frame Start Frame, The start frame of the path control curve — int in [1, 100000], (optional)
		@param use_realtime Realtime, Whether the path control curve reproduces the drawing in realtime, starting from Start Frame — boolean, (optional)
		@param end_frame End Frame, The end frame of the path control curve (if Realtime is not set) — int in [1, 100000], (optional)
		@param gap_duration Gap Duration, Custom Gap mode: (Average) length of gaps, in frames (Note: Realtime value, will be scaled if Realtime is not set) — float in [0, 10000], (optional)
		@param gap_randomness Gap Randomness, Custom Gap mode: Number of frames that gap lengths can vary — float in [0, 10000], (optional)
		@param seed Random Seed, Custom Gap mode: Random generator seed — int in [0, 1000], (optional)
		@param use_timing_data Has Valid Timing, Whether the converted Grease Pencil layer has valid timing data (internal use) — boolean, (optional)
	**/
	static function convert(type:bpy.ops.gpencil.Gpencil.Enum2, use_normalize_weights:Bool, radius_multiplier:Float, use_link_strokes:Bool, timing_mode:bpy.ops.gpencil.Gpencil.Enum3, frame_range:Int, start_frame:Int, use_realtime:Bool, end_frame:Int, gap_duration:Float, gap_randomness:Float, seed:Int, use_timing_data:Bool):Void;
	/**
		Convert 2.7x grease pencil files to 2.8
	**/
	static function convert_old_files():Void;
	/**
		Copy selected Grease Pencil points and strokes
	**/
	static function copy():Void;
	/**
		Add new Grease Pencil data-block
	**/
	static function data_add():Void;
	/**
		Unlink active Grease Pencil data-block
	**/
	static function data_unlink():Void;
	/**
		Delete selected Grease Pencil strokes, vertices, or frames
		@param type Type, Method used for deleting Grease Pencil dataPOINTS Points, Delete selected points and split strokes into segments.STROKES Strokes, Delete selected strokes.FRAME Frame, Delete active frame. — enum in ['POINTS', 'STROKES', 'FRAME'], (optional)
	**/
	static function delete(type:bpy.ops.gpencil.Gpencil.Enum4):Void;
	/**
		Delete selected points without splitting strokes
		@param type Type, Method used for disolving Stroke pointsPOINTS Dissolve, Dissolve selected points.BETWEEN Dissolve Between, Dissolve points between selected points.UNSELECT Dissolve Unselect, Dissolve all unselected points. — enum in ['POINTS', 'BETWEEN', 'UNSELECT'], (optional)
	**/
	static function dissolve(type:bpy.ops.gpencil.Gpencil.Enum5):Void;
	/**
		Draw a new stroke in the active Grease Pencil Object
		@param mode Mode, Way to interpret mouse movementsDRAW Draw Freehand, Draw freehand stroke(s).DRAW_STRAIGHT Draw Straight Lines, Draw straight line segment(s).DRAW_POLY Draw Poly Line, Click to place endpoints of straight line segments (connected).ERASER Eraser, Erase Grease Pencil strokes. — enum in ['DRAW', 'DRAW_STRAIGHT', 'DRAW_POLY', 'ERASER'], (optional)
		@param stroke Stroke — bpy_prop_collection of OperatorStrokeElement, (optional)
		@param wait_for_input Wait for Input, Wait for first click instead of painting immediately — boolean, (optional)
		@param disable_straight No Straight lines, Disable key for straight lines — boolean, (optional)
		@param disable_fill No Fill Areas, Disable fill to use stroke as fill boundary — boolean, (optional)
	**/
	static function draw(mode:bpy.ops.gpencil.Gpencil.Enum6, stroke:Dynamic, wait_for_input:Bool, disable_straight:Bool, disable_fill:Bool):Void;
	/**
		Duplicate the selected Grease Pencil strokes
	**/
	static function duplicate():Void;
	/**
		Make copies of the selected Grease Pencil strokes and move them
		@param GPENCIL_OT_duplicate Duplicate Strokes, Duplicate the selected Grease Pencil strokes — GPENCIL_OT_duplicate, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function duplicate_move(GPENCIL_OT_duplicate:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Enter/Exit edit mode for Grease Pencil strokes
		@param back Return to Previous Mode, Return to previous mode — boolean, (optional)
	**/
	static function editmode_toggle(back:Bool):Void;
	/**
		Fill with color the shape formed by strokes
		@param on_back Draw On Back, Send new stroke to Back — boolean, (optional)
	**/
	static function fill(on_back:Bool):Void;
	/**
		Remove ‘no fill’ boundary strokes
		@param mode ModeACTIVE Active Frame Only, Clean active frame only.ALL All Frames, Clean all frames in all layers. — enum in ['ACTIVE', 'ALL'], (optional)
	**/
	static function frame_clean_fill(mode:bpy.ops.gpencil.Gpencil.Enum7):Void;
	/**
		Remove loose points
		@param limit Limit, Number of points to consider stroke as loose — int in [1, inf], (optional)
	**/
	static function frame_clean_loose(limit:Int):Void;
	/**
		Make a copy of the active Grease Pencil Frame
		@param mode ModeACTIVE Active, Duplicate frame in active layer only.ALL All, Duplicate active frames in all layers. — enum in ['ACTIVE', 'ALL'], (optional)
	**/
	static function frame_duplicate(mode:bpy.ops.gpencil.Gpencil.Enum8):Void;
	/**
		Generate automatic weights for armatures (requires armature modifier)
		@param mode Mode — enum in ['NAME', 'AUTO'], (optional)
		@param armature Armature, Armature to use — enum in ['DEFAULT'], (optional)
		@param ratio Ratio, Ratio between bone length and influence radius — float in [0, 2], (optional)
		@param decay Decay, Factor to reduce influence depending of distance to bone axis — float in [0, 1], (optional)
	**/
	static function generate_weights(mode:bpy.ops.gpencil.Gpencil.Enum9, armature:bpy.ops.gpencil.Gpencil.Enum10, ratio:Float, decay:Float):Void;
	/**
		Hide selected/unselected Grease Pencil layers
		@param unselected Unselected, Hide unselected rather than selected layers — boolean, (optional)
	**/
	static function hide(unselected:Bool):Void;
	/**
		Interpolate grease pencil strokes between frames
		@param shift Shift, Bias factor for which frame has more influence on the interpolated strokes — float in [-1, 1], (optional)
	**/
	static function interpolate(shift:Float):Void;
	/**
		Remove breakdown frames generated by interpolating between two Grease Pencil frames
	**/
	static function interpolate_reverse():Void;
	/**
		Generate ‘in-betweens’ to smoothly interpolate between Grease Pencil frames
	**/
	static function interpolate_sequence():Void;
	/**
		Add new layer or note for the active data-block
	**/
	static function layer_add():Void;
	/**
		Change active Grease Pencil layer
		@param layer Grease Pencil Layer — enum in ['DEFAULT'], (optional)
	**/
	static function layer_change(layer:bpy.ops.gpencil.Gpencil.Enum11):Void;
	/**
		Make a copy of the active Grease Pencil layer
	**/
	static function layer_duplicate():Void;
	/**
		Make a copy of the active Grease Pencil layer to new object
		@param object Object, Name of the destination object — string, (optional, never None)
		@param mode Mode — enum in ['ALL', 'ACTIVE'], (optional)
	**/
	static function layer_duplicate_object(object:String, mode:bpy.ops.gpencil.Gpencil.Enum12):Void;
	/**
		Toggle whether the active layer is the only one that can be edited and/or visible
		@param affect_visibility Affect Visibility, In addition to toggling the editability, also affect the visibility — boolean, (optional)
	**/
	static function layer_isolate(affect_visibility:Bool):Void;
	/**
		Merge the current layer with the layer below
	**/
	static function layer_merge():Void;
	/**
		Move the active Grease Pencil layer up/down in the list
		@param type Type — enum in ['UP', 'DOWN'], (optional)
	**/
	static function layer_move(type:bpy.ops.gpencil.Gpencil.Enum13):Void;
	/**
		Remove active Grease Pencil layer
	**/
	static function layer_remove():Void;
	/**
		Lock all Grease Pencil layers to prevent them from being accidentally modified
	**/
	static function lock_all():Void;
	/**
		Lock and hide any color not used in any layer
	**/
	static function lock_layer():Void;
	/**
		Move selected strokes to another layer
		@param layer Grease Pencil Layer — enum in ['DEFAULT'], (optional)
	**/
	static function move_to_layer(layer:bpy.ops.gpencil.Gpencil.Enum14):Void;
	/**
		Enter/Exit paint mode for Grease Pencil strokes
		@param back Return to Previous Mode, Return to previous mode — boolean, (optional)
	**/
	static function paintmode_toggle(back:Bool):Void;
	/**
		Paste previously copied strokes or copy and merge in active layer
		@param type Type — enum in ['COPY', 'MERGE'], (optional)
	**/
	static function paste(type:bpy.ops.gpencil.Gpencil.Enum15):Void;
	/**
		Create predefined grease pencil stroke shapes
		@param edges Edges, Number of polygon edges — int in [2, 100], (optional)
		@param type Type, Type of shape — enum in ['BOX', 'LINE', 'CIRCLE'], (optional)
		@param wait_for_input Wait for Input — boolean, (optional)
	**/
	static function primitive(edges:Int, type:bpy.ops.gpencil.Gpencil.Enum16, wait_for_input:Bool):Void;
	/**
		Reproject the selected strokes from the current viewpoint as if they had been newly drawn (e.g. to fix problems from accidental 3D cursor movement or accidental viewport changes, or for matching deforming geometry)
		@param type Projection TypeFRONT Front, Reproject the strokes using the X-Z plane.SIDE Side, Reproject the strokes using the Y-Z plane.TOP Top, Reproject the strokes using the X-Y plane.VIEW View, Reproject the strokes to end up on the same plane, as if drawn from the current viewpoint using ‘Cursor’ Stroke Placement.SURFACE Surface, Reproject the strokes on to the scene geometry, as if drawn using ‘Surface’ placement. — enum in ['FRONT', 'SIDE', 'TOP', 'VIEW', 'SURFACE'], (optional)
	**/
	static function reproject(type:bpy.ops.gpencil.Gpencil.Enum17):Void;
	/**
		Show all Grease Pencil layers
		@param select Select — boolean, (optional)
	**/
	static function reveal(select:Bool):Void;
	/**
		Apply tweaks to strokes by painting over the strokes
		@param stroke Stroke — bpy_prop_collection of OperatorStrokeElement, (optional)
		@param wait_for_input Wait for Input, Enter a mini ‘sculpt-mode’ if enabled, otherwise, exit after drawing a single stroke — boolean, (optional)
	**/
	static function sculpt_paint(stroke:Dynamic, wait_for_input:Bool):Void;
	/**
		Enter/Exit sculpt mode for Grease Pencil strokes
		@param back Return to Previous Mode, Return to previous mode — boolean, (optional)
	**/
	static function sculptmode_toggle(back:Bool):Void;
	/**
		Select Grease Pencil strokes and/or stroke points
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param deselect Deselect, Remove from selection — boolean, (optional)
		@param toggle Toggle Selection, Toggle the selection — boolean, (optional)
		@param entire_strokes Entire Strokes, Select entire strokes instead of just the nearest stroke vertex — boolean, (optional)
		@param location Location, Mouse location — int array of 2 items in [-inf, inf], (optional)
	**/
	static function select(extend:Bool, deselect:Bool, toggle:Bool, entire_strokes:Bool, location:Array<Int>):Void;
	/**
		Change selection of all Grease Pencil strokes currently visible
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.gpencil.Gpencil.Enum18):Void;
	/**
		Select alternative points in same strokes as already selected points
		@param unselect_ends Unselect Ends, Do not select the first and last point of the stroke — boolean, (optional)
	**/
	static function select_alternate(unselect_ends:Bool):Void;
	/**
		Select Grease Pencil strokes within a rectangular region
		@param mode Mode — enum in ['SET', 'ADD', 'SUB', 'XOR', 'AND'], (optional)
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
	**/
	static function select_box(mode:bpy.ops.gpencil.Gpencil.Enum19, xmin:Int, xmax:Int, ymin:Int, ymax:Int):Void;
	/**
		Select Grease Pencil strokes using brush selection
		@param x X — int in [-inf, inf], (optional)
		@param y Y — int in [-inf, inf], (optional)
		@param radius Radius — int in [1, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
	**/
	static function select_circle(x:Int, y:Int, radius:Int, deselect:Bool):Void;
	/**
		Select first point in Grease Pencil strokes
		@param only_selected_strokes Selected Strokes Only, Only select the first point of strokes that already have points selected — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting all other selected points — boolean, (optional)
	**/
	static function select_first(only_selected_strokes:Bool, extend:Bool):Void;
	/**
		Select all strokes with similar characteristics
		@param type TypeLAYER Layer, Shared layers.MATERIAL Material, Shared materials. — enum in ['LAYER', 'MATERIAL'], (optional)
	**/
	static function select_grouped(type:bpy.ops.gpencil.Gpencil.Enum20):Void;
	/**
		Select Grease Pencil strokes using lasso selection
		@param mode Mode — enum in ['SET', 'ADD', 'SUB', 'XOR', 'AND'], (optional)
		@param path Path — bpy_prop_collection of OperatorMousePath, (optional)
	**/
	static function select_lasso(mode:bpy.ops.gpencil.Gpencil.Enum21, path:Dynamic):Void;
	/**
		Select last point in Grease Pencil strokes
		@param only_selected_strokes Selected Strokes Only, Only select the last point of strokes that already have points selected — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting all other selected points — boolean, (optional)
	**/
	static function select_last(only_selected_strokes:Bool, extend:Bool):Void;
	/**
		Shrink sets of selected Grease Pencil points
	**/
	static function select_less():Void;
	/**
		Select all points in same strokes as already selected points
	**/
	static function select_linked():Void;
	/**
		Grow sets of selected Grease Pencil points
	**/
	static function select_more():Void;
	/**
		Hide/Unhide selected points for Grease Pencil strokes setting alpha factor
	**/
	static function selection_opacity_toggle():Void;
	/**
		Set selection mode for Grease Pencil strokes
		@param mode Select mode, Select mode — int in [0, 1], (optional)
	**/
	static function selectmode_toggle(mode:Int):Void;
	/**
		Snap cursor to center of selected points
	**/
	static function snap_cursor_to_selected():Void;
	/**
		Snap selected points/strokes to the cursor
		@param use_offset With Offset, Offset the entire stroke instead of selected points only — boolean, (optional)
	**/
	static function snap_to_cursor(use_offset:Bool):Void;
	/**
		Snap selected points to the nearest grid points
	**/
	static function snap_to_grid():Void;
	/**
		Apply the thickness change of the layer to its strokes
	**/
	static function stroke_apply_thickness():Void;
	/**
		Arrange selected strokes up/down in the drawing order of the active layer
		@param direction Direction — enum in ['UP', 'DOWN', 'TOP', 'BOTTOM'], (optional)
	**/
	static function stroke_arrange(direction:bpy.ops.gpencil.Gpencil.Enum22):Void;
	/**
		Move selected strokes to active material
		@param material Material, Name of the material — string, (optional, never None)
	**/
	static function stroke_change_color(material:String):Void;
	/**
		Close or open the selected stroke adding an edge from last to first point
		@param type Type — enum in ['CLOSE', 'OPEN', 'TOGGLE'], (optional)
	**/
	static function stroke_cyclical_set(type:bpy.ops.gpencil.Gpencil.Enum23):Void;
	/**
		Change direction of the points of the selected strokes
	**/
	static function stroke_flip():Void;
	/**
		Join selected strokes (optionally as new stroke)
		@param type Type — enum in ['JOIN', 'JOINCOPY'], (optional)
		@param leave_gaps Leave Gaps, Leave gaps between joined strokes instead of linking them — boolean, (optional)
	**/
	static function stroke_join(type:bpy.ops.gpencil.Gpencil.Enum24, leave_gaps:Bool):Void;
	/**
		Lock any color not used in any selected stroke
	**/
	static function stroke_lock_color():Void;
	/**
		Separate the selected strokes or layer in a new grease pencil object
		@param mode ModePOINT Selected Points, Separate the selected points.STROKE Selected Strokes, Separate the selected strokes.LAYER Active Layer, Separate the strokes of the current layer. — enum in ['POINT', 'STROKE', 'LAYER'], (optional)
	**/
	static function stroke_separate(mode:bpy.ops.gpencil.Gpencil.Enum25):Void;
	/**
		Simplify selected stroked reducing number of points
		@param factor Factor — float in [0, 100], (optional)
	**/
	static function stroke_simplify(factor:Float):Void;
	/**
		Simplify selected stroked reducing number of points using fixed algorithm
		@param step Steps, Number of simplify steps — int in [1, 100], (optional)
	**/
	static function stroke_simplify_fixed(step:Int):Void;
	/**
		Split selected points as new stroke on same frame
	**/
	static function stroke_split():Void;
	/**
		Subdivide between continuous selected points of the stroke adding a point half way between them
		@param number_cuts Number of Cuts — int in [1, 10], (optional)
	**/
	static function stroke_subdivide(number_cuts:Int):Void;
	/**
		Unlock all Grease Pencil layers so that they can be edited
	**/
	static function unlock_all():Void;
	/**
		Assign the selected vertices to the active vertex group
	**/
	static function vertex_group_assign():Void;
	/**
		Deselect all selected vertices assigned to the active vertex group
	**/
	static function vertex_group_deselect():Void;
	/**
		Invert weights to the active vertex group
	**/
	static function vertex_group_invert():Void;
	/**
		Remove the selected vertices from active or all vertex group(s)
	**/
	static function vertex_group_remove_from():Void;
	/**
		Select all the vertices assigned to the active vertex group
	**/
	static function vertex_group_select():Void;
	/**
		Smooth weights to the active vertex group
		@param factor Factor — float in [0, 1], (optional)
		@param repeat Iterations — int in [1, 10000], (optional)
	**/
	static function vertex_group_smooth(factor:Float, repeat:Int):Void;
	/**
		Enter/Exit weight paint mode for Grease Pencil strokes
		@param back Return to Previous Mode, Return to previous mode — boolean, (optional)
	**/
	static function weightmode_toggle(back:Bool):Void;
}