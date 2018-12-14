package bpy.types.vertexweightmixmodifier;
@:enum abstract Enum1(String) from String to String {
	var LOCAL : String = "LOCAL";
	var GLOBAL : String = "GLOBAL";
	var OBJECT : String = "OBJECT";
	var UV : String = "UV";
}@:enum abstract Enum2(String) from String to String {
	var INT : String = "INT";
	var RED : String = "RED";
	var GREEN : String = "GREEN";
	var BLUE : String = "BLUE";
	var HUE : String = "HUE";
	var SAT : String = "SAT";
	var VAL : String = "VAL";
	var ALPHA : String = "ALPHA";
}@:enum abstract Enum3(String) from String to String {
	var SET : String = "SET";
	var ADD : String = "ADD";
	var SUB : String = "SUB";
	var MUL : String = "MUL";
	var DIV : String = "DIV";
	var DIF : String = "DIF";
	var AVG : String = "AVG";
}@:enum abstract Enum4(String) from String to String {
	var ALL : String = "ALL";
	var A : String = "A";
	var B : String = "B";
	var OR : String = "OR";
	var AND : String = "AND";
}/**
	Mix the weights of two vertex groups
**/
@:pythonImport("bpy.types.VertexWeightMixModifier") extern class VertexWeightMixModifier {
	/**
		Default weight a vertex will have if it is not in the first A vgroup
		
		Type: float in [0, 1], default 0.0
	**/
	var default_weight_a : Float;
	/**
		Default weight a vertex will have if it is not in the second B vgroup
		
		Type: float in [0, 1], default 0.0
	**/
	var default_weight_b : Float;
	/**
		Global influence of current modifications on vgroup
		
		Type: float in [-inf, inf], default 0.0
	**/
	var mask_constant : Float;
	/**
		Which object to take texture coordinates from
		
		Type: Object
	**/
	var mask_tex_map_object : bpy.types.object.Object;
	/**
		Which texture coordinates to use for mapping
		
		Type: enum in [‘LOCAL’, ‘GLOBAL’, ‘OBJECT’, ‘UV’], default ‘LOCAL’
	**/
	var mask_tex_mapping : bpy.types.vertexweightmixmodifier.VertexWeightMixModifier.Enum1;
	/**
		Which texture channel to use for masking
		
		Type: enum in [‘INT’, ‘RED’, ‘GREEN’, ‘BLUE’, ‘HUE’, ‘SAT’, ‘VAL’, ‘ALPHA’], default ‘INT’
	**/
	var mask_tex_use_channel : bpy.types.vertexweightmixmodifier.VertexWeightMixModifier.Enum2;
	/**
		UV map name
		
		Type: string, default “”, (never None)
	**/
	var mask_tex_uv_layer : String;
	/**
		Masking texture
		
		Type: Texture
	**/
	var mask_texture : bpy.types.texture.Texture;
	/**
		Masking vertex group name
		
		Type: string, default “”, (never None)
	**/
	var mask_vertex_group : String;
	/**
		How weights from vgroup B affect weights of vgroup A
		
		Type: enum in [‘SET’, ‘ADD’, ‘SUB’, ‘MUL’, ‘DIV’, ‘DIF’, ‘AVG’], default ‘SET’
	**/
	var mix_mode : bpy.types.vertexweightmixmodifier.VertexWeightMixModifier.Enum3;
	/**
		Which vertices should be affected
		
		Type: enum in [‘ALL’, ‘A’, ‘B’, ‘OR’, ‘AND’], default ‘ALL’
	**/
	var mix_set : bpy.types.vertexweightmixmodifier.VertexWeightMixModifier.Enum4;
	/**
		First vertex group name
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_a : String;
	/**
		Second vertex group name
		
		Type: string, default “”, (never None)
	**/
	var vertex_group_b : String;
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