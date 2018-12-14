package bpy.types.gppaint;
@:pythonImport("bpy.types.GpPaint") extern class GpPaint {
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
		Active Brush
		
		Type: Brush
	**/
	var brush : bpy.types.brush.Brush;
	/**
		
		
		Type: bpy_prop_collection of PaintToolSlot, (readonly)
	**/
	var tool_slots(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Active Palette
		
		Type: Palette
	**/
	var palette : bpy.types.palette.Palette;
	/**
		
		
		Type: boolean, default False
	**/
	var show_brush : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_brush_on_surface : Bool;
	/**
		For multires, show low resolution while navigating the view
		
		Type: boolean, default False
	**/
	var show_low_resolution : Bool;
	/**
		Average multiple input samples together to smooth the brush stroke
		
		Type: int in [0, inf], default 0
	**/
	var input_samples : Int;
	/**
		Mirror brush across the X axis
		
		Type: boolean, default False
	**/
	var use_symmetry_x : Bool;
	/**
		Mirror brush across the Y axis
		
		Type: boolean, default False
	**/
	var use_symmetry_y : Bool;
	/**
		Mirror brush across the Z axis
		
		Type: boolean, default False
	**/
	var use_symmetry_z : Bool;
	/**
		Reduce the strength of the brush where it overlaps symmetrical daubs
		
		Type: boolean, default False
	**/
	var use_symmetry_feather : Bool;
	/**
		Editable cavity curve
		
		Type: CurveMapping, (readonly, never None)
	**/
	var cavity_curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Mask painting according to mesh geometry cavity
		
		Type: boolean, default False
	**/
	var use_cavity : Bool;
	/**
		Stride at which tiled strokes are copied
		
		Type: float array of 3 items in [0.01, inf], default (0.0, 0.0, 0.0)
	**/
	var tile_offset : Array<Float>;
	/**
		Tile along X axis
		
		Type: boolean, default False
	**/
	var tile_x : Bool;
	/**
		Tile along Y axis
		
		Type: boolean, default False
	**/
	var tile_y : Bool;
	/**
		Tile along Z axis
		
		Type: boolean, default False
	**/
	var tile_z : Bool;
}