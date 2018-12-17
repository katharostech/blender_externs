package bpy.types.displacemodifier;
@:enum abstract Enum1(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
	var NORMAL : String = "NORMAL";
	var CUSTOM_NORMAL : String = "CUSTOM_NORMAL";
	var RGB_TO_XYZ : String = "RGB_TO_XYZ";
}@:enum abstract Enum2(String) from String to String {
	var LOCAL : String = "LOCAL";
	var GLOBAL : String = "GLOBAL";
}@:enum abstract Enum3(String) from String to String {
	var LOCAL : String = "LOCAL";
	var GLOBAL : String = "GLOBAL";
	var OBJECT : String = "OBJECT";
	var UV : String = "UV";
}/**
	Displacement modifier
**/
@:native("bpy.types.DisplaceModifier") extern class DisplaceModifier {
	/**
		
		
		Type: enum in [‘X’, ‘Y’, ‘Z’, ‘NORMAL’, ‘CUSTOM_NORMAL’, ‘RGB_TO_XYZ’], default ‘X’
	**/
	var direction : bpy.types.displacemodifier.DisplaceModifier.Enum1;
	/**
		Material value that gives no displacement
		
		Type: float in [-inf, inf], default 0.0
	**/
	var mid_level : Float;
	/**
		
		
		Type: enum in [‘LOCAL’, ‘GLOBAL’], default ‘LOCAL’
	**/
	var space : bpy.types.displacemodifier.DisplaceModifier.Enum2;
	/**
		Amount to displace geometry
		
		Type: float in [-inf, inf], default 0.0
	**/
	var strength : Float;
	/**
		
		
		Type: Texture
	**/
	var texture : bpy.types.texture.Texture;
	/**
		
		
		Type: enum in [‘LOCAL’, ‘GLOBAL’, ‘OBJECT’, ‘UV’], default ‘LOCAL’
	**/
	var texture_coords : bpy.types.displacemodifier.DisplaceModifier.Enum3;
	/**
		Object to set the texture coordinates
		
		Type: Object
	**/
	var texture_coords_object : bpy.types.object.Object;
	/**
		UV map name
		
		Type: string, default “”, (never None)
	**/
	var uv_layer : String;
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