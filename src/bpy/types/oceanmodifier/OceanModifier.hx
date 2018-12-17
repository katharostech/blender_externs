package bpy.types.oceanmodifier;
@:enum abstract Enum1(String) from String to String {
	var GENERATE : String = "GENERATE";
	var DISPLACE : String = "DISPLACE";
}/**
	Simulate an ocean surface
**/
@:native("bpy.types.OceanModifier") extern class OceanModifier {
	/**
		How much foam accumulates over time (baked ocean only)
		
		Type: float in [0, inf], default 0.0
	**/
	var bake_foam_fade : Float;
	/**
		Choppiness of the wave’s crest (adds some horizontal component to the displacement)
		
		Type: float in [0, inf], default 0.0
	**/
	var choppiness : Float;
	/**
		Damp reflected waves going in opposite direction to the wind
		
		Type: float in [0, 1], default 0.0
	**/
	var damping : Float;
	/**
		Depth of the solid ground below the water surface
		
		Type: float in [-inf, inf], default 0.0
	**/
	var depth : Float;
	/**
		Path to a folder to store external baked images
		
		Type: string, default “”, (never None)
	**/
	var filepath : String;
	/**
		Amount of generated foam
		
		Type: float in [-inf, inf], default 0.0
	**/
	var foam_coverage : Float;
	/**
		Name of the vertex color layer used for foam
		
		Type: string, default “”, (never None)
	**/
	var foam_layer_name : String;
	/**
		End frame of the ocean baking
		
		Type: int in [0, inf], default 0
	**/
	var frame_end : Int;
	/**
		Start frame of the ocean baking
		
		Type: int in [0, inf], default 0
	**/
	var frame_start : Int;
	/**
		Method of modifying geometry
		
		Type: enum in [‘GENERATE’, ‘DISPLACE’], default ‘GENERATE’
	**/
	var geometry_mode : bpy.types.oceanmodifier.OceanModifier.Enum1;
	/**
		Whether the ocean is using cached data or simulating
		
		Type: boolean, default False, (readonly)
	**/
	var is_cached(default, never) : Bool;
	/**
		Seed of the random generator
		
		Type: int in [0, inf], default 0
	**/
	var random_seed : Int;
	/**
		Repetitions of the generated surface in X
		
		Type: int in [1, 1024], default 0
	**/
	var repeat_x : Int;
	/**
		Repetitions of the generated surface in Y
		
		Type: int in [1, 1024], default 0
	**/
	var repeat_y : Int;
	/**
		Resolution of the generated surface
		
		Type: int in [1, 1024], default 0
	**/
	var resolution : Int;
	/**
		Surface scale factor (does not affect the height of the waves)
		
		Type: float in [0, inf], default 0.0
	**/
	var size : Float;
	/**
		Size of the simulation domain (in meters), and of the generated geometry (in BU)
		
		Type: int in [-inf, inf], default 0
	**/
	var spatial_size : Int;
	/**
		Current time of the simulation
		
		Type: float in [0, inf], default 0.0
	**/
	var time : Float;
	/**
		Generate foam mask as a vertex color channel
		
		Type: boolean, default False
	**/
	var use_foam : Bool;
	/**
		Output normals for bump mapping - disabling can speed up performance if its not needed
		
		Type: boolean, default False
	**/
	var use_normals : Bool;
	/**
		How much the waves are aligned to each other
		
		Type: float in [0, 10], default 0.0
	**/
	var wave_alignment : Float;
	/**
		Main direction of the waves when they are (partially) aligned
		
		Type: float in [-inf, inf], default 0.0
	**/
	var wave_direction : Float;
	/**
		Scale of the displacement effect
		
		Type: float in [0, inf], default 0.0
	**/
	var wave_scale : Float;
	/**
		Shortest allowed wavelength
		
		Type: float in [0, inf], default 0.0
	**/
	var wave_scale_min : Float;
	/**
		Wind speed
		
		Type: float in [-inf, inf], default 0.0
	**/
	var wind_velocity : Float;
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