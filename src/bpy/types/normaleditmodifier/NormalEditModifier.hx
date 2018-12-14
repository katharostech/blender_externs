package bpy.types.normaleditmodifier;
@:enum abstract Enum1(String) from String to String {
	var COPY : String = "COPY";
	var ADD : String = "ADD";
	var SUB : String = "SUB";
	var MUL : String = "MUL";
}@:enum abstract Enum2(String) from String to String {
	var RADIAL : String = "RADIAL";
	var DIRECTIONAL : String = "DIRECTIONAL";
}/**
	Modifier affecting/generating custom normals
**/
@:pythonImport("bpy.types.NormalEditModifier") extern class NormalEditModifier {
	/**
		Invert vertex group influence
		
		Type: boolean, default False
	**/
	var invert_vertex_group : Bool;
	/**
		How much of generated normals to mix with exiting ones
		
		Type: float in [0, 1], default 1.0
	**/
	var mix_factor : Float;
	/**
		Maximum angle between old and new normals
		
		Type: float in [0, 3.14159], default 1.0
	**/
	var mix_limit : Float;
	/**
		How to mix generated normals with existing ones
		
		Type: enum in [‘COPY’, ‘ADD’, ‘SUB’, ‘MUL’], default ‘COPY’
	**/
	var mix_mode : bpy.types.normaleditmodifier.NormalEditModifier.Enum1;
	/**
		How to affect (generate) normals
		
		Type: enum in [‘RADIAL’, ‘DIRECTIONAL’], default ‘RADIAL’
	**/
	var mode : bpy.types.normaleditmodifier.NormalEditModifier.Enum2;
	/**
		Do not flip polygons when their normals are not consistent with their newly computed custom vertex normals
		
		Type: boolean, default False
	**/
	var no_polynors_fix : Bool;
	/**
		Offset from object’s center
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var offset : Array<Float>;
	/**
		Target object used to affect normals
		
		Type: Object
	**/
	var target : bpy.types.object.Object;
	/**
		Use same direction for all normals, from origin to target’s center (Directional mode only)
		
		Type: boolean, default True
	**/
	var use_direction_parallel : Bool;
	/**
		Vertex group name for selecting/weighting the affected areas
		
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