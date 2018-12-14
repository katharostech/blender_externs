package bpy.types.mirrormodifier;
/**
	Mirroring modifier
**/
@:pythonImport("bpy.types.MirrorModifier") extern class MirrorModifier {
	/**
		Distance within which mirrored vertices are merged
		
		Type: float in [0, inf], default 0.0
	**/
	var merge_threshold : Float;
	/**
		Object to use as mirror
		
		Type: Object
	**/
	var mirror_object : bpy.types.object.Object;
	/**
		Amount to offset mirrored UVs flipping point from the 0.5 on the U axis
		
		Type: float in [-1, 1], default 0.0
	**/
	var mirror_offset_u : Float;
	/**
		Amount to offset mirrored UVs flipping point from the 0.5 point on the V axis
		
		Type: float in [-1, 1], default 0.0
	**/
	var mirror_offset_v : Float;
	/**
		Mirrored UV offset on the U axis
		
		Type: float in [-10000, 10000], default 0.0
	**/
	var offset_u : Float;
	/**
		Mirrored UV offset on the V axis
		
		Type: float in [-10000, 10000], default 0.0
	**/
	var offset_v : Float;
	/**
		Enable axis mirror
		
		Type: boolean array of 3 items, default (False, False, False)
	**/
	var use_axis : Array<Bool>;
	/**
		Cuts the mesh across the mirrorplane
		
		Type: boolean array of 3 items, default (False, False, False)
	**/
	var use_bisect_axis : Array<Bool>;
	/**
		Flips the direction of the slice
		
		Type: boolean array of 3 items, default (False, False, False)
	**/
	var use_bisect_flip_axis : Array<Bool>;
	/**
		Prevent vertices from going through the mirror during transform
		
		Type: boolean, default False
	**/
	var use_clip : Bool;
	/**
		Merge vertices within the merge threshold
		
		Type: boolean, default False
	**/
	var use_mirror_merge : Bool;
	/**
		Mirror the U texture coordinate around the flip offset point
		
		Type: boolean, default False
	**/
	var use_mirror_u : Bool;
	/**
		Mirror the V texture coordinate around the flip offset point
		
		Type: boolean, default False
	**/
	var use_mirror_v : Bool;
	/**
		Mirror vertex groups (e.g. .R-&gt;.L)
		
		Type: boolean, default False
	**/
	var use_mirror_vertex_groups : Bool;
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