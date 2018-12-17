package bpy.ops.mask;
/**
	Mask Operators
**/
@:pythonImport("bpy.ops.mask") extern class Module {
	/**
		Add vertex to feather
		@param location Location, Location of vertex in normalized space — float array of 2 items in [-inf, inf], (optional)
	**/
	static function add_feather_vertex(location:Array<Float>):Void;
	/**
		Add new vertex to feather and slide it
		@param MASK_OT_add_feather_vertex Add Feather Vertex, Add vertex to feather — MASK_OT_add_feather_vertex, (optional)
		@param MASK_OT_slide_point Slide Point, Slide control points — MASK_OT_slide_point, (optional)
	**/
	static function add_feather_vertex_slide(MASK_OT_add_feather_vertex:Dynamic, MASK_OT_slide_point:Dynamic):Void;
	/**
		Add vertex to active spline
		@param location Location, Location of vertex in normalized space — float array of 2 items in [-inf, inf], (optional)
	**/
	static function add_vertex(location:Array<Float>):Void;
	/**
		Add new vertex and slide it
		@param MASK_OT_add_vertex Add Vertex, Add vertex to active spline — MASK_OT_add_vertex, (optional)
		@param MASK_OT_slide_point Slide Point, Slide control points — MASK_OT_slide_point, (optional)
	**/
	static function add_vertex_slide(MASK_OT_add_vertex:Dynamic, MASK_OT_slide_point:Dynamic):Void;
	/**
		Copy selected splines to clipboard
	**/
	static function copy_splines():Void;
	/**
		Toggle cyclic for selected splines
	**/
	static function cyclic_toggle():Void;
	/**
		Delete selected control points or splines
	**/
	static function delete():Void;
	/**
		Duplicate selected control points and segments between them
	**/
	static function duplicate():Void;
	/**
		Duplicate mask and move
		@param MASK_OT_duplicate Duplicate Mask, Duplicate selected control points and segments between them — MASK_OT_duplicate, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function duplicate_move(MASK_OT_duplicate:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Reset the feather weight to zero
	**/
	static function feather_weight_clear():Void;
	/**
		Set type of handles for selected control points
		@param type Type, Spline type — enum in ['AUTO', 'VECTOR', 'ALIGNED', 'ALIGNED_DOUBLESIDE', 'FREE'], (optional)
	**/
	static function handle_type_set(type:bpy.ops.mask.Mask.Enum1):Void;
	/**
		Reveal the layer by setting the hide flag
		@param select Select — boolean, (optional)
	**/
	static function hide_view_clear(select:Bool):Void;
	/**
		Hide the layer by setting the hide flag
		@param unselected Unselected, Hide unselected rather than selected layers — boolean, (optional)
	**/
	static function hide_view_set(unselected:Bool):Void;
	/**
		Move the active layer up/down in the list
		@param direction Direction, Direction to move the active layer — enum in ['UP', 'DOWN'], (optional)
	**/
	static function layer_move(direction:bpy.ops.mask.Mask.Enum2):Void;
	/**
		Add new mask layer for masking
		@param name Name, Name of new mask layer — string, (optional, never None)
	**/
	static function layer_new(name:String):Void;
	/**
		Remove mask layer
	**/
	static function layer_remove():Void;
	/**
		Create new mask
		@param name Name, Name of new mask — string, (optional, never None)
	**/
	static function pyNew(name:String):Void;
	/**
		Re-calculate the direction of selected handles
	**/
	static function normals_make_consistent():Void;
	/**
		Clear the mask’s parenting
	**/
	static function parent_clear():Void;
	/**
		Set the mask’s parenting
	**/
	static function parent_set():Void;
	/**
		Paste splines from clipboard
	**/
	static function paste_splines():Void;
	/**
		Add new circle-shaped spline
		@param size Size, Size of new circle — float in [-inf, inf], (optional)
		@param location Location, Location of new circle — float array of 2 items in [-inf, inf], (optional)
	**/
	static function primitive_circle_add(size:Float, location:Array<Float>):Void;
	/**
		Add new square-shaped spline
		@param size Size, Size of new circle — float in [-inf, inf], (optional)
		@param location Location, Location of new circle — float array of 2 items in [-inf, inf], (optional)
	**/
	static function primitive_square_add(size:Float, location:Array<Float>):Void;
	/**
		Select spline points
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param deselect Deselect, Remove from selection — boolean, (optional)
		@param toggle Toggle Selection, Toggle the selection — boolean, (optional)
		@param location Location, Location of vertex in normalized space — float array of 2 items in [-inf, inf], (optional)
	**/
	static function select(extend:Bool, deselect:Bool, toggle:Bool, location:Array<Float>):Void;
	/**
		Change selection of all curve points
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.mask.Mask.Enum3):Void;
	/**
		Select curve points using box selection
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool):Void;
	/**
		Select curve points using circle selection
		@param x X — int in [-inf, inf], (optional)
		@param y Y — int in [-inf, inf], (optional)
		@param radius Radius — int in [1, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
	**/
	static function select_circle(x:Int, y:Int, radius:Int, deselect:Bool):Void;
	/**
		Select curve points using lasso selection
		@param path Path — bpy_prop_collection of OperatorMousePath, (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_lasso(path:Dynamic, deselect:Bool, extend:Bool):Void;
	/**
		Deselect spline points at the boundary of each selection region
	**/
	static function select_less():Void;
	/**
		Select all curve points linked to already selected ones
	**/
	static function select_linked():Void;
	/**
		(De)select all points linked to the curve under the mouse cursor
		@param deselect Deselect — boolean, (optional)
	**/
	static function select_linked_pick(deselect:Bool):Void;
	/**
		Select more spline points connected to initial selection
	**/
	static function select_more():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function shape_key_clear():Void;
	/**
		Reset feather weights on all selected points animation values
	**/
	static function shape_key_feather_reset():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function shape_key_insert():Void;
	/**
		Recalculate animation data on selected points for frames selected in the dopesheet
		@param location Location — boolean, (optional)
		@param feather Feather — boolean, (optional)
	**/
	static function shape_key_rekey(location:Bool, feather:Bool):Void;
	/**
		Slide control points
		@param slide_feather Slide Feather, First try to slide feather instead of vertex — boolean, (optional)
		@param is_new_point Slide New Point, Newly created vertex is being slid — boolean, (optional)
	**/
	static function slide_point(slide_feather:Bool, is_new_point:Bool):Void;
	/**
		Slide a point on the spline to define it’s curvature
	**/
	static function slide_spline_curvature():Void;
	/**
		Switch direction of selected splines
	**/
	static function switch_direction():Void;
}