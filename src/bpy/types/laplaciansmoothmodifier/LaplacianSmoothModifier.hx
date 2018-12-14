package bpy.types.laplaciansmoothmodifier;
/**
	Smoothing effect modifier
**/
@:pythonImport("bpy.types.LaplacianSmoothModifier") extern class LaplacianSmoothModifier {
	/**
		
		
		Type: int in [-32768, 32767], default 0
	**/
	var iterations : Int;
	/**
		Lambda factor in border
		
		Type: float in [-inf, inf], default 0.0
	**/
	var lambda_border : Float;
	/**
		Smooth factor effect
		
		Type: float in [-inf, inf], default 0.0
	**/
	var lambda_factor : Float;
	/**
		Improve and stabilize the enhanced shape
		
		Type: boolean, default False
	**/
	var use_normalized : Bool;
	/**
		Apply volume preservation after smooth
		
		Type: boolean, default False
	**/
	var use_volume_preserve : Bool;
	/**
		Smooth object along X axis
		
		Type: boolean, default False
	**/
	var use_x : Bool;
	/**
		Smooth object along Y axis
		
		Type: boolean, default False
	**/
	var use_y : Bool;
	/**
		Smooth object along Z axis
		
		Type: boolean, default False
	**/
	var use_z : Bool;
	/**
		Name of Vertex Group which determines influence of modifier per point
		
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