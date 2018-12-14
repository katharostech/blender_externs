package bpy.types.wireframemodifier;
/**
	Wireframe effect modifier
**/
@:pythonImport("bpy.types.WireframeModifier") extern class WireframeModifier {
	/**
		Crease weight (if active)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var crease_weight : Float;
	/**
		Invert vertex group influence
		
		Type: boolean, default False
	**/
	var invert_vertex_group : Bool;
	/**
		Offset material index of generated faces
		
		Type: int in [-32768, 32767], default 0
	**/
	var material_offset : Int;
	/**
		Offset the thickness from the center
		
		Type: float in [-inf, inf], default 0.0
	**/
	var offset : Float;
	/**
		Thickness factor
		
		Type: float in [-inf, inf], default 0.0
	**/
	var thickness : Float;
	/**
		Thickness factor to use for zero vertex group influence
		
		Type: float in [0, 1], default 0.0
	**/
	var thickness_vertex_group : Float;
	/**
		Support face boundaries
		
		Type: boolean, default False
	**/
	var use_boundary : Bool;
	/**
		Crease hub edges for improved subsurf
		
		Type: boolean, default False
	**/
	var use_crease : Bool;
	/**
		Scale the offset to give more even thickness
		
		Type: boolean, default False
	**/
	var use_even_offset : Bool;
	/**
		Scale the offset by surrounding geometry
		
		Type: boolean, default False
	**/
	var use_relative_offset : Bool;
	/**
		Remove original geometry
		
		Type: boolean, default False
	**/
	var use_replace : Bool;
	/**
		Vertex group name for selecting the affected areas
		
		Type: string, default “”, (never None)
	**/
	var vertex_group : String;
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