package bpy.types.screwmodifier;
@:enum abstract Enum1(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}/**
	Revolve edges
**/
@:pythonImport("bpy.types.ScrewModifier") extern class ScrewModifier {
	/**
		Angle of revolution
		
		Type: float in [-inf, inf], default 0.0
	**/
	var angle : Float;
	/**
		Screw axis
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var axis : bpy.types.screwmodifier.ScrewModifier.Enum1;
	/**
		Number of times to apply the screw operation
		
		Type: int in [1, 10000], default 0
	**/
	var iterations : Int;
	/**
		Limit below which to merge vertices
		
		Type: float in [0, inf], default 0.0
	**/
	var merge_threshold : Float;
	/**
		Object to define the screw axis
		
		Type: Object
	**/
	var object : bpy.types.object.Object;
	/**
		Number of steps in the revolution
		
		Type: int in [2, 10000], default 0
	**/
	var render_steps : Int;
	/**
		Offset the revolution along its axis
		
		Type: float in [-inf, inf], default 0.0
	**/
	var screw_offset : Float;
	/**
		Number of steps in the revolution
		
		Type: int in [2, 10000], default 0
	**/
	var steps : Int;
	/**
		Merge adjacent vertices (screw offset must be zero)
		
		Type: boolean, default False
	**/
	var use_merge_vertices : Bool;
	/**
		Calculate the order of edges (needed for meshes, but not curves)
		
		Type: boolean, default False
	**/
	var use_normal_calculate : Bool;
	/**
		Flip normals of lathed faces
		
		Type: boolean, default False
	**/
	var use_normal_flip : Bool;
	/**
		Use the distance between the objects to make a screw
		
		Type: boolean, default False
	**/
	var use_object_screw_offset : Bool;
	/**
		Output faces with smooth shading rather than flat shaded
		
		Type: boolean, default False
	**/
	var use_smooth_shade : Bool;
	/**
		Stretch the U coordinates between 0-1 when UV’s are present
		
		Type: boolean, default False
	**/
	var use_stretch_u : Bool;
	/**
		Stretch the V coordinates between 0-1 when UV’s are present
		
		Type: boolean, default False
	**/
	var use_stretch_v : Bool;
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