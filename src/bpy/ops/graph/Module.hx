package bpy.ops.graph;
/**
	Graph Operators
**/
@:pythonImport("bpy.ops.graph") extern class Module {
	/**
		Bake selected F-Curves to a set of sampled points defining a similar curve
	**/
	static function bake():Void;
	/**
		Simplify F-Curves by removing closely spaced keyframes
		@param threshold Threshold — float in [0, inf], (optional)
		@param channels Channels — boolean, (optional)
	**/
	static function clean(threshold:Float, channels:Bool):Void;
	/**
		Insert new keyframe at the cursor position for the active F-Curve
		@param frame Frame Number, Frame to insert keyframe on — float in [-inf, inf], (optional)
		@param value Value, Value for keyframe on — float in [-inf, inf], (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function click_insert(frame:Float, value:Float, extend:Bool):Void;
	/**
		Select keyframes by clicking on them
		@param extend Extend Select, Toggle keyframe selection instead of leaving newly selected keyframes only — boolean, (optional)
		@param column Column Select, Select all keyframes that occur on the same frame as the one under the mouse — boolean, (optional)
		@param curves Only Curves, Select all the keyframes in the curve — boolean, (optional)
	**/
	static function clickselect(extend:Bool, column:Bool, curves:Bool):Void;
	/**
		Copy selected keyframes to the copy/paste buffer
	**/
	static function copy():Void;
	/**
		Interactively set the current frame and value cursor
		@param frame Frame — float in [-1.04857e+06, 1.04857e+06], (optional)
		@param value Value — float in [-inf, inf], (optional)
	**/
	static function cursor_set(frame:Float, value:Float):Void;
	/**
		Remove all selected keyframes
	**/
	static function delete():Void;
	/**
		Delete all visible drivers considered invalid
	**/
	static function driver_delete_invalid():Void;
	/**
		Copy the driver variables of the active F-Curve
	**/
	static function driver_variables_copy():Void;
	/**
		Add copied driver variables to the active driver
		@param replace Replace Existing, Replace existing driver variables, instead of just appending to the end of the existing list — boolean, (optional)
	**/
	static function driver_variables_paste(replace:Bool):Void;
	/**
		Make a copy of all selected keyframes
		@param mode Mode — enum in ['INIT', 'DUMMY', 'TRANSLATION', 'ROTATION', 'RESIZE', 'SKIN_RESIZE', 'TOSPHERE', 'SHEAR', 'BEND', 'SHRINKFATTEN', 'TILT', 'TRACKBALL', 'PUSHPULL', 'CREASE', 'MIRROR', 'BONE_SIZE', 'BONE_ENVELOPE', 'BONE_ENVELOPE_DIST', 'CURVE_SHRINKFATTEN', 'MASK_SHRINKFATTEN', 'GPENCIL_SHRINKFATTEN', 'BONE_ROLL', 'TIME_TRANSLATE', 'TIME_SLIDE', 'TIME_SCALE', 'TIME_EXTEND', 'BAKE_TIME', 'BWEIGHT', 'ALIGN', 'EDGESLIDE', 'SEQSLIDE'], (optional)
	**/
	static function duplicate(mode:bpy.ops.graph.Graph.Enum1):Void;
	/**
		Make a copy of all selected keyframes and move them
		@param GRAPH_OT_duplicate Duplicate Keyframes, Make a copy of all selected keyframes — GRAPH_OT_duplicate, (optional)
		@param TRANSFORM_OT_transform Transform, Transform selected items by mode type — TRANSFORM_OT_transform, (optional)
	**/
	static function duplicate_move(GRAPH_OT_duplicate:Dynamic, TRANSFORM_OT_transform:Dynamic):Void;
	/**
		Set easing type for the F-Curve segments starting from the selected keyframes
		@param type TypeAUTO Automatic Easing, Easing type is chosen automatically based on what the type of interpolation used (e.g. ‘Ease In’ for transitional types, and ‘Ease Out’ for dynamic effects).EASE_IN Ease In, Only on the end closest to the next keyframe.EASE_OUT Ease Out, Only on the end closest to the first keyframe.EASE_IN_OUT Ease In and Out, Segment between both keyframes. — enum in ['AUTO', 'EASE_IN', 'EASE_OUT', 'EASE_IN_OUT'], (optional)
	**/
	static function easing_type(type:bpy.ops.graph.Graph.Enum2):Void;
	/**
		Fix large jumps and flips in the selected Euler Rotation F-Curves arising from rotation values being clipped when baking physics
	**/
	static function euler_filter():Void;
	/**
		Set extrapolation mode for selected F-Curves
		@param type TypeCONSTANT Constant Extrapolation, Values on endpoint keyframes are held.LINEAR Linear Extrapolation, Straight-line slope of end segments are extended past the endpoint keyframes.MAKE_CYCLIC Make Cyclic (F-Modifier), Add Cycles F-Modifier if one doesn’t exist already.CLEAR_CYCLIC Clear Cyclic (F-Modifier), Remove Cycles F-Modifier if not needed anymore. — enum in ['CONSTANT', 'LINEAR', 'MAKE_CYCLIC', 'CLEAR_CYCLIC'], (optional)
	**/
	static function extrapolation_type(type:bpy.ops.graph.Graph.Enum3):Void;
	/**
		Add F-Modifier to the active/selected F-Curves
		@param type TypeNULL Invalid.GENERATOR Generator, Generate a curve using a factorized or expanded polynomial.FNGENERATOR Built-In Function, Generate a curve using standard math functions such as sin and cos.ENVELOPE Envelope, Reshape F-Curve values - e.g. change amplitude of movements.CYCLES Cycles, Cyclic extend/repeat keyframe sequence.NOISE Noise, Add pseudo-random noise on top of F-Curves.LIMITS Limits, Restrict maximum and minimum values of F-Curve.STEPPED Stepped Interpolation, Snap values to nearest grid-step - e.g. for a stop-motion look. — enum in ['NULL', 'GENERATOR', 'FNGENERATOR', 'ENVELOPE', 'CYCLES', 'NOISE', 'LIMITS', 'STEPPED'], (optional)
		@param only_active Only Active, Only add F-Modifier to active F-Curve — boolean, (optional)
	**/
	static function fmodifier_add(type:bpy.ops.graph.Graph.Enum4, only_active:Bool):Void;
	/**
		Copy the F-Modifier(s) of the active F-Curve
	**/
	static function fmodifier_copy():Void;
	/**
		Add copied F-Modifiers to the selected F-Curves
		@param only_active Only Active, Only paste F-Modifiers on active F-Curve — boolean, (optional)
		@param replace Replace Existing, Replace existing F-Modifiers, instead of just appending to the end of the existing list — boolean, (optional)
	**/
	static function fmodifier_paste(only_active:Bool, replace:Bool):Void;
	/**
		Place the cursor on the midpoint of selected keyframes
	**/
	static function frame_jump():Void;
	/**
		Clear F-Curve snapshots (Ghosts) for active Graph Editor
	**/
	static function ghost_curves_clear():Void;
	/**
		Create snapshot (Ghosts) of selected F-Curves as background aid for active Graph Editor
	**/
	static function ghost_curves_create():Void;
	/**
		Set type of handle for selected keyframes
		@param type TypeFREE Free, Completely independent manually set handle.ALIGNED Aligned, Manually set handle with rotation locked together with its pair.VECTOR Vector, Automatic handles that create straight lines.AUTO Automatic, Automatic handles that create smooth curves.AUTO_CLAMPED Auto Clamped, Automatic handles that create smooth curves which only change direction at keyframes. — enum in ['FREE', 'ALIGNED', 'VECTOR', 'AUTO', 'AUTO_CLAMPED'], (optional)
	**/
	static function handle_type(type:bpy.ops.graph.Graph.Enum5):Void;
	/**
		Hide selected curves from Graph Editor view
		@param unselected Unselected, Hide unselected rather than selected curves — boolean, (optional)
	**/
	static function hide(unselected:Bool):Void;
	/**
		Set interpolation mode for the F-Curve segments starting from the selected keyframes
		@param type TypeCONSTANT Constant, No interpolation, value of A gets held until B is encountered.LINEAR Linear, Straight-line interpolation between A and B (i.e. no ease in/out).BEZIER Bezier, Smooth interpolation between A and B, with some control over curve shape.SINE Sinusoidal, Sinusoidal easing (weakest, almost linear but with a slight curvature).QUAD Quadratic, Quadratic easing.CUBIC Cubic, Cubic easing.QUART Quartic, Quartic easing.QUINT Quintic, Quintic easing.EXPO Exponential, Exponential easing (dramatic).CIRC Circular, Circular easing (strongest and most dynamic).BACK Back, Cubic easing with overshoot and settle.BOUNCE Bounce, Exponentially decaying parabolic bounce, like when objects collide.ELASTIC Elastic, Exponentially decaying sine wave, like an elastic band. — enum in ['CONSTANT', 'LINEAR', 'BEZIER', 'SINE', 'QUAD', 'CUBIC', 'QUART', 'QUINT', 'EXPO', 'CIRC', 'BACK', 'BOUNCE', 'ELASTIC'], (optional)
	**/
	static function interpolation_type(type:bpy.ops.graph.Graph.Enum6):Void;
	/**
		Insert keyframes for the specified channels
		@param type TypeALL All Channels, Insert a keyframe on all visible and editable F-Curves using each curve’s current value.SEL Only Selected Channels, Insert a keyframe on selected F-Curves using each curve’s current value.CURSOR_ACTIVE Active Channels At Cursor, Insert a keyframe for the active F-Curve at the cursor point.CURSOR_SEL Selected Channels At Cursor, Insert a keyframe for selected F-Curves at the cursor point. — enum in ['ALL', 'SEL', 'CURSOR_ACTIVE', 'CURSOR_SEL'], (optional)
	**/
	static function keyframe_insert(type:bpy.ops.graph.Graph.Enum7):Void;
	/**
		Flip selected keyframes over the selected mirror line
		@param type TypeCFRA By Times over Current Frame, Flip times of selected keyframes using the current frame as the mirror line.VALUE By Values over Cursor Value, Flip values of selected keyframes using the cursor value (Y/Horizontal component) as the mirror line.YAXIS By Times over Time=0, Flip times of selected keyframes, effectively reversing the order they appear in.XAXIS By Values over Value=0, Flip values of selected keyframes (i.e. negative values become positive, and vice versa).MARKER By Times over First Selected Marker, Flip times of selected keyframes using the first selected marker as the reference point. — enum in ['CFRA', 'VALUE', 'YAXIS', 'XAXIS', 'MARKER'], (optional)
	**/
	static function mirror(type:bpy.ops.graph.Graph.Enum8):Void;
	/**
		Paste keyframes from copy/paste buffer for the selected channels, starting on the current frame
		@param offset Offset, Paste time offset of keysSTART Frame Start, Paste keys starting at current frame.END Frame End, Paste keys ending at current frame.RELATIVE Frame Relative, Paste keys relative to the current frame when copying.NONE No Offset, Paste keys from original time. — enum in ['START', 'END', 'RELATIVE', 'NONE'], (optional)
		@param merge Type, Method of merging pasted keys and existingMIX Mix, Overlay existing with new keys.OVER_ALL Overwrite All, Replace all keys.OVER_RANGE Overwrite Range, Overwrite keys in pasted range.OVER_RANGE_ALL Overwrite Entire Range, Overwrite keys in pasted range, using the range of all copied keys. — enum in ['MIX', 'OVER_ALL', 'OVER_RANGE', 'OVER_RANGE_ALL'], (optional)
		@param flipped Flipped, Paste keyframes from mirrored bones if they exist — boolean, (optional)
	**/
	static function paste(offset:bpy.ops.graph.Graph.Enum9, merge:bpy.ops.graph.Graph.Enum10, flipped:Bool):Void;
	/**
		Automatically set Preview Range based on range of keyframes
	**/
	static function previewrange_set():Void;
	/**
		Toggle the properties region visibility
	**/
	static function properties():Void;
	/**
		Make previously hidden curves visible again in Graph Editor view
		@param select Select — boolean, (optional)
	**/
	static function reveal(select:Bool):Void;
	/**
		Add keyframes on every frame between the selected keyframes
	**/
	static function sample():Void;
	/**
		Toggle selection of all keyframes
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.graph.Graph.Enum11):Void;
	/**
		Select all keyframes within the specified region
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param axis_range Axis Range — boolean, (optional)
		@param include_handles Include Handles, Are handles tested individually against the selection criteria — boolean, (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool, axis_range:Bool, include_handles:Bool):Void;
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
	static function select_column(mode:bpy.ops.graph.Graph.Enum12):Void;
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
	static function select_leftright(mode:bpy.ops.graph.Graph.Enum13, extend:Bool):Void;
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
		Apply weighted moving means to make selected F-Curves less bumpy
	**/
	static function smooth():Void;
	/**
		Snap selected keyframes to the chosen times/values
		@param type TypeCFRA Current Frame, Snap selected keyframes to the current frame.VALUE Cursor Value, Set values of selected keyframes to the cursor value (Y/Horizontal component).NEAREST_FRAME Nearest Frame, Snap selected keyframes to the nearest (whole) frame (use to fix accidental sub-frame offsets).NEAREST_SECOND Nearest Second, Snap selected keyframes to the nearest second.NEAREST_MARKER Nearest Marker, Snap selected keyframes to the nearest marker.HORIZONTAL Flatten Handles, Flatten handles for a smoother transition. — enum in ['CFRA', 'VALUE', 'NEAREST_FRAME', 'NEAREST_SECOND', 'NEAREST_MARKER', 'HORIZONTAL'], (optional)
	**/
	static function snap(type:bpy.ops.graph.Graph.Enum14):Void;
	/**
		Bakes a sound wave to selected F-Curves
		@param filepath File Path, Path to file — string, (optional, never None)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param show_multiview Enable Multi-View — boolean, (optional)
		@param use_multiview Use Multi-View — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param low Lowest frequency, Cutoff frequency of a high-pass filter that is applied to the audio data — float in [0, 100000], (optional)
		@param high Highest frequency, Cutoff frequency of a low-pass filter that is applied to the audio data — float in [0, 100000], (optional)
		@param attack Attack time, Value for the hull curve calculation that tells how fast the hull curve can rise (the lower the value the steeper it can rise) — float in [0, 2], (optional)
		@param release Release time, Value for the hull curve calculation that tells how fast the hull curve can fall (the lower the value the steeper it can fall) — float in [0, 5], (optional)
		@param threshold Threshold, Minimum amplitude value needed to influence the hull curve — float in [0, 1], (optional)
		@param use_accumulate Accumulate, Only the positive differences of the hull curve amplitudes are summarized to produce the output — boolean, (optional)
		@param use_additive Additive, The amplitudes of the hull curve are summarized (or, when Accumulate is enabled, both positive and negative differences are accumulated) — boolean, (optional)
		@param use_square Square, The output is a square curve (negative values always result in -1, and positive ones in 1) — boolean, (optional)
		@param sthreshold Square Threshold, Square only: all values with an absolute amplitude lower than that result in 0 — float in [0, 1], (optional)
	**/
	static function sound_bake(filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.graph.Graph.Enum15, sort_method:bpy.ops.graph.Graph.Enum16, low:Float, high:Float, attack:Float, release:Float, threshold:Float, use_accumulate:Bool, use_additive:Bool, use_square:Bool, sthreshold:Float):Void;
	/**
		Reset viewable area to show full keyframe range
		@param include_handles Include Handles, Include handles of keyframes when calculating extents — boolean, (optional)
	**/
	static function view_all(include_handles:Bool):Void;
	/**
		Reset viewable area to show range around current frame
	**/
	static function view_frame():Void;
	/**
		Reset viewable area to show selected keyframe range
		@param include_handles Include Handles, Include handles of keyframes when calculating extents — boolean, (optional)
	**/
	static function view_selected(include_handles:Bool):Void;
}