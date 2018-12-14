package bpy.types.uvwarpmodifier;
@:enum abstract Enum1(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum2(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}/**
	Add target position to uv coordinates
**/
@:pythonImport("bpy.types.UVWarpModifier") extern class UVWarpModifier {
	/**
		Pole axis for rotation
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var axis_u : bpy.types.uvwarpmodifier.UVWarpModifier.Enum1;
	/**
		Pole axis for rotation
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var axis_v : bpy.types.uvwarpmodifier.UVWarpModifier.Enum2;
	/**
		Bone defining offset
		
		Type: string, default “”, (never None)
	**/
	var bone_from : String;
	/**
		Bone defining offset
		
		Type: string, default “”, (never None)
	**/
	var bone_to : String;
	/**
		Center point for rotate/scale
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var center : Array<Float>;
	/**
		Object defining offset
		
		Type: Object
	**/
	var object_from : bpy.types.object.Object;
	/**
		Object defining offset
		
		Type: Object
	**/
	var object_to : bpy.types.object.Object;
	/**
		UV Layer name
		
		Type: string, default “”, (never None)
	**/
	var uv_layer : String;
	/**
		Vertex group name
		
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