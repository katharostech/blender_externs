package bpy.types.bevelmodifier;
@:enum abstract Enum1(String) from String to String {
	var AVERAGE : String = "AVERAGE";
	var SHARPEST : String = "SHARPEST";
	var LARGEST : String = "LARGEST";
}@:enum abstract Enum2(String) from String to String {
	var HN_NONE : String = "HN_NONE";
	var HN_FACE : String = "HN_FACE";
	var HN_ADJ : String = "HN_ADJ";
	var FIX_SHA : String = "FIX_SHA";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var ANGLE : String = "ANGLE";
	var WEIGHT : String = "WEIGHT";
	var VGROUP : String = "VGROUP";
}@:enum abstract Enum4(String) from String to String {
	var OFFSET : String = "OFFSET";
	var WIDTH : String = "WIDTH";
	var DEPTH : String = "DEPTH";
	var PERCENT : String = "PERCENT";
}/**
	Bevel modifier to make edges and vertices more rounded
**/
@:pythonImport("bpy.types.BevelModifier") extern class BevelModifier {
	/**
		Angle above which to bevel edges
		
		Type: float in [0, 3.14159], default 0.0
	**/
	var angle_limit : Float;
	/**
		What edge weight to use for weighting a vertex
		
		Type: enum in [‘AVERAGE’, ‘SHARPEST’, ‘LARGEST’], default ‘AVERAGE’
	**/
	var edge_weight_method : bpy.types.bevelmodifier.BevelModifier.Enum1;
	/**
		Strength of calculated normal
		
		Type: float in [0, 1], default 0.5
	**/
	var hn_strength : Float;
	/**
		Weighting mode for Harden Normals
		
		Type: enum in [‘HN_NONE’, ‘HN_FACE’, ‘HN_ADJ’, ‘FIX_SHA’], default ‘HN_NONE’
	**/
	var hnmode : bpy.types.bevelmodifier.BevelModifier.Enum2;
	/**
		
		
		Type: enum in [‘NONE’, ‘ANGLE’, ‘WEIGHT’, ‘VGROUP’], default ‘NONE’
	**/
	var limit_method : bpy.types.bevelmodifier.BevelModifier.Enum3;
	/**
		Prefer sliding along edges to having even widths
		
		Type: boolean, default False
	**/
	var loop_slide : Bool;
	/**
		Mark Seams along beveled edges
		
		Type: boolean, default False
	**/
	var mark_seam : Bool;
	/**
		Mark beveled edges as sharp
		
		Type: boolean, default False
	**/
	var mark_sharp : Bool;
	/**
		Material index of generated faces, -1 for automatic
		
		Type: int in [-1, 32767], default 0
	**/
	var material : Int;
	/**
		What distance Width measures
		
		Type: enum in [‘OFFSET’, ‘WIDTH’, ‘DEPTH’, ‘PERCENT’], default ‘OFFSET’
	**/
	var offset_type : bpy.types.bevelmodifier.BevelModifier.Enum4;
	/**
		The profile shape (0.5 = round)
		
		Type: float in [0, 1], default 0.0
	**/
	var profile : Float;
	/**
		Number of segments for round edges/verts
		
		Type: int in [1, 100], default 0
	**/
	var segments : Int;
	/**
		Set face strength of beveled faces for use in WN Modifier
		
		Type: boolean, default False
	**/
	var set_wn_strength : Bool;
	/**
		Clamp the width to avoid overlap
		
		Type: boolean, default False
	**/
	var use_clamp_overlap : Bool;
	/**
		Bevel verts/corners, not edges
		
		Type: boolean, default False
	**/
	var use_only_vertices : Bool;
	/**
		Vertex group name
		
		Type: string, default “”, (never None)
	**/
	var vertex_group : String;
	/**
		Bevel value/amount
		
		Type: float in [0, inf], default 0.0
	**/
	var width : Float;
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