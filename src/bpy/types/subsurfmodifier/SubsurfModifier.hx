package bpy.types.subsurfmodifier;
@:enum abstract Enum1(String) from String to String {
	var CATMULL_CLARK : String = "CATMULL_CLARK";
	var SIMPLE : String = "SIMPLE";
}@:enum abstract Enum2(String) from String to String {
	var NONE : String = "NONE";
	var PRESERVE_CORNERS : String = "PRESERVE_CORNERS";
}/**
	Subdivision surface modifier
**/
@:pythonImport("bpy.types.SubsurfModifier") extern class SubsurfModifier {
	/**
		Number of subdivisions to perform
		
		Type: int in [0, 11], default 0
	**/
	var levels : Int;
	/**
		Accuracy of vertex positions, lower value is faster but less precise
		
		Type: int in [1, 10], default 0
	**/
	var quality : Int;
	/**
		Number of subdivisions to perform when rendering
		
		Type: int in [0, 11], default 0
	**/
	var render_levels : Int;
	/**
		Skip drawing/rendering of interior subdivided edges
		
		Type: boolean, default False
	**/
	var show_only_control_edges : Bool;
	/**
		Select type of subdivision algorithm
		
		Type: enum in [‘CATMULL_CLARK’, ‘SIMPLE’], default ‘CATMULL_CLARK’
	**/
	var subdivision_type : bpy.types.subsurfmodifier.SubsurfModifier.Enum1;
	/**
		Controls how smoothing is applied to UVs
		
		Type: enum in [‘NONE’, ‘PRESERVE_CORNERS’], default ‘NONE’
	**/
	var uv_smooth : bpy.types.subsurfmodifier.SubsurfModifier.Enum2;
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