package bpy.types.gizmo;
@:enum abstract Enum1(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}@:enum abstract Enum2(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}/**
	Collection of gizmos
**/
@:pythonImport("bpy.types.Gizmo") extern class Gizmo {
	/**
		
		
		Type: float in [0, 1], default 0.0
	**/
	var alpha : Float;
	/**
		
		
		Type: float in [0, 1], default 0.0
	**/
	var alpha_highlight : Float;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var color_highlight : Array<Float>;
	/**
		Gizmo group this gizmo is a member of
		
		Type: GizmoGroup, (readonly)
	**/
	var group(default, never) : bpy.types.gizmogroup.GizmoGroup;
	/**
		
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var hide_select : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_highlight(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_modal(default, never) : Bool;
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var line_width : Float;
	/**
		
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix_basis : Array<Float>;
	/**
		
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix_offset : Array<Float>;
	/**
		
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix_space : Array<Float>;
	/**
		
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0)), (readonly)
	**/
	var matrix_world(default, never) : Array<Float>;
	/**
		
		
		Type: GizmoProperties, (readonly, never None)
	**/
	var properties(default, never) : bpy.types.gizmoproperties.GizmoProperties;
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var scale_basis : Float;
	/**
		
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_draw_hover : Bool;
	/**
		Draw while dragging
		
		Type: boolean, default False
	**/
	var use_draw_modal : Bool;
	/**
		Scale the offset matrix (use to apply screen-space offset)
		
		Type: boolean, default False
	**/
	var use_draw_offset_scale : Bool;
	/**
		Use scale when calculating the matrix
		
		Type: boolean, default False
	**/
	var use_draw_scale : Bool;
	/**
		Show an indicator for the current value while dragging
		
		Type: boolean, default False
	**/
	var use_draw_value : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_grab_cursor : Bool;
	/**
		Don’t write into the depth buffer
		
		Type: boolean, default False
	**/
	var use_select_background : Bool;
	function draw():Void;
	function draw_select():Void;
	/**
		
		@param location Location, Region coordinates — int array of 2 items in [-inf, inf], (never None)
		
		@returns int in [0, inf]
	**/
	function test_select(location:Array<Int>):Int;
	/**
		
		@param tweak Tweak — enum set in {'PRECISE', 'SNAP'}
		
		@returns enum set in {‘RUNNING_MODAL’, ‘CANCELLED’, ‘FINISHED’, ‘PASS_THROUGH’, ‘INTERFACE’}
	**/
	function modal(tweak:Dynamic):Dynamic;
	function setup():Void;
	/**
		
		
		@returns enum set in {‘RUNNING_MODAL’, ‘CANCELLED’, ‘FINISHED’, ‘PASS_THROUGH’, ‘INTERFACE’}
	**/
	function invoke():Dynamic;
	/**
		
		@param cancel Cancel, otherwise confirm — boolean
	**/
	function exit(cancel:Dynamic):Void;
	function select_refresh():Void;
	/**
		Draw a box
		@param matrix The matrix to transform — float multi-dimensional array of 4 * 4 items in [-inf, inf]
		@param select_id Zero when not selecting — int in [-1, inf], (optional)
	**/
	function draw_preset_box(matrix:Array<Float>, select_id:Int):Void;
	/**
		Draw a box
		@param matrix The matrix to transform — float multi-dimensional array of 4 * 4 items in [-inf, inf]
		@param axis Arrow Orientation — enum in ['POS_X', 'POS_Y', 'POS_Z', 'NEG_X', 'NEG_Y', 'NEG_Z'], (optional)
		@param select_id Zero when not selecting — int in [-1, inf], (optional)
	**/
	function draw_preset_arrow(matrix:Array<Float>, axis:bpy.types.gizmo.Gizmo.Enum1, select_id:Int):Void;
	/**
		Draw a box
		@param matrix The matrix to transform — float multi-dimensional array of 4 * 4 items in [-inf, inf]
		@param axis Arrow Orientation — enum in ['POS_X', 'POS_Y', 'POS_Z', 'NEG_X', 'NEG_Y', 'NEG_Z'], (optional)
		@param select_id Zero when not selecting — int in [-1, inf], (optional)
	**/
	function draw_preset_circle(matrix:Array<Float>, axis:bpy.types.gizmo.Gizmo.Enum2, select_id:Int):Void;
	/**
		Draw the face-map of a mesh object
		@param object Object — Object, (never None)
		@param face_map Face map index — int in [0, inf]
		@param select_id Zero when not selecting — int in [-1, inf], (optional)
	**/
	function draw_preset_facemap(object:Dynamic, face_map:Int, select_id:Int):Void;
	/**
		
		@param target Target property — string, (never None)
		@param data Data from which to take property — AnyType, (never None)
		@param property Identifier of property in data — string, (never None)
	**/
	function target_set_prop(target:String, data:bpy.types.anytype.AnyType, property:String):Void;
	/**
		Operator to run when activating the gizmo (overrides property targets)
		@param operator Target operator — string, (never None)
		@param index Part index — int in [0, 255], (optional)
		
		@returns OperatorProperties
	**/
	function target_set_operator(operator:String, index:Int):bpy.types.operatorproperties.OperatorProperties;
	/**
		
		@param property Property identifier — string, (never None)
		
		@returns boolean
	**/
	function target_is_valid(property:String):Dynamic;
	/**
		Draw a shape created form bpy.types.Gizmo.draw_custom_shape.
		@param shape The cached shape to draw. — Undefined.
		@param matrix 4x4 matrix, when not given
		                                                bpy.types.Gizmo.matrix_world is used. — mathutils.Matrix
		@param select_id The selection id.
		                                                Only use when drawing within bpy.types.Gizmo.draw_select. — 
	**/
	function draw_custom_shape(shape:Dynamic, matrix:Dynamic, select_id:Dynamic):Void;
	/**
		Create a new shape that can be passed to bpy.types.Gizmo.draw_custom_shape.
		@param type The type of shape to create in (POINTS, LINES, TRIS, LINE_STRIP). — string
		@param verts Coordinates. — sequence of of 2D or 3D coordinates.
		@param display_name Optional callback that takes the full path, returns the name to display. — Callable that takes a string and returns a string.
		
		@returns Undefined (it may change)
	**/
	static function new_custom_shape(type:Dynamic, verts:Dynamic, display_name:Dynamic):Dynamic;
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
		Get the range for this target property.
		@param target Target property name. — 
		
		@returns tuple pair.
	**/
	function target_get_range(target):(target:Dynamic):Dynamic;
	/**
		Get the value of this target property.
		@param target Target property name. — string
		
		@returns Single value or array based on the target type
	**/
	function target_get_value(target):(target:Dynamic):Array<Dynamic>;
	/**
		Assigns callbacks to a gizmos property.
		@param get Function that returns the value for this property (single value or sequence). — callable
		@param set Function that takes a single value argument and applies it. — callable
		@param range Function that returns a (min, max) tuple for gizmos that use a range. — callable
	**/
	function target_set_handler(target, get, set, range=None):(get:Dynamic, set:Dynamic, range:Dynamic):Void;
	/**
		Set the value of this target property.
		@param target Target property name. — string
	**/
	function target_set_value(target):(target:Dynamic):Void;
}