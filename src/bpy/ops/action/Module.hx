package bpy.ops.action;
/**
	Action Operators
**/
@:pythonImport("bpy.ops.action") extern class Module {
	/**
		Simplify F-Curves by removing closely spaced keyframes
		@param threshold Threshold — float in [0, inf], (optional)
		@param channels Channels — boolean, (optional)
	**/
	static function clean(threshold:Float, channels:Bool):Void;
	/**
		Select keyframes by clicking on them
		@param extend Extend Select, Toggle keyframe selection instead of leaving newly selected keyframes only — boolean, (optional)
		@param column Column Select, Select all keyframes that occur on the same frame as the one under the mouse — boolean, (optional)
		@param channel Only Channel, Select all the keyframes in the channel under the mouse — boolean, (optional)
	**/
	static function clickselect(extend:Bool, column:Bool, channel:Bool):Void;
	/**
		Copy selected keyframes to the copy/paste buffer
	**/
	static function copy():Void;
	/**
		Remove all selected keyframes
	**/
	static function delete():Void;
	/**
		Make a copy of all selected keyframes
	**/
	static function duplicate():Void;
	/**
		Make a copy of all selected keyframes and move them
		@param ACTION_OT_duplicate Duplicate Keyframes, Make a copy of all selected keyframes — ACTION_OT_duplicate, (optional)
		@param TRANSFORM_OT_transform Transform, Transform selected items by mode type — TRANSFORM_OT_transform, (optional)
	**/
	static function duplicate_move(ACTION_OT_duplicate:Dynamic, TRANSFORM_OT_transform:Dynamic):Void;
	/**
		Set extrapolation mode for selected F-Curves
		@param type TypeCONSTANT Constant Extrapolation, Values on endpoint keyframes are held.LINEAR Linear Extrapolation, Straight-line slope of end segments are extended past the endpoint keyframes.MAKE_CYCLIC Make Cyclic (F-Modifier), Add Cycles F-Modifier if one doesn’t exist already.CLEAR_CYCLIC Clear Cyclic (F-Modifier), Remove Cycles F-Modifier if not needed anymore. — enum in ['CONSTANT', 'LINEAR', 'MAKE_CYCLIC', 'CLEAR_CYCLIC'], (optional)
	**/
	static function extrapolation_type(type:bpy.ops.action.Action.Enum1):Void;
	/**
		Set the current frame to the average frame value of selected keyframes
	**/
	static function frame_jump():Void;
	/**
		Set type of handle for selected keyframes
		@param type TypeFREE Free, Completely independent manually set handle.ALIGNED Aligned, Manually set handle with rotation locked together with its pair.VECTOR Vector, Automatic handles that create straight lines.AUTO Automatic, Automatic handles that create smooth curves.AUTO_CLAMPED Auto Clamped, Automatic handles that create smooth curves which only change direction at keyframes. — enum in ['FREE', 'ALIGNED', 'VECTOR', 'AUTO', 'AUTO_CLAMPED'], (optional)
	**/
	static function handle_type(type:bpy.ops.action.Action.Enum2):Void;
	/**
		Set interpolation mode for the F-Curve segments starting from the selected keyframes
		@param type TypeCONSTANT Constant, No interpolation, value of A gets held until B is encountered.LINEAR Linear, Straight-line interpolation between A and B (i.e. no ease in/out).BEZIER Bezier, Smooth interpolation between A and B, with some control over curve shape.SINE Sinusoidal, Sinusoidal easing (weakest, almost linear but with a slight curvature).QUAD Quadratic, Quadratic easing.CUBIC Cubic, Cubic easing.QUART Quartic, Quartic easing.QUINT Quintic, Quintic easing.EXPO Exponential, Exponential easing (dramatic).CIRC Circular, Circular easing (strongest and most dynamic).BACK Back, Cubic easing with overshoot and settle.BOUNCE Bounce, Exponentially decaying parabolic bounce, like when objects collide.ELASTIC Elastic, Exponentially decaying sine wave, like an elastic band. — enum in ['CONSTANT', 'LINEAR', 'BEZIER', 'SINE', 'QUAD', 'CUBIC', 'QUART', 'QUINT', 'EXPO', 'CIRC', 'BACK', 'BOUNCE', 'ELASTIC'], (optional)
	**/
	static function interpolation_type(type:bpy.ops.action.Action.Enum3):Void;
	/**
		Insert keyframes for the specified channels
		@param type Type — enum in ['ALL', 'SEL', 'GROUP'], (optional)
	**/
	static function keyframe_insert(type:bpy.ops.action.Action.Enum4):Void;
	/**
		Set type of keyframe for the selected keyframes
		@param type TypeKEYFRAME Keyframe, Normal keyframe - e.g. for key poses.BREAKDOWN Breakdown, A breakdown pose - e.g. for transitions between key poses.MOVING_HOLD Moving Hold, A keyframe that is part of a moving hold.EXTREME Extreme, An ‘extreme’ pose, or some other purpose as needed.JITTER Jitter, A filler or baked keyframe for keying on ones, or some other purpose as needed. — enum in ['KEYFRAME', 'BREAKDOWN', 'MOVING_HOLD', 'EXTREME', 'JITTER'], (optional)
	**/
	static function keyframe_type(type:bpy.ops.action.Action.Enum5):Void;
	/**
		Switch to editing action in animation layer above the current action in the NLA Stack
	**/
	static function layer_next():Void;
	/**
		Switch to editing action in animation layer below the current action in the NLA Stack
	**/
	static function layer_prev():Void;
	/**
		Move selected scene markers to the active Action as local ‘pose’ markers
	**/
	static function markers_make_local():Void;
	/**
		Flip selected keyframes over the selected mirror line
		@param type TypeCFRA By Times over Current frame, Flip times of selected keyframes using the current frame as the mirror line.XAXIS By Values over Value=0, Flip values of selected keyframes (i.e. negative values become positive, and vice versa).MARKER By Times over First Selected Marker, Flip times of selected keyframes using the first selected marker as the reference point. — enum in ['CFRA', 'XAXIS', 'MARKER'], (optional)
	**/
	static function mirror(type:bpy.ops.action.Action.Enum6):Void;
	/**
		Create new action
	**/
	static function new():Void;
	/**
		Paste keyframes from copy/paste buffer for the selected channels, starting on the current frame
		@param offset Offset, Paste time offset of keysSTART Frame Start, Paste keys starting at current frame.END Frame End, Paste keys ending at current frame.RELATIVE Frame Relative, Paste keys relative to the current frame when copying.NONE No Offset, Paste keys from original time. — enum in ['START', 'END', 'RELATIVE', 'NONE'], (optional)
		@param merge Type, Method of merging pasted keys and existingMIX Mix, Overlay existing with new keys.OVER_ALL Overwrite All, Replace all keys.OVER_RANGE Overwrite Range, Overwrite keys in pasted range.OVER_RANGE_ALL Overwrite Entire Range, Overwrite keys in pasted range, using the range of all copied keys. — enum in ['MIX', 'OVER_ALL', 'OVER_RANGE', 'OVER_RANGE_ALL'], (optional)
		@param flipped Flipped, Paste keyframes from mirrored bones if they exist — boolean, (optional)
	**/
	static function paste(offset:bpy.ops.action.Action.Enum7, merge:bpy.ops.action.Action.Enum8, flipped:Bool):Void;
	/**
		Set Preview Range based on extents of selected Keyframes
	**/
	static function previewrange_set():Void;
	/**
		Toggle the properties region visibility
	**/
	static function properties():Void;
	/**
		Push action down on to the NLA stack as a new strip
	**/
	static function push_down():Void;
	/**
		Add keyframes on every frame between the selected keyframes
	**/
	static function sample():Void;
	/**
		Toggle selection of all keyframes
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.action.Action.Enum9):Void;
	/**
		Select all keyframes within the specified region
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param axis_range Axis Range — boolean, (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool, axis_range:Bool):Void;
	/**
		Select keyframe points using circle selection
		@param x X — int in [-inf, inf], (optional)
		@param y Y — int in [-inf, inf], (optional)
		@param radius Radius — int in [1, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
	**/
	static function select_circle(x:Int, y:Int, radius:Int, deselect:Bool):Void;
	/**
		Select all keyframes on the specified frame(s)
		@param mode Mode — enum in ['KEYS', 'CFRA', 'MARKERS_COLUMN', 'MARKERS_BETWEEN'], (optional)
	**/
	static function select_column(mode:bpy.ops.action.Action.Enum10):Void;
	/**
		Select keyframe points using lasso selection
		@param path Path — bpy_prop_collection of OperatorMousePath, (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_lasso(path:Dynamic, deselect:Bool, extend:Bool):Void;
	/**
		Select keyframes to the left or the right of the current frame
		@param mode Mode — enum in ['CHECK', 'LEFT', 'RIGHT'], (optional)
		@param extend Extend Select — boolean, (optional)
	**/
	static function select_leftright(mode:bpy.ops.action.Action.Enum11, extend:Bool):Void;
	/**
		Deselect keyframes on ends of selection islands
	**/
	static function select_less():Void;
	/**
		Select keyframes occurring in the same F-Curves as selected ones
	**/
	static function select_linked():Void;
	/**
		Select keyframes beside already selected ones
	**/
	static function select_more():Void;
	/**
		Snap selected keyframes to the times specified
		@param type TypeCFRA Current frame, Snap selected keyframes to the current frame.NEAREST_FRAME Nearest Frame, Snap selected keyframes to the nearest (whole) frame (use to fix accidental sub-frame offsets).NEAREST_SECOND Nearest Second, Snap selected keyframes to the nearest second.NEAREST_MARKER Nearest Marker, Snap selected keyframes to the nearest marker. — enum in ['CFRA', 'NEAREST_FRAME', 'NEAREST_SECOND', 'NEAREST_MARKER'], (optional)
	**/
	static function snap(type:bpy.ops.action.Action.Enum12):Void;
	/**
		Store this action in the NLA stack as a non-contributing strip for later use
		@param create_new Create New Action, Create a new action once the existing one has been safely stored — boolean, (optional)
	**/
	static function stash(create_new:Bool):Void;
	/**
		Store this action in the NLA stack as a non-contributing strip for later use, and create a new action
	**/
	static function stash_and_create():Void;
	/**
		Unlink this action from the active action slot (and/or exit Tweak Mode)
		@param force_delete Force Delete, Clear Fake User and remove copy stashed in this data-block’s NLA stack — boolean, (optional)
	**/
	static function unlink(force_delete:Bool):Void;
	/**
		Reset viewable area to show full keyframe range
	**/
	static function view_all():Void;
	/**
		Reset viewable area to show range around current frame
	**/
	static function view_frame():Void;
	/**
		Reset viewable area to show selected keyframes range
	**/
	static function view_selected():Void;
}