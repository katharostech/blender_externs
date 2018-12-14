package bpy.ops.brush;
/**
	Brush Operators
**/
@:pythonImport("bpy.ops.brush") extern class Module {
	/**
		Set active sculpt/paint brush from it’s number
		@param mode Mode, Paint mode to set brush for — string, (optional, never None)
		@param index Number, Brush number — int in [-inf, inf], (optional)
	**/
	static function active_index_set(mode:String, index:Int):Void;
	/**
		Add brush by mode type
	**/
	static function add():Void;
	/**
		Add brush for Grease Pencil
	**/
	static function add_gpencil():Void;
	/**
		Set brush shape
		@param shape Mode — enum in ['SHARP', 'SMOOTH', 'MAX', 'LINE', 'ROUND', 'ROOT'], (optional)
	**/
	static function curve_preset(shape:bpy.ops.brush.Brush.Enum1):Void;
	/**
		Return brush to defaults based on current tool
	**/
	static function reset():Void;
	/**
		Change brush size by a scalar
		@param scalar Scalar, Factor to scale brush size by — float in [0, 2], (optional)
	**/
	static function scale_size(scalar:Float):Void;
	/**
		Control the stencil brush
		@param mode Tool — enum in ['TRANSLATION', 'SCALE', 'ROTATION'], (optional)
		@param texmode Tool — enum in ['PRIMARY', 'SECONDARY'], (optional)
	**/
	static function stencil_control(mode:bpy.ops.brush.Brush.Enum2, texmode:bpy.ops.brush.Brush.Enum3):Void;
	/**
		When using an image texture, adjust the stencil size to fit the image aspect ratio
		@param use_repeat Use Repeat, Use repeat mapping values — boolean, (optional)
		@param use_scale Use Scale, Use texture scale values — boolean, (optional)
		@param mask Modify Mask Stencil, Modify either the primary or mask stencil — boolean, (optional)
	**/
	static function stencil_fit_image_aspect(use_repeat:Bool, use_scale:Bool, mask:Bool):Void;
	/**
		Reset the stencil transformation to the default
		@param mask Modify Mask Stencil, Modify either the primary or mask stencil — boolean, (optional)
	**/
	static function stencil_reset_transform(mask:Bool):Void;
	/**
		Set the UV sculpt tool
		@param tool ToolPINCH Pinch, Pinch UVs.RELAX Relax, Relax UVs.GRAB Grab, Grab UVs. — enum in ['PINCH', 'RELAX', 'GRAB'], (optional)
	**/
	static function uv_sculpt_tool_set(tool:bpy.ops.brush.Brush.Enum4):Void;
}