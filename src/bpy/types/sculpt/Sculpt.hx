package bpy.types.sculpt;
@:enum abstract Enum1(String) from String to String {
	var SUBDIVIDE : String = "SUBDIVIDE";
	var COLLAPSE : String = "COLLAPSE";
	var SUBDIVIDE_COLLAPSE : String = "SUBDIVIDE_COLLAPSE";
}@:enum abstract Enum2(String) from String to String {
	var RELATIVE : String = "RELATIVE";
	var CONSTANT : String = "CONSTANT";
	var BRUSH : String = "BRUSH";
	var MANUAL : String = "MANUAL";
}@:enum abstract Enum3(String) from String to String {
	var NEGATIVE_X : String = "NEGATIVE_X";
	var POSITIVE_X : String = "POSITIVE_X";
	var NEGATIVE_Y : String = "NEGATIVE_Y";
	var POSITIVE_Y : String = "POSITIVE_Y";
	var NEGATIVE_Z : String = "NEGATIVE_Z";
	var POSITIVE_Z : String = "POSITIVE_Z";
}@:native("bpy.types.Sculpt") extern class Sculpt {
	/**
		Maximum edge length for dynamic topology sculpting (as divisor of blender unit - higher value means smaller edge length)
		
		Type: float in [0.0001, inf], default 0.0
	**/
	var constant_detail_resolution : Float;
	/**
		Maximum edge length for dynamic topology sculpting (in brush percenage)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var detail_percent : Float;
	/**
		In dynamic-topology mode, how to add or remove mesh detail
		
		Type: enum in [‘SUBDIVIDE’, ‘COLLAPSE’, ‘SUBDIVIDE_COLLAPSE’], default ‘SUBDIVIDE’
	**/
	var detail_refine_method : bpy.types.sculpt.Sculpt.Enum1;
	/**
		Maximum edge length for dynamic topology sculpting (in pixels)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var detail_size : Float;
	/**
		In dynamic-topology mode, how mesh detail size is calculated
		
		Type: enum in [‘RELATIVE’, ‘CONSTANT’, ‘BRUSH’, ‘MANUAL’], default ‘RELATIVE’
	**/
	var detail_type_method : bpy.types.sculpt.Sculpt.Enum2;
	/**
		Amount of gravity after each dab
		
		Type: float in [0, 1], default 0.0
	**/
	var gravity : Float;
	/**
		Object whose Z axis defines orientation of gravity
		
		Type: Object
	**/
	var gravity_object : bpy.types.object.Object;
	/**
		Disallow changes to the X axis of vertices
		
		Type: boolean, default False
	**/
	var lock_x : Bool;
	/**
		Disallow changes to the Y axis of vertices
		
		Type: boolean, default False
	**/
	var lock_y : Bool;
	/**
		Disallow changes to the Z axis of vertices
		
		Type: boolean, default False
	**/
	var lock_z : Bool;
	/**
		Number of times to copy strokes across the surface
		
		Type: int array of 3 items in [1, 64], default (1, 1, 1)
	**/
	var radial_symmetry : Array<Int>;
	/**
		Show diffuse color of object and overlay sculpt mask on top of it
		
		Type: boolean, default False
	**/
	var show_diffuse_color : Bool;
	/**
		Show mask as overlay on object
		
		Type: boolean, default False
	**/
	var show_mask : Bool;
	/**
		Source and destination for symmetrize operator
		
		Type: enum in [‘NEGATIVE_X’, ‘POSITIVE_X’, ‘NEGATIVE_Y’, ‘POSITIVE_Y’, ‘NEGATIVE_Z’, ‘POSITIVE_Z’], default ‘NEGATIVE_X’
	**/
	var symmetrize_direction : bpy.types.sculpt.Sculpt.Enum3;
	/**
		Use only deformation modifiers (temporary disable all constructive modifiers except multi-resolution)
		
		Type: boolean, default False
	**/
	var use_deform_only : Bool;
	/**
		Show faces in dynamic-topology mode with smooth shading rather than flat shaded
		
		Type: boolean, default False
	**/
	var use_smooth_shading : Bool;
	/**
		Take advantage of multiple CPU cores to improve sculpting performance
		
		Type: boolean, default False
	**/
	var use_threaded : Bool;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:String):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:String):Dynamic;
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