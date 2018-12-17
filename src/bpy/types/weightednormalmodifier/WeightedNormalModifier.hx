package bpy.types.weightednormalmodifier;
@:enum abstract Enum1(String) from String to String {
	var FACE_AREA : String = "FACE_AREA";
	var CORNER_ANGLE : String = "CORNER_ANGLE";
	var FACE_AREA_WITH_ANGLE : String = "FACE_AREA_WITH_ANGLE";
}@:native("bpy.types.WeightedNormalModifier") extern class WeightedNormalModifier {
	/**
		Use influence of face for weighting
		
		Type: boolean, default False
	**/
	var face_influence : Bool;
	/**
		Invert vertex group influence
		
		Type: boolean, default False
	**/
	var invert_vertex_group : Bool;
	/**
		Keep sharp edges as computed for default split normals, instead of setting a single weighted normal for each vertex
		
		Type: boolean, default False
	**/
	var keep_sharp : Bool;
	/**
		Weighted vertex normal mode to use
		
		Type: enum in [‘FACE_AREA’, ‘CORNER_ANGLE’, ‘FACE_AREA_WITH_ANGLE’], default ‘FACE_AREA’
	**/
	var mode : bpy.types.weightednormalmodifier.WeightedNormalModifier.Enum1;
	/**
		Threshold value for different weights to be considered equal
		
		Type: float in [0, 10], default 0.0
	**/
	var thresh : Float;
	/**
		Vertex group name for modifying the selected areas
		
		Type: string, default “”, (never None)
	**/
	var vertex_group : String;
	/**
		Corrective factor applied to faces’ weights, 50 is neutral, lower values increase weight of weak faces, higher values increase weight of strong faces
		
		Type: int in [1, 100], default 0
	**/
	var weight : Int;
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