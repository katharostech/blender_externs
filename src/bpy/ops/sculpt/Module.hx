package bpy.ops.sculpt;
/**
	Sculpt Operators
**/
@:pythonImport("bpy.ops.sculpt") extern class Module {
	/**
		Sculpt a stroke into the geometry
		@param stroke Stroke — bpy_prop_collection of OperatorStrokeElement, (optional)
		@param mode Stroke Mode, Action taken when a paint stroke is madeNORMAL Normal, Apply brush normally.INVERT Invert, Invert action of brush for duration of stroke.SMOOTH Smooth, Switch brush to smooth mode for duration of stroke. — enum in ['NORMAL', 'INVERT', 'SMOOTH'], (optional)
		@param ignore_background_click Ignore Background Click, Clicks on the background do not start the stroke — boolean, (optional)
	**/
	static function brush_stroke(stroke:Dynamic, mode:bpy.ops.sculpt.Sculpt.Enum1, ignore_background_click:Bool):Void;
	/**
		Flood fill the mesh with the selected detail setting
	**/
	static function detail_flood_fill():Void;
	/**
		Dynamic topology alters the mesh topology while sculpting
	**/
	static function dynamic_topology_toggle():Void;
	/**
		Recalculate the sculpt BVH to improve performance
	**/
	static function optimize():Void;
	/**
		Sample the mesh detail on clicked point
		@param location Location, Screen Coordinates of sampling — int array of 2 items in [0, 32767], (optional)
	**/
	static function sample_detail_size(location:Array<Int>):Void;
	/**
		Toggle sculpt mode in 3D view
	**/
	static function sculptmode_toggle():Void;
	/**
		Set the mesh detail (either relative or constant one, depending on current dyntopo mode)
	**/
	static function set_detail_size():Void;
	/**
		Reset the copy of the mesh that is being sculpted on
	**/
	static function set_persistent_base():Void;
	/**
		Symmetrize the topology modifications
	**/
	static function symmetrize():Void;
	/**
		Sculpt UVs using a brush
		@param mode Mode, Stroke ModeNORMAL Normal, Apply brush normally.INVERT Invert, Invert action of brush for duration of stroke.RELAX Relax, Switch brush to relax mode for duration of stroke. — enum in ['NORMAL', 'INVERT', 'RELAX'], (optional)
	**/
	static function uv_sculpt_stroke(mode:bpy.ops.sculpt.Sculpt.Enum2):Void;
}