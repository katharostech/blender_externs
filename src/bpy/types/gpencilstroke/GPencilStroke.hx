package bpy.types.gpencilstroke;
@:enum abstract Enum1(String) from String to String {
	var SCREEN : String = "SCREEN";
	var 3DSPACE : String = "3DSPACE";
	var 2DSPACE : String = "2DSPACE";
	var 2DIMAGE : String = "2DIMAGE";
}/**
	Freehand curve defining part of a sketch
**/
@:pythonImport("bpy.types.GPencilStroke") extern class GPencilStroke {
	/**
		Coordinate space that stroke is in
		
		Type: enum in [‘SCREEN’, ‘3DSPACE’, ‘2DSPACE’, ‘2DIMAGE’], default ‘SCREEN’
	**/
	var display_mode : bpy.types.gpencilstroke.GPencilStroke.Enum1;
	/**
		Enable cyclic drawing, closing the stroke
		
		Type: boolean, default False
	**/
	var draw_cyclic : Bool;
	/**
		Weights for the vertex groups this vertex is member of
		
		Type: bpy_prop_collection of GpencilVertexGroupElement, (readonly)
	**/
	var groups(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Special stroke to use as boundary for filling areas
		
		Type: boolean, default False, (readonly)
	**/
	var is_nofill_stroke(default, never) : Bool;
	/**
		Thickness of stroke (in pixels)
		
		Type: int in [1, 1000], default 0
	**/
	var line_width : Int;
	/**
		Index of material used in this stroke
		
		Type: int in [-inf, inf], default 0
	**/
	var material_index : Int;
	/**
		Stroke data points
		
		Type: GPencilStrokePoints bpy_prop_collection of GPencilStrokePoint, (readonly)
	**/
	var points(default, never) : bpy.types.gpencilstrokepoints.GPencilStrokePoints;
	/**
		Stroke is selected for viewport editing
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Triangulation data for HQ fill
		
		Type: bpy_prop_collection of GPencilTriangle, (readonly)
	**/
	var triangles(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
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
}