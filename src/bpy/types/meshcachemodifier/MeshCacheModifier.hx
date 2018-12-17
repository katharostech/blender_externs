package bpy.types.meshcachemodifier;
@:enum abstract Enum1(String) from String to String {
	var MDD : String = "MDD";
	var pyPC2 : String = "PC2";
}@:enum abstract Enum2(String) from String to String {
	var OVERWRITE : String = "OVERWRITE";
	var INTEGRATE : String = "INTEGRATE";
}@:enum abstract Enum3(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}@:enum abstract Enum4(String) from String to String {
	var NONE : String = "NONE";
	var LINEAR : String = "LINEAR";
}@:enum abstract Enum5(String) from String to String {
	var SCENE : String = "SCENE";
	var CUSTOM : String = "CUSTOM";
}@:enum abstract Enum6(String) from String to String {
	var FRAME : String = "FRAME";
	var TIME : String = "TIME";
	var FACTOR : String = "FACTOR";
}@:enum abstract Enum7(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}/**
	Cache Mesh
**/
@:native("bpy.types.MeshCacheModifier") extern class MeshCacheModifier {
	/**
		
		
		Type: enum in [‘MDD’, ‘PC2’], default ‘MDD’
	**/
	var cache_format : bpy.types.meshcachemodifier.MeshCacheModifier.Enum1;
	/**
		
		
		Type: enum in [‘OVERWRITE’, ‘INTEGRATE’], default ‘OVERWRITE’
	**/
	var deform_mode : bpy.types.meshcachemodifier.MeshCacheModifier.Enum2;
	/**
		Evaluation time in seconds
		
		Type: float in [0, 1], default 0.0
	**/
	var eval_factor : Float;
	/**
		The frame to evaluate (starting at 0)
		
		Type: float in [0, 1.04857e+06], default 0.0
	**/
	var eval_frame : Float;
	/**
		Evaluation time in seconds
		
		Type: float in [0, inf], default 0.0
	**/
	var eval_time : Float;
	/**
		Influence of the deformation
		
		Type: float in [0, 1], default 0.0
	**/
	var factor : Float;
	/**
		Path to external displacements file
		
		Type: string, default “”, (never None)
	**/
	var filepath : String;
	/**
		
		
		Type: enum set in {‘X’, ‘Y’, ‘Z’}, default {‘X’}
	**/
	var flip_axis : Dynamic;
	/**
		
		
		Type: enum in [‘POS_X’, ‘POS_Y’, ‘POS_Z’, ‘NEG_X’, ‘NEG_Y’, ‘NEG_Z’], default ‘POS_X’
	**/
	var forward_axis : bpy.types.meshcachemodifier.MeshCacheModifier.Enum3;
	/**
		Evaluation time in seconds
		
		Type: float in [0, 100], default 0.0
	**/
	var frame_scale : Float;
	/**
		Add this to the start frame
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0
	**/
	var frame_start : Float;
	/**
		
		
		Type: enum in [‘NONE’, ‘LINEAR’], default ‘NONE’
	**/
	var interpolation : bpy.types.meshcachemodifier.MeshCacheModifier.Enum4;
	/**
		
		
		Type: enum in [‘SCENE’, ‘CUSTOM’], default ‘SCENE’
	**/
	var play_mode : bpy.types.meshcachemodifier.MeshCacheModifier.Enum5;
	/**
		Method to control playback time
		
		Type: enum in [‘FRAME’, ‘TIME’, ‘FACTOR’], default ‘FRAME’
	**/
	var time_mode : bpy.types.meshcachemodifier.MeshCacheModifier.Enum6;
	/**
		
		
		Type: enum in [‘POS_X’, ‘POS_Y’, ‘POS_Z’, ‘NEG_X’, ‘NEG_Y’, ‘NEG_Z’], default ‘POS_X’
	**/
	var up_axis : bpy.types.meshcachemodifier.MeshCacheModifier.Enum7;
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