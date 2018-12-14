package bpy.types.vertexweightproximitymodifier;
@:enum abstract Enum1(String) from String to String {
	var LINEAR : String = "LINEAR";
	var SHARP : String = "SHARP";
	var SMOOTH : String = "SMOOTH";
	var ROOT : String = "ROOT";
	var ICON_SPHERECURVE : String = "ICON_SPHERECURVE";
	var RANDOM : String = "RANDOM";
	var STEP : String = "STEP";
}@:enum abstract Enum2(String) from String to String {
	var LOCAL : String = "LOCAL";
	var GLOBAL : String = "GLOBAL";
	var OBJECT : String = "OBJECT";
	var UV : String = "UV";
}@:enum abstract Enum3(String) from String to String {
	var INT : String = "INT";
	var RED : String = "RED";
	var GREEN : String = "GREEN";
	var BLUE : String = "BLUE";
	var HUE : String = "HUE";
	var SAT : String = "SAT";
	var VAL : String = "VAL";
	var ALPHA : String = "ALPHA";
}@:enum abstract Enum4(String) from String to String {
	var OBJECT : String = "OBJECT";
	var GEOMETRY : String = "GEOMETRY";
}/**
	Set the weights of vertices in a group from a target object’s distance
**/
@:pythonImport("bpy.types.VertexWeightProximityModifier") extern class VertexWeightProximityModifier {
	/**
		How weights are mapped to their new values
		
		Type: enum in [‘LINEAR’, ‘SHARP’, ‘SMOOTH’, ‘ROOT’, ‘ICON_SPHERECURVE’, ‘RANDOM’, ‘STEP’], default ‘LINEAR’
	**/
	var falloff_type : bpy.types.vertexweightproximitymodifier.VertexWeightProximityModifier.Enum1;
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
	var mask_tex_mapping : bpy.types.vertexweightproximitymodifier.VertexWeightProximityModifier.Enum2;
	/**
		Which texture channel to use for masking
		
		Type: enum in [‘INT’, ‘RED’, ‘GREEN’, ‘BLUE’, ‘HUE’, ‘SAT’, ‘VAL’, ‘ALPHA’], default ‘INT’
	**/
	var mask_tex_use_channel : bpy.types.vertexweightproximitymodifier.VertexWeightProximityModifier.Enum3;
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
		Distance mapping to weight 1.0
		
		Type: float in [0, inf], default 0.0
	**/
	var max_dist : Float;
	/**
		Distance mapping to weight 0.0
		
		Type: float in [0, inf], default 0.0
	**/
	var min_dist : Float;
	/**
		Use the shortest computed distance to target object’s geometry as weight
		
		Type: enum set in {‘VERTEX’, ‘EDGE’, ‘FACE’}, default {‘FACE’}
	**/
	var proximity_geometry : Dynamic;
	/**
		Which distances to target object to use
		
		Type: enum in [‘OBJECT’, ‘GEOMETRY’], default ‘GEOMETRY’
	**/
	var proximity_mode : bpy.types.vertexweightproximitymodifier.VertexWeightProximityModifier.Enum4;
	/**
		Object to calculate vertices distances from
		
		Type: Object
	**/
	var target : bpy.types.object.Object;
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