package bpy.ops.curve;
/**
	Curve Operators
**/
@:pythonImport("bpy.ops.curve") extern class Module {
	/**
		Make active spline closed/opened loop
		@param direction Direction, Direction to make surface cyclic in — enum in ['CYCLIC_U', 'CYCLIC_V'], (optional)
	**/
	static function cyclic_toggle(direction:bpy.ops.curve.Curve.Enum1):Void;
	/**
		(De)select first of visible part of each NURBS
	**/
	static function de_select_first():Void;
	/**
		(De)select last of visible part of each NURBS
	**/
	static function de_select_last():Void;
	/**
		Simplify selected curves
		@param ratio Ratio — float in [0, 1], (optional)
	**/
	static function decimate(ratio:Float):Void;
	/**
		Delete selected control points or segments
		@param type Type, Which elements to delete — enum in ['VERT', 'SEGMENT'], (optional)
	**/
	static function delete(type:bpy.ops.curve.Curve.Enum2):Void;
	/**
		Delete selected control points, correcting surrounding handles
	**/
	static function dissolve_verts():Void;
	/**
		Draw a freehand spline
		@param error_threshold Error, Error distance threshold (in object units) — float in [0, 10], (optional)
		@param fit_method Fit MethodREFIT Refit, Incrementally re-fit the curve (high quality).SPLIT Split, Split the curve until the tolerance is met (fast). — enum in ['REFIT', 'SPLIT'], (optional)
		@param corner_angle Corner Angle — float in [0, 3.14159], (optional)
		@param use_cyclic Cyclic — boolean, (optional)
		@param stroke Stroke — bpy_prop_collection of OperatorStrokeElement, (optional)
		@param wait_for_input Wait for Input — boolean, (optional)
	**/
	static function draw(error_threshold:Float, fit_method:bpy.ops.curve.Curve.Enum3, corner_angle:Float, use_cyclic:Bool, stroke:Dynamic, wait_for_input:Bool):Void;
	/**
		Duplicate selected control points
	**/
	static function duplicate():Void;
	/**
		Duplicate curve and move
		@param CURVE_OT_duplicate Duplicate Curve, Duplicate selected control points — CURVE_OT_duplicate, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function duplicate_move(CURVE_OT_duplicate:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Extrude selected control point(s)
		@param mode Mode — enum in ['INIT', 'DUMMY', 'TRANSLATION', 'ROTATION', 'RESIZE', 'SKIN_RESIZE', 'TOSPHERE', 'SHEAR', 'BEND', 'SHRINKFATTEN', 'TILT', 'TRACKBALL', 'PUSHPULL', 'CREASE', 'MIRROR', 'BONE_SIZE', 'BONE_ENVELOPE', 'BONE_ENVELOPE_DIST', 'CURVE_SHRINKFATTEN', 'MASK_SHRINKFATTEN', 'GPENCIL_SHRINKFATTEN', 'BONE_ROLL', 'TIME_TRANSLATE', 'TIME_SLIDE', 'TIME_SCALE', 'TIME_EXTEND', 'BAKE_TIME', 'BWEIGHT', 'ALIGN', 'EDGESLIDE', 'SEQSLIDE'], (optional)
	**/
	static function extrude(mode:bpy.ops.curve.Curve.Enum4):Void;
	/**
		Extrude curve and move result
		@param CURVE_OT_extrude Extrude, Extrude selected control point(s) — CURVE_OT_extrude, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function extrude_move(CURVE_OT_extrude:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Set type of handles for selected control points
		@param type Type, Spline type — enum in ['AUTOMATIC', 'VECTOR', 'ALIGNED', 'FREE_ALIGN', 'TOGGLE_FREE_ALIGN'], (optional)
	**/
	static function handle_type_set(type:bpy.ops.curve.Curve.Enum5):Void;
	/**
		Hide (un)selected control points
		@param unselected Unselected, Hide unselected rather than selected — boolean, (optional)
	**/
	static function hide(unselected:Bool):Void;
	/**
		Join two curves by their selected ends
	**/
	static function make_segment():Void;
	/**
		Match texture space to object’s bounding box
	**/
	static function match_texture_space():Void;
	/**
		Recalculate the direction of selected handles
		@param calc_length Length, Recalculate handle length — boolean, (optional)
	**/
	static function normals_make_consistent(calc_length:Bool):Void;
	/**
		Construct a Bezier Circle
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_bezier_circle_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a Bezier Curve
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_bezier_curve_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a Nurbs Circle
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_nurbs_circle_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a Nurbs Curve
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_nurbs_curve_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a Path
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_nurbs_path_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Set per-point radius which is used for bevel tapering
		@param radius Radius — float in [0, inf], (optional)
	**/
	static function radius_set(radius:Float):Void;
	/**
		Reveal hidden control points
		@param select Select — boolean, (optional)
	**/
	static function reveal(select:Bool):Void;
	/**
		(De)select all control points
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.curve.Curve.Enum6):Void;
	/**
		Reduce current selection by deselecting boundary elements
	**/
	static function select_less():Void;
	/**
		Select all control points linked to the current selection
	**/
	static function select_linked():Void;
	/**
		Select all control points linked to already selected ones
		@param deselect Deselect, Deselect linked control points rather than selecting them — boolean, (optional)
	**/
	static function select_linked_pick(deselect:Bool):Void;
	/**
		Select control points directly linked to already selected ones
	**/
	static function select_more():Void;
	/**
		Select control points following already selected ones along the curves
	**/
	static function select_next():Void;
	/**
		Deselect every other vertex
		@param nth Nth Element, Skip every Nth element — int in [2, inf], (optional)
		@param skip Skip, Number of elements to skip at once — int in [1, inf], (optional)
		@param offset Offset, Offset from the starting point — int in [-inf, inf], (optional)
	**/
	static function select_nth(nth:Int, skip:Int, offset:Int):Void;
	/**
		Select control points preceding already selected ones along the curves
	**/
	static function select_previous():Void;
	/**
		Randomly select some control points
		@param percent Percent, Percentage of objects to select randomly — float in [0, 100], (optional)
		@param seed Random Seed, Seed for the random number generator — int in [0, inf], (optional)
		@param action Action, Selection action to executeSELECT Select, Select all elements.DESELECT Deselect, Deselect all elements. — enum in ['SELECT', 'DESELECT'], (optional)
	**/
	static function select_random(percent:Float, seed:Int, action:bpy.ops.curve.Curve.Enum7):Void;
	/**
		Select a row of control points including active one
	**/
	static function select_row():Void;
	/**
		Select similar curve points by property type
		@param type Type — enum in ['TYPE', 'RADIUS', 'WEIGHT', 'DIRECTION'], (optional)
		@param compare Compare — enum in ['EQUAL', 'GREATER', 'LESS'], (optional)
		@param threshold Threshold — float in [0, inf], (optional)
	**/
	static function select_similar(type:bpy.ops.curve.Curve.Enum8, compare:bpy.ops.curve.Curve.Enum9, threshold:Float):Void;
	/**
		Separate selected points from connected unselected points into a new object
	**/
	static function separate():Void;
	/**
		Set shading to flat
	**/
	static function shade_flat():Void;
	/**
		Set shading to smooth
	**/
	static function shade_smooth():Void;
	/**
		Select shortest path between two selections
	**/
	static function shortest_path_pick():Void;
	/**
		Flatten angles of selected points
	**/
	static function smooth():Void;
	/**
		Interpolate radii of selected points
	**/
	static function smooth_radius():Void;
	/**
		Interpolate tilt of selected points
	**/
	static function smooth_tilt():Void;
	/**
		Interpolate weight of selected points
	**/
	static function smooth_weight():Void;
	/**
		Extrude selected boundary row around pivot point and current view axis
		@param center Center, Center in global view space — float array of 3 items in [-inf, inf], (optional)
		@param axis Axis, Axis in global view space — float array of 3 items in [-1, 1], (optional)
	**/
	static function spin(center:Array<Float>, axis:Array<Float>):Void;
	/**
		Set type of active spline
		@param type Type, Spline type — enum in ['POLY', 'BEZIER', 'NURBS'], (optional)
		@param use_handles Handles, Use handles when converting bezier curves into polygons — boolean, (optional)
	**/
	static function spline_type_set(type:bpy.ops.curve.Curve.Enum10, use_handles:Bool):Void;
	/**
		Set softbody goal weight for selected points
		@param weight Weight — float in [0, 1], (optional)
	**/
	static function spline_weight_set(weight:Float):Void;
	/**
		Split off selected points from connected unselected points
	**/
	static function split():Void;
	/**
		Subdivide selected segments
		@param number_cuts Number of cuts — int in [1, 1000], (optional)
	**/
	static function subdivide(number_cuts:Int):Void;
	/**
		Switch direction of selected splines
	**/
	static function switch_direction():Void;
	/**
		Clear the tilt of selected control points
	**/
	static function tilt_clear():Void;
	/**
		Add a new control point (linked to only selected end-curve one, if any)
		@param location Location, Location to add new vertex at — float array of 3 items in [-inf, inf], (optional)
	**/
	static function vertex_add(location:Array<Float>):Void;
}