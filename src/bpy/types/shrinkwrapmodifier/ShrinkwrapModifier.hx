package bpy.types.shrinkwrapmodifier;
@:enum abstract Enum1(String) from String to String {
	var OFF : String = "OFF";
	var FRONT : String = "FRONT";
	var BACK : String = "BACK";
}@:enum abstract Enum2(String) from String to String {
	var NEAREST_SURFACEPOINT : String = "NEAREST_SURFACEPOINT";
	var PROJECT : String = "PROJECT";
	var NEAREST_VERTEX : String = "NEAREST_VERTEX";
	var TARGET_PROJECT : String = "TARGET_PROJECT";
}@:enum abstract Enum3(String) from String to String {
	var ON_SURFACE : String = "ON_SURFACE";
	var INSIDE : String = "INSIDE";
	var OUTSIDE : String = "OUTSIDE";
	var OUTSIDE_SURFACE : String = "OUTSIDE_SURFACE";
	var ABOVE_SURFACE : String = "ABOVE_SURFACE";
}/**
	Shrink wrapping modifier to shrink wrap and object to a target
**/
@:native("bpy.types.ShrinkwrapModifier") extern class ShrinkwrapModifier {
	/**
		Additional mesh target to shrink to
		
		Type: Object
	**/
	var auxiliary_target : bpy.types.object.Object;
	/**
		Stop vertices from projecting to a face on the target when facing towards/away
		
		Type: enum in [‘OFF’, ‘FRONT’, ‘BACK’], default ‘OFF’
	**/
	var cull_face : bpy.types.shrinkwrapmodifier.ShrinkwrapModifier.Enum1;
	/**
		Invert vertex group influence
		
		Type: boolean, default False
	**/
	var invert_vertex_group : Bool;
	/**
		Distance to keep from the target
		
		Type: float in [-inf, inf], default 0.0
	**/
	var offset : Float;
	/**
		Limit the distance used for projection (zero disables)
		
		Type: float in [0, inf], default 0.0
	**/
	var project_limit : Float;
	/**
		Number of subdivisions that must be performed before extracting vertices’ positions and normals
		
		Type: int in [0, 6], default 0
	**/
	var subsurf_levels : Int;
	/**
		Mesh target to shrink to
		
		Type: Object
	**/
	var target : bpy.types.object.Object;
	/**
		When projecting in the negative direction invert the face cull mode
		
		Type: boolean, default False
	**/
	var use_invert_cull : Bool;
	/**
		Allow vertices to move in the negative direction of axis
		
		Type: boolean, default False
	**/
	var use_negative_direction : Bool;
	/**
		Allow vertices to move in the positive direction of axis
		
		Type: boolean, default False
	**/
	var use_positive_direction : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_project_x : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_project_y : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_project_z : Bool;
	/**
		Vertex group name
		
		Type: string, default “”, (never None)
	**/
	var vertex_group : String;
	/**
		
		
		Type: enum in [‘NEAREST_SURFACEPOINT’, ‘PROJECT’, ‘NEAREST_VERTEX’, ‘TARGET_PROJECT’], default ‘NEAREST_SURFACEPOINT’
	**/
	var wrap_method : bpy.types.shrinkwrapmodifier.ShrinkwrapModifier.Enum2;
	/**
		Select how vertices are constrained to the target surface
		
		Type: enum in [‘ON_SURFACE’, ‘INSIDE’, ‘OUTSIDE’, ‘OUTSIDE_SURFACE’, ‘ABOVE_SURFACE’], default ‘ON_SURFACE’
	**/
	var wrap_mode : bpy.types.shrinkwrapmodifier.ShrinkwrapModifier.Enum3;
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