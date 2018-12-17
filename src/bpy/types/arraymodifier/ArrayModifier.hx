package bpy.types.arraymodifier;
@:enum abstract Enum1(String) from String to String {
	var FIXED_COUNT : String = "FIXED_COUNT";
	var FIT_LENGTH : String = "FIT_LENGTH";
	var FIT_CURVE : String = "FIT_CURVE";
}/**
	Array duplication modifier
**/
@:native("bpy.types.ArrayModifier") extern class ArrayModifier {
	/**
		Value for the distance between arrayed items
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var constant_offset_displace : Array<Float>;
	/**
		Number of duplicates to make
		
		Type: int in [1, inf], default 0
	**/
	var count : Int;
	/**
		Curve object to fit array length to
		
		Type: Object
	**/
	var curve : bpy.types.object.Object;
	/**
		Mesh object to use as an end cap
		
		Type: Object
	**/
	var end_cap : bpy.types.object.Object;
	/**
		Length to fit array within
		
		Type: float in [0, inf], default 0.0
	**/
	var fit_length : Float;
	/**
		Array length calculation method
		
		Type: enum in [‘FIXED_COUNT’, ‘FIT_LENGTH’, ‘FIT_CURVE’], default ‘FIXED_COUNT’
	**/
	var fit_type : bpy.types.arraymodifier.ArrayModifier.Enum1;
	/**
		Limit below which to merge vertices
		
		Type: float in [0, inf], default 0.0
	**/
	var merge_threshold : Float;
	/**
		Use the location and rotation of another object to determine the distance and rotational change between arrayed items
		
		Type: Object
	**/
	var offset_object : bpy.types.object.Object;
	/**
		Amount to offset array UVs on the U axis
		
		Type: float in [-1, 1], default 0.0
	**/
	var offset_u : Float;
	/**
		Amount to offset array UVs on the V axis
		
		Type: float in [-1, 1], default 0.0
	**/
	var offset_v : Float;
	/**
		The size of the geometry will determine the distance between arrayed items
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var relative_offset_displace : Array<Float>;
	/**
		Mesh object to use as a start cap
		
		Type: Object
	**/
	var start_cap : bpy.types.object.Object;
	/**
		Add a constant offset
		
		Type: boolean, default False
	**/
	var use_constant_offset : Bool;
	/**
		Merge vertices in adjacent duplicates
		
		Type: boolean, default False
	**/
	var use_merge_vertices : Bool;
	/**
		Merge vertices in first and last duplicates
		
		Type: boolean, default False
	**/
	var use_merge_vertices_cap : Bool;
	/**
		Add another object’s transformation to the total offset
		
		Type: boolean, default False
	**/
	var use_object_offset : Bool;
	/**
		Add an offset relative to the object’s bounding box
		
		Type: boolean, default False
	**/
	var use_relative_offset : Bool;
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
		Modifier name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘DATA_TRANSFER’, ‘MESH_CACHE’, ‘MESH_SEQUENCE_CACHE’, ‘NORMAL_EDIT’, ‘WEIGHTED_NORMAL’, ‘UV_PROJECT’, ‘UV_WARP’, ‘VERTEX_WEIGHT_EDIT’, ‘VERTEX_WEIGHT_MIX’, ‘VERTEX_WEIGHT_PROXIMITY’, ‘ARRAY’, ‘BEVEL’, ‘BOOLEAN’, ‘BUILD’, ‘DECIMATE’, ‘EDGE_SPLIT’, ‘MASK’, ‘MIRROR’, ‘MULTIRES’, ‘REMESH’, ‘SCREW’, ‘SKIN’, ‘SOLIDIFY’, ‘SUBSURF’, ‘TRIANGULATE’, ‘WIREFRAME’, ‘ARMATURE’, ‘CAST’, ‘CURVE’, ‘DISPLACE’, ‘HOOK’, ‘LAPLACIANDEFORM’, ‘LATTICE’, ‘MESH_DEFORM’, ‘SHRINKWRAP’, ‘SIMPLE_DEFORM’, ‘SMOOTH’, ‘CORRECTIVE_SMOOTH’, ‘LAPLACIANSMOOTH’, ‘SURFACE_DEFORM’, ‘WARP’, ‘WAVE’, ‘CLOTH’, ‘COLLISION’, ‘DYNAMIC_PAINT’, ‘EXPLODE’, ‘FLUID_SIMULATION’, ‘OCEAN’, ‘PARTICLE_INSTANCE’, ‘PARTICLE_SYSTEM’, ‘SMOKE’, ‘SOFT_BODY’, ‘SURFACE’], default ‘DATA_TRANSFER’, (readonly)
	**/
	var type(default, never) : bpy.types.modifier.Modifier.Enum1;
	/**
		Display modifier in viewport
		
		Type: boolean, default False
	**/
	var show_viewport : Bool;
	/**
		Use modifier during render
		
		Type: boolean, default False
	**/
	var show_render : Bool;
	/**
		Display modifier in Edit mode
		
		Type: boolean, default False
	**/
	var show_in_editmode : Bool;
	/**
		Adjust edit cage to modifier result
		
		Type: boolean, default False
	**/
	var show_on_cage : Bool;
	/**
		Set modifier expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Apply this and all preceding deformation modifiers on splines’ points rather than on filled curve/surface
		
		Type: boolean, default False
	**/
	var use_apply_on_spline : Bool;
}