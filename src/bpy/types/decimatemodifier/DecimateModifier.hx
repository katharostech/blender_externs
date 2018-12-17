package bpy.types.decimatemodifier;
@:enum abstract Enum1(String) from String to String {
	var COLLAPSE : String = "COLLAPSE";
	var UNSUBDIV : String = "UNSUBDIV";
	var DISSOLVE : String = "DISSOLVE";
}@:enum abstract Enum2(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}/**
	Decimation modifier
**/
@:native("bpy.types.DecimateModifier") extern class DecimateModifier {
	/**
		Only dissolve angles below this (planar only)
		
		Type: float in [0, 3.14159], default 0.0
	**/
	var angle_limit : Float;
	/**
		
		
		Type: enum in [‘COLLAPSE’, ‘UNSUBDIV’, ‘DISSOLVE’], default ‘COLLAPSE’
	**/
	var decimate_type : bpy.types.decimatemodifier.DecimateModifier.Enum1;
	/**
		Limit merging geometry
		
		Type: enum set in {‘NORMAL’, ‘MATERIAL’, ‘SEAM’, ‘SHARP’, ‘UV’}, default {‘NORMAL’}
	**/
	var delimit : Dynamic;
	/**
		The current number of faces in the decimated mesh
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var face_count(default, never) : Int;
	/**
		Invert vertex group influence (collapse only)
		
		Type: boolean, default False
	**/
	var invert_vertex_group : Bool;
	/**
		Number of times reduce the geometry (unsubdivide only)
		
		Type: int in [0, 32767], default 0
	**/
	var iterations : Int;
	/**
		Ratio of triangles to reduce to (collapse only)
		
		Type: float in [0, 1], default 0.0
	**/
	var ratio : Float;
	/**
		Axis of symmetry
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var symmetry_axis : bpy.types.decimatemodifier.DecimateModifier.Enum2;
	/**
		Keep triangulated faces resulting from decimation (collapse only)
		
		Type: boolean, default False
	**/
	var use_collapse_triangulate : Bool;
	/**
		Dissolve all vertices inbetween face boundaries (planar only)
		
		Type: boolean, default False
	**/
	var use_dissolve_boundaries : Bool;
	/**
		Maintain symmetry on an axis
		
		Type: boolean, default False
	**/
	var use_symmetry : Bool;
	/**
		Vertex group name (collapse only)
		
		Type: string, default “”, (never None)
	**/
	var vertex_group : String;
	/**
		Vertex group strength
		
		Type: float in [0, 1000], default 0.0
	**/
	var vertex_group_factor : Float;
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