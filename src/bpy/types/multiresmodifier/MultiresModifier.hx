package bpy.types.multiresmodifier;
@:enum abstract Enum1(String) from String to String {
	var CATMULL_CLARK : String = "CATMULL_CLARK";
	var SIMPLE : String = "SIMPLE";
}@:enum abstract Enum2(String) from String to String {
	var NONE : String = "NONE";
	var PRESERVE_CORNERS : String = "PRESERVE_CORNERS";
}/**
	Multiresolution mesh modifier
**/
@:pythonImport("bpy.types.MultiresModifier") extern class MultiresModifier {
	/**
		Path to external displacements file
		
		Type: string, default “”, (never None)
	**/
	var filepath : String;
	/**
		Store multires displacements outside the .blend file, to save memory
		
		Type: boolean, default False, (readonly)
	**/
	var is_external(default, never) : Bool;
	/**
		Number of subdivisions to use in the viewport
		
		Type: int in [0, 255], default 0
	**/
	var levels : Int;
	/**
		Accuracy of vertex positions, lower value is faster but less precise
		
		Type: int in [1, 10], default 0
	**/
	var quality : Int;
	/**
		The subdivision level visible at render time
		
		Type: int in [0, 255], default 0
	**/
	var render_levels : Int;
	/**
		Number of subdivisions to use in sculpt mode
		
		Type: int in [0, 255], default 0
	**/
	var sculpt_levels : Int;
	/**
		Skip drawing/rendering of interior subdivided edges
		
		Type: boolean, default False
	**/
	var show_only_control_edges : Bool;
	/**
		Select type of subdivision algorithm
		
		Type: enum in [‘CATMULL_CLARK’, ‘SIMPLE’], default ‘CATMULL_CLARK’
	**/
	var subdivision_type : bpy.types.multiresmodifier.MultiresModifier.Enum1;
	/**
		Number of subdivisions for which displacements are stored
		
		Type: int in [0, 255], default 0, (readonly)
	**/
	var total_levels(default, never) : Int;
	/**
		Controls how smoothing is applied to UVs
		
		Type: enum in [‘NONE’, ‘PRESERVE_CORNERS’], default ‘NONE’
	**/
	var uv_smooth : bpy.types.multiresmodifier.MultiresModifier.Enum2;
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