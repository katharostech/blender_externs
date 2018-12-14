package bpy.types.remeshmodifier;
@:enum abstract Enum1(String) from String to String {
	var BLOCKS : String = "BLOCKS";
	var SMOOTH : String = "SMOOTH";
	var SHARP : String = "SHARP";
}/**
	Generate a new surface with regular topology that follows the shape of the input mesh
**/
@:pythonImport("bpy.types.RemeshModifier") extern class RemeshModifier {
	/**
		
		
		Type: enum in [‘BLOCKS’, ‘SMOOTH’, ‘SHARP’], default ‘BLOCKS’
	**/
	var mode : bpy.types.remeshmodifier.RemeshModifier.Enum1;
	/**
		Resolution of the octree; higher values give finer details
		
		Type: int in [1, 12], default 0
	**/
	var octree_depth : Int;
	/**
		The ratio of the largest dimension of the model over the size of the grid
		
		Type: float in [0, 0.99], default 0.0
	**/
	var scale : Float;
	/**
		Tolerance for outliers; lower values filter noise while higher values will reproduce edges closer to the input
		
		Type: float in [-inf, inf], default 0.0
	**/
	var sharpness : Float;
	/**
		If removing disconnected pieces, minimum size of components to preserve as a ratio of the number of polygons in the largest component
		
		Type: float in [0, 1], default 0.0
	**/
	var threshold : Float;
	/**
		
		
		Type: boolean, default False
	**/
	var use_remove_disconnected : Bool;
	/**
		Output faces with smooth shading rather than flat shaded
		
		Type: boolean, default False
	**/
	var use_smooth_shade : Bool;
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