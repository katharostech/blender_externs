package bpy.types.correctivesmoothmodifier;
@:enum abstract Enum1(String) from String to String {
	var ORCO : String = "ORCO";
	var BIND : String = "BIND";
}@:enum abstract Enum2(String) from String to String {
	var SIMPLE : String = "SIMPLE";
	var LENGTH_WEIGHTED : String = "LENGTH_WEIGHTED";
}/**
	Correct distortion caused by deformation
**/
@:native("bpy.types.CorrectiveSmoothModifier") extern class CorrectiveSmoothModifier {
	/**
		Smooth factor effect
		
		Type: float in [-inf, inf], default 0.0
	**/
	var factor : Float;
	/**
		Invert vertex group influence
		
		Type: boolean, default False
	**/
	var invert_vertex_group : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_bind(default, never) : Bool;
	/**
		
		
		Type: int in [-32768, 32767], default 0
	**/
	var iterations : Int;
	/**
		Select the source of rest positions
		
		Type: enum in [‘ORCO’, ‘BIND’], default ‘ORCO’
	**/
	var rest_source : bpy.types.correctivesmoothmodifier.CorrectiveSmoothModifier.Enum1;
	/**
		Method used for smoothing
		
		Type: enum in [‘SIMPLE’, ‘LENGTH_WEIGHTED’], default ‘SIMPLE’
	**/
	var smooth_type : bpy.types.correctivesmoothmodifier.CorrectiveSmoothModifier.Enum2;
	/**
		Apply smoothing without reconstructing the surface
		
		Type: boolean, default False
	**/
	var use_only_smooth : Bool;
	/**
		Excludes boundary vertices from being smoothed
		
		Type: boolean, default False
	**/
	var use_pin_boundary : Bool;
	/**
		Name of Vertex Group which determines influence of modifier per point
		
		Type: string, default “”, (never None)
	**/
	var vertex_group : String;
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