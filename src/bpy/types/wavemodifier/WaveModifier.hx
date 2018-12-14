package bpy.types.wavemodifier;
@:enum abstract Enum1(String) from String to String {
	var LOCAL : String = "LOCAL";
	var GLOBAL : String = "GLOBAL";
	var OBJECT : String = "OBJECT";
	var UV : String = "UV";
}/**
	Wave effect modifier
**/
@:pythonImport("bpy.types.WaveModifier") extern class WaveModifier {
	/**
		Number of frames in which the wave damps out after it dies
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0
	**/
	var damping_time : Float;
	/**
		Distance after which it fades out
		
		Type: float in [0, inf], default 0.0
	**/
	var falloff_radius : Float;
	/**
		Height of the wave
		
		Type: float in [-inf, inf], default 0.0
	**/
	var height : Float;
	/**
		Lifetime of the wave in frames, zero means infinite
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0
	**/
	var lifetime : Float;
	/**
		Distance between the top and the base of a wave, the higher the value, the more narrow the wave
		
		Type: float in [0, inf], default 0.0
	**/
	var narrowness : Float;
	/**
		Speed of the wave, towards the starting point when negative
		
		Type: float in [-inf, inf], default 0.0
	**/
	var speed : Float;
	/**
		Object which defines the wave center
		
		Type: Object
	**/
	var start_position_object : bpy.types.object.Object;
	/**
		X coordinate of the start position
		
		Type: float in [-inf, inf], default 0.0
	**/
	var start_position_x : Float;
	/**
		Y coordinate of the start position
		
		Type: float in [-inf, inf], default 0.0
	**/
	var start_position_y : Float;
	/**
		
		
		Type: Texture
	**/
	var texture : bpy.types.texture.Texture;
	/**
		
		
		Type: enum in [‘LOCAL’, ‘GLOBAL’, ‘OBJECT’, ‘UV’], default ‘LOCAL’
	**/
	var texture_coords : bpy.types.wavemodifier.WaveModifier.Enum1;
	/**
		Object to set the texture coordinates
		
		Type: Object
	**/
	var texture_coords_object : bpy.types.object.Object;
	/**
		Either the starting frame (for positive speed) or ending frame (for negative speed.)
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0
	**/
	var time_offset : Float;
	/**
		Cyclic wave effect
		
		Type: boolean, default False
	**/
	var use_cyclic : Bool;
	/**
		Displace along normals
		
		Type: boolean, default False
	**/
	var use_normal : Bool;
	/**
		Enable displacement along the X normal
		
		Type: boolean, default False
	**/
	var use_normal_x : Bool;
	/**
		Enable displacement along the Y normal
		
		Type: boolean, default False
	**/
	var use_normal_y : Bool;
	/**
		Enable displacement along the Z normal
		
		Type: boolean, default False
	**/
	var use_normal_z : Bool;
	/**
		X axis motion
		
		Type: boolean, default False
	**/
	var use_x : Bool;
	/**
		Y axis motion
		
		Type: boolean, default False
	**/
	var use_y : Bool;
	/**
		UV map name
		
		Type: string, default “”, (never None)
	**/
	var uv_layer : String;
	/**
		Vertex group name for modulating the wave
		
		Type: string, default “”, (never None)
	**/
	var vertex_group : String;
	/**
		Distance between the waves
		
		Type: float in [0, inf], default 0.0
	**/
	var width : Float;
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