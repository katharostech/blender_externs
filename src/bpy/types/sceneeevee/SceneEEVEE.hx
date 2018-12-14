package bpy.types.sceneeevee;
@:enum abstract Enum1(String) from String to String {
	var 64 : String = "64";
	var 128 : String = "128";
	var 256 : String = "256";
	var 512 : String = "512";
	var 1024 : String = "1024";
	var 2048 : String = "2048";
	var 4096 : String = "4096";
}@:enum abstract Enum2(String) from String to String {
	var 8 : String = "8";
	var 16 : String = "16";
	var 32 : String = "32";
	var 64 : String = "64";
}@:enum abstract Enum3(String) from String to String {
	var 64 : String = "64";
	var 128 : String = "128";
	var 256 : String = "256";
	var 512 : String = "512";
	var 1024 : String = "1024";
	var 2048 : String = "2048";
	var 4096 : String = "4096";
}@:enum abstract Enum4(String) from String to String {
	var 64 : String = "64";
	var 128 : String = "128";
	var 256 : String = "256";
	var 512 : String = "512";
	var 1024 : String = "1024";
	var 2048 : String = "2048";
	var 4096 : String = "4096";
}@:enum abstract Enum5(String) from String to String {
	var ESM : String = "ESM";
	var VSM : String = "VSM";
}@:enum abstract Enum6(String) from String to String {
	var 2 : String = "2";
	var 4 : String = "4";
	var 8 : String = "8";
	var 16 : String = "16";
}/**
	Scene display settings for 3d viewport
**/
@:pythonImport("bpy.types.SceneEEVEE") extern class SceneEEVEE {
	/**
		Maximum intensity a bloom pixel can have
		
		Type: float in [0, 1000], default 1.0
	**/
	var bloom_clamp : Float;
	/**
		Color applied to the bloom effect
		
		Type: float array of 3 items in [0, inf], default (1.0, 1.0, 1.0)
	**/
	var bloom_color : Array<Float>;
	/**
		Blend factor
		
		Type: float in [0, 10000], default 0.8
	**/
	var bloom_intensity : Float;
	/**
		Makes transition between under/over-threshold gradual
		
		Type: float in [0, 1], default 0.5
	**/
	var bloom_knee : Float;
	/**
		Bloom spread distance
		
		Type: float in [0, 100], default 6.5
	**/
	var bloom_radius : Float;
	/**
		Filters out pixels under this level of brightness
		
		Type: float in [0, 100000], default 0.8
	**/
	var bloom_threshold : Float;
	/**
		Max size of the bokeh shape for the depth of field (lower is faster)
		
		Type: float in [0, 2000], default 100.0
	**/
	var bokeh_max_size : Float;
	/**
		Brightness threshold for using sprite base depth of field
		
		Type: float in [0, 100000], default 1.0
	**/
	var bokeh_threshold : Float;
	/**
		Auto bake indirect lighting when editing probes
		
		Type: boolean, default False
	**/
	var gi_auto_bake : Bool;
	/**
		Info on current cache status
		
		Type: string, default “”, (readonly, never None)
	**/
	var gi_cache_info(default, never) : String;
	/**
		Size of the cubemap spheres to debug captured light
		
		Type: float in [0.05, 10], default 0.3
	**/
	var gi_cubemap_display_size : Float;
	/**
		Size of every cubemaps
		
		Type: enum in [‘64’, ‘128’, ‘256’, ‘512’, ‘1024’, ‘2048’, ‘4096’], default ‘512’
	**/
	var gi_cubemap_resolution : bpy.types.sceneeevee.SceneEEVEE.Enum1;
	/**
		Number of time the light is reinjected inside light grids, 0 disable indirect diffuse light
		
		Type: int in [0, inf], default 3
	**/
	var gi_diffuse_bounces : Int;
	/**
		Take more samples during cubemap filtering to remove artifacts
		
		Type: float in [1, 8], default 1.0
	**/
	var gi_filter_quality : Float;
	/**
		Clamp pixel intensity to reduce noise inside glossy reflections from reflection cubemaps (0 to disabled)
		
		Type: float in [0, inf], default 0.0
	**/
	var gi_glossy_clamp : Float;
	/**
		Size of the irradiance sample spheres to debug captured light
		
		Type: float in [0.05, 10], default 0.1
	**/
	var gi_irradiance_display_size : Float;
	/**
		Smoother irradiance interpolation but introduce light bleeding
		
		Type: float in [0, inf], default 0.1
	**/
	var gi_irradiance_smoothing : Float;
	/**
		Display captured cubemaps in the viewport
		
		Type: boolean, default False
	**/
	var gi_show_cubemaps : Bool;
	/**
		Display irradiance samples in the viewport
		
		Type: boolean, default False
	**/
	var gi_show_irradiance : Bool;
	/**
		Size of the shadow map applied to each irradiance sample
		
		Type: enum in [‘8’, ‘16’, ‘32’, ‘64’], default ‘32’
	**/
	var gi_visibility_resolution : bpy.types.sceneeevee.SceneEEVEE.Enum2;
	/**
		Distance of object that contribute to the ambient occlusion effect
		
		Type: float in [0, 100000], default 0.2
	**/
	var gtao_distance : Float;
	/**
		Factor for ambient occlusion blending
		
		Type: float in [0, inf], default 1.0
	**/
	var gtao_factor : Float;
	/**
		Precision of the horizon search
		
		Type: float in [0, 1], default 0.25
	**/
	var gtao_quality : Float;
	/**
		Minimum light intensity for a light to contribute to the lighting
		
		Type: float in [0, inf], default 0.01
	**/
	var light_threshold : Float;
	/**
		Number of samples to take with motion blur
		
		Type: int in [1, 64], default 8
	**/
	var motion_blur_samples : Int;
	/**
		Time taken in frames between shutter open and close
		
		Type: float in [0, inf], default 1.0
	**/
	var motion_blur_shutter : Float;
	/**
		Percentage of render size to add as overscan to the internal render buffers
		
		Type: float in [0, 50], default 3.0
	**/
	var overscan_size : Float;
	/**
		Size of sun light shadow maps
		
		Type: enum in [‘64’, ‘128’, ‘256’, ‘512’, ‘1024’, ‘2048’, ‘4096’], default ‘1024’
	**/
	var shadow_cascade_size : bpy.types.sceneeevee.SceneEEVEE.Enum3;
	/**
		Size of point and area light shadow maps
		
		Type: enum in [‘64’, ‘128’, ‘256’, ‘512’, ‘1024’, ‘2048’, ‘4096’], default ‘512’
	**/
	var shadow_cube_size : bpy.types.sceneeevee.SceneEEVEE.Enum4;
	/**
		Technique use to compute the shadows
		
		Type: enum in [‘ESM’, ‘VSM’], default ‘ESM’
	**/
	var shadow_method : bpy.types.sceneeevee.SceneEEVEE.Enum5;
	/**
		Screen percentage used to fade the SSR
		
		Type: float in [0, 0.5], default 0.075
	**/
	var ssr_border_fade : Float;
	/**
		Clamp pixel intensity to remove noise (0 to disabled)
		
		Type: float in [0, inf], default 10.0
	**/
	var ssr_firefly_fac : Float;
	/**
		Do not raytrace reflections for roughness above this value
		
		Type: float in [0, 1], default 0.5
	**/
	var ssr_max_roughness : Float;
	/**
		Precision of the screen space raytracing
		
		Type: float in [0, 1], default 0.25
	**/
	var ssr_quality : Float;
	/**
		Pixel thickness used to detect intersection
		
		Type: float in [1e-06, inf], default 0.2
	**/
	var ssr_thickness : Float;
	/**
		Rotate samples that are below this threshold
		
		Type: float in [0, 1], default 0.3
	**/
	var sss_jitter_threshold : Float;
	/**
		Number of samples to compute the scattering effect
		
		Type: int in [1, 32], default 7
	**/
	var sss_samples : Int;
	/**
		Number of samples per pixels for rendering
		
		Type: int in [1, inf], default 64
	**/
	var taa_render_samples : Int;
	/**
		Number of samples, unlimited if 0
		
		Type: int in [0, inf], default 16
	**/
	var taa_samples : Int;
	/**
		High brightness pixels generate a glowing effect
		
		Type: boolean, default False
	**/
	var use_bloom : Bool;
	/**
		Enable depth of field using the values from the active camera
		
		Type: boolean, default False
	**/
	var use_dof : Bool;
	/**
		Enable ambient occlusion to simulate medium scale indirect shadowing
		
		Type: boolean, default False
	**/
	var use_gtao : Bool;
	/**
		Compute main non occluded direction to sample the environment
		
		Type: boolean, default True
	**/
	var use_gtao_bent_normals : Bool;
	/**
		An approximation to simulate light bounces giving less occlusion on brighter objects
		
		Type: boolean, default True
	**/
	var use_gtao_bounce : Bool;
	/**
		Enable motion blur effect (only in camera view)
		
		Type: boolean, default False
	**/
	var use_motion_blur : Bool;
	/**
		Internally render past the image border to avoid screen-space effects disapearing
		
		Type: boolean, default False
	**/
	var use_overscan : Bool;
	/**
		Use 32bit shadows
		
		Type: boolean, default False
	**/
	var use_shadow_high_bitdepth : Bool;
	/**
		Randomize shadowmaps origin to create soft shadows
		
		Type: boolean, default False
	**/
	var use_soft_shadows : Bool;
	/**
		Enable screen space reflection
		
		Type: boolean, default False
	**/
	var use_ssr : Bool;
	/**
		Raytrace at a lower resolution
		
		Type: boolean, default True
	**/
	var use_ssr_halfres : Bool;
	/**
		Enable screen space Refractions
		
		Type: boolean, default False
	**/
	var use_ssr_refraction : Bool;
	/**
		Enable screen space subsurface scattering
		
		Type: boolean, default False
	**/
	var use_sss : Bool;
	/**
		Avoid albedo being blurred by the subsurface scattering but uses more video memory
		
		Type: boolean, default False
	**/
	var use_sss_separate_albedo : Bool;
	/**
		Denoise image using temporal reprojection (can leave some ghosting)
		
		Type: boolean, default True
	**/
	var use_taa_reprojection : Bool;
	/**
		Enable scattering and absorbance of volumetric material
		
		Type: boolean, default False
	**/
	var use_volumetric : Bool;
	/**
		Enable scene light interactions with volumetrics
		
		Type: boolean, default True
	**/
	var use_volumetric_lights : Bool;
	/**
		Generate shadows from volumetric material (Very expensive)
		
		Type: boolean, default False
	**/
	var use_volumetric_shadows : Bool;
	/**
		End distance of the volumetric effect
		
		Type: float in [1e-06, inf], default 100.0
	**/
	var volumetric_end : Float;
	/**
		Maximum light contribution, reducing noise
		
		Type: float in [0, inf], default 0.0
	**/
	var volumetric_light_clamp : Float;
	/**
		Distribute more samples closer to the camera
		
		Type: float in [0, 1], default 0.8
	**/
	var volumetric_sample_distribution : Float;
	/**
		Number of samples to compute volumetric effects
		
		Type: int in [1, 256], default 64
	**/
	var volumetric_samples : Int;
	/**
		Number of samples to compute volumetric shadowing
		
		Type: int in [1, 128], default 16
	**/
	var volumetric_shadow_samples : Int;
	/**
		Start distance of the volumetric effect
		
		Type: float in [1e-06, inf], default 0.1
	**/
	var volumetric_start : Float;
	/**
		Control the quality of the volumetric effects (lower size increase vram usage and quality)
		
		Type: enum in [‘2’, ‘4’, ‘8’, ‘16’], default ‘8’
	**/
	var volumetric_tile_size : bpy.types.sceneeevee.SceneEEVEE.Enum6;
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
}