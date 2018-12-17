package bpy.types.cyclesrendersettings;
@:enum abstract Enum1(String) from String to String {
	var COMBINED : String = "COMBINED";
	var AO : String = "AO";
	var SHADOW : String = "SHADOW";
	var NORMAL : String = "NORMAL";
	var UV : String = "UV";
	var ROUGHNESS : String = "ROUGHNESS";
	var EMIT : String = "EMIT";
	var ENVIRONMENT : String = "ENVIRONMENT";
	var DIFFUSE : String = "DIFFUSE";
	var GLOSSY : String = "GLOSSY";
	var TRANSMISSION : String = "TRANSMISSION";
	var SUBSURFACE : String = "SUBSURFACE";
}@:enum abstract Enum2(String) from String to String {
	var pyBVH2 : String = "BVH2";
	var pyBVH4 : String = "BVH4";
	var pyBVH8 : String = "BVH8";
}@:enum abstract Enum3(String) from String to String {
	var DYNAMIC_BVH : String = "DYNAMIC_BVH";
	var STATIC_BVH : String = "STATIC_BVH";
}@:enum abstract Enum4(String) from String to String {
	var NONE : String = "NONE";
	var ALL : String = "ALL";
	var DEFAULT : String = "DEFAULT";
	var CPU : String = "CPU";
	var GPU : String = "GPU";
	var ACCELERATOR : String = "ACCELERATOR";
}@:enum abstract Enum5(String) from String to String {
	var DEFAULT : String = "DEFAULT";
	var MEGA : String = "MEGA";
	var SPLIT : String = "SPLIT";
}@:enum abstract Enum6(String) from String to String {
	var CPU : String = "CPU";
	var GPU : String = "GPU";
}@:enum abstract Enum7(String) from String to String {
	var SUPPORTED : String = "SUPPORTED";
	var EXPERIMENTAL : String = "EXPERIMENTAL";
}@:enum abstract Enum8(String) from String to String {
	var BOX : String = "BOX";
	var GAUSSIAN : String = "GAUSSIAN";
	var BLACKMAN_HARRIS : String = "BLACKMAN_HARRIS";
}@:enum abstract Enum9(String) from String to String {
	var START : String = "START";
	var CENTER : String = "CENTER";
	var END : String = "END";
}@:enum abstract Enum10(String) from String to String {
	var BOX : String = "BOX";
	var GAUSSIAN : String = "GAUSSIAN";
	var BLACKMAN_HARRIS : String = "BLACKMAN_HARRIS";
}@:enum abstract Enum11(String) from String to String {
	var BRANCHED_PATH : String = "BRANCHED_PATH";
	var PATH : String = "PATH";
}@:enum abstract Enum12(String) from String to String {
	var NONE : String = "NONE";
	var TOP : String = "TOP";
}@:enum abstract Enum13(String) from String to String {
	var SOBOL : String = "SOBOL";
	var CORRELATED_MUTI_JITTER : String = "CORRELATED_MUTI_JITTER";
}@:enum abstract Enum14(String) from String to String {
	var OFF : String = "OFF";
	var py128 : String = "128";
	var py256 : String = "256";
	var py512 : String = "512";
	var py1024 : String = "1024";
	var py2048 : String = "2048";
	var py4096 : String = "4096";
	var py8192 : String = "8192";
}@:enum abstract Enum15(String) from String to String {
	var OFF : String = "OFF";
	var py128 : String = "128";
	var py256 : String = "256";
	var py512 : String = "512";
	var py1024 : String = "1024";
	var py2048 : String = "2048";
	var py4096 : String = "4096";
	var py8192 : String = "8192";
}@:enum abstract Enum16(String) from String to String {
	var CENTER : String = "CENTER";
	var RIGHT_TO_LEFT : String = "RIGHT_TO_LEFT";
	var LEFT_TO_RIGHT : String = "LEFT_TO_RIGHT";
	var TOP_TO_BOTTOM : String = "TOP_TO_BOTTOM";
	var BOTTOM_TO_TOP : String = "BOTTOM_TO_TOP";
	var HILBERT_SPIRAL : String = "HILBERT_SPIRAL";
}@:enum abstract Enum17(String) from String to String {
	var USE : String = "USE";
	var BOUNDED : String = "BOUNDED";
	var IGNORE : String = "IGNORE";
}@:native("bpy.types.CyclesRenderSettings") extern class CyclesRenderSettings {
	/**
		Number of antialiasing samples to render for each pixel
		
		Type: int in [1, 2097151], default 128
	**/
	var aa_samples : Int;
	/**
		Approximate indirect light with background tinted ambient occlusion at the specified bounce, 0 disables this feature
		
		Type: int in [0, 1024], default 0
	**/
	var ao_bounces : Int;
	/**
		Approximate indirect light with background tinted ambient occlusion at the specified bounce, 0 disables this feature
		
		Type: int in [0, 1024], default 0
	**/
	var ao_bounces_render : Int;
	/**
		Number of ambient occlusion samples to render for each AA sample
		
		Type: int in [1, 1024], default 1
	**/
	var ao_samples : Int;
	/**
		Type of pass to bake
		
		Type: enum in [‘COMBINED’, ‘AO’, ‘SHADOW’, ‘NORMAL’, ‘UV’, ‘ROUGHNESS’, ‘EMIT’, ‘ENVIRONMENT’, ‘DIFFUSE’, ‘GLOSSY’, ‘TRANSMISSION’, ‘SUBSURFACE’], default ‘COMBINED’
	**/
	var bake_type : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum1;
	/**
		Adaptively blur glossy shaders after blurry bounces, to reduce noise at the cost of accuracy
		
		Type: float in [0, 10], default 1.0
	**/
	var blur_glossy : Float;
	/**
		Margin for the camera space culling
		
		Type: float in [0, 5], default 0.1
	**/
	var camera_cull_margin : Float;
	/**
		Use reflective caustics, resulting in a brighter image (more noise but added realism)
		
		Type: boolean, default True
	**/
	var caustics_reflective : Bool;
	/**
		Use refractive caustics, resulting in a brighter image (more noise but added realism)
		
		Type: boolean, default True
	**/
	var caustics_refractive : Bool;
	/**
		
		
		Type: enum in [‘BVH2’, ‘BVH4’, ‘BVH8’], default ‘BVH8’
	**/
	var debug_bvh_layout : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum2;
	/**
		Split BVH primitives by this number of time steps to speed up render time in cost of memory
		
		Type: int in [0, 16], default 0
	**/
	var debug_bvh_time_steps : Int;
	/**
		Choose between faster updates, or faster render
		
		Type: enum in [‘DYNAMIC_BVH’, ‘STATIC_BVH’], default ‘DYNAMIC_BVH’
	**/
	var debug_bvh_type : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum3;
	/**
		
		
		Type: float in [0.01, 10], default 0.1
	**/
	var debug_cancel_timeout : Float;
	/**
		
		
		Type: enum in [‘NONE’, ‘ALL’, ‘DEFAULT’, ‘CPU’, ‘GPU’, ‘ACCELERATOR’], default ‘ALL’
	**/
	var debug_opencl_device_type : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum4;
	/**
		
		
		Type: boolean, default True
	**/
	var debug_opencl_kernel_single_program : Bool;
	/**
		
		
		Type: enum in [‘DEFAULT’, ‘MEGA’, ‘SPLIT’], default ‘DEFAULT’
	**/
	var debug_opencl_kernel_type : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum5;
	/**
		Artificial limit on OpenCL memory usage in MB (0 to disable limit)
		
		Type: int in [-inf, inf], default 0
	**/
	var debug_opencl_mem_limit : Int;
	/**
		
		
		Type: float in [0.01, 10], default 0.1
	**/
	var debug_reset_timeout : Float;
	/**
		
		
		Type: float in [0.01, 10], default 1.0
	**/
	var debug_text_timeout : Float;
	/**
		
		
		Type: int in [1, 4096], default 1024
	**/
	var debug_tile_size : Int;
	/**
		
		
		Type: boolean, default True
	**/
	var debug_use_cpu_avx : Bool;
	/**
		
		
		Type: boolean, default True
	**/
	var pydebug_use_cpu_avx2 : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var debug_use_cpu_split_kernel : Bool;
	/**
		
		
		Type: boolean, default True
	**/
	var pydebug_use_cpu_sse2 : Bool;
	/**
		
		
		Type: boolean, default True
	**/
	var pydebug_use_cpu_sse3 : Bool;
	/**
		
		
		Type: boolean, default True
	**/
	var pydebug_use_cpu_sse41 : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var debug_use_cuda_adaptive_compile : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var debug_use_cuda_split_kernel : Bool;
	/**
		Use special type BVH optimized for hair (uses more ram but renders faster)
		
		Type: boolean, default True
	**/
	var debug_use_hair_bvh : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var debug_use_opencl_debug : Bool;
	/**
		Use BVH spatial splits: longer builder time, faster render
		
		Type: boolean, default False
	**/
	var debug_use_spatial_splits : Bool;
	/**
		Device to use for rendering
		
		Type: enum in [‘CPU’, ‘GPU’], default ‘CPU’
	**/
	var device : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum6;
	/**
		Camera to use as reference point when subdividing geometry, useful to avoid crawling artifacts in animations when the scene camera is moving
		
		Type: Object
	**/
	var dicing_camera : bpy.types.object.Object;
	/**
		Size of a micropolygon in pixels
		
		Type: float in [0.1, 1000], default 1.0
	**/
	var dicing_rate : Float;
	/**
		Maximum number of diffuse reflection bounces, bounded by total maximum
		
		Type: int in [0, 1024], default 4
	**/
	var diffuse_bounces : Int;
	/**
		Number of diffuse bounce samples to render for each AA sample
		
		Type: int in [1, 1024], default 1
	**/
	var diffuse_samples : Int;
	/**
		Cull objects which are further away from camera than this distance
		
		Type: float in [0, inf], default 50.0
	**/
	var distance_cull_margin : Float;
	/**
		Feature set to use for rendering
		
		Type: enum in [‘SUPPORTED’, ‘EXPERIMENTAL’], default ‘SUPPORTED’
	**/
	var feature_set : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum7;
	/**
		Image brightness scale
		
		Type: float in [0, 10], default 1.0
	**/
	var film_exposure : Float;
	/**
		World background is transparent, for compositing the render over another background
		
		Type: boolean, default False
	**/
	var film_transparent : Bool;
	/**
		Render transmissive surfaces as transparent, for compositing glass over another background
		
		Type: boolean, default False
	**/
	var film_transparent_glass : Bool;
	/**
		For transparent transmission, keep surfaces with roughness above the threshold opaque
		
		Type: float in [0, 1], default 0.1
	**/
	var film_transparent_roughness : Float;
	/**
		Pixel filter type
		
		Type: enum in [‘BOX’, ‘GAUSSIAN’, ‘BLACKMAN_HARRIS’], default ‘BLACKMAN_HARRIS’
	**/
	var filter_type : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum8;
	/**
		Pixel filter width
		
		Type: float in [0.01, 10], default 1.5
	**/
	var filter_width : Float;
	/**
		Maximum number of glossy reflection bounces, bounded by total maximum
		
		Type: int in [0, 1024], default 4
	**/
	var glossy_bounces : Int;
	/**
		Number of glossy bounce samples to render for each AA sample
		
		Type: int in [1, 1024], default 1
	**/
	var glossy_samples : Int;
	/**
		Probabilistically terminate light samples when the light contribution is below this threshold (more noise but faster rendering). Zero disables the test and never ignores lights
		
		Type: float in [0, 1], default 0.01
	**/
	var light_sampling_threshold : Float;
	/**
		Total maximum number of bounces
		
		Type: int in [0, 1024], default 12
	**/
	var max_bounces : Int;
	/**
		Stop subdividing when this level is reached even if the dice rate would produce finer tessellation
		
		Type: int in [0, 16], default 12
	**/
	var max_subdivisions : Int;
	/**
		Number of mesh emission light samples to render for each AA sample
		
		Type: int in [1, 1024], default 1
	**/
	var mesh_light_samples : Int;
	/**
		Offset for the shutter’s time interval, allows to change the motion blur trails
		
		Type: enum in [‘START’, ‘CENTER’, ‘END’], default ‘CENTER’
	**/
	var motion_blur_position : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum9;
	/**
		Multiplier for dicing rate of geometry outside of the camera view. The dicing rate of objects is gradually increased the further they are outside the camera view. Lower values provide higher quality reflections and shadows for off screen objects, while higher values use less memory
		
		Type: float in [1, inf], default 4.0
	**/
	var offscreen_dicing_scale : Float;
	/**
		Pixel filter type
		
		Type: enum in [‘BOX’, ‘GAUSSIAN’, ‘BLACKMAN_HARRIS’], default ‘BLACKMAN_HARRIS’
	**/
	var pixel_filter_type : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum10;
	/**
		Number of antialiasing samples to render in the viewport, unlimited if 0
		
		Type: int in [0, 2097151], default 32
	**/
	var preview_aa_samples : Int;
	/**
		Size of a micropolygon in pixels during preview render
		
		Type: float in [0.1, 1000], default 8.0
	**/
	var preview_dicing_rate : Float;
	/**
		Pause all viewport preview renders
		
		Type: boolean, default False
	**/
	var preview_pause : Bool;
	/**
		Number of samples to render in the viewport, unlimited if 0
		
		Type: int in [0, inf], default 32
	**/
	var preview_samples : Int;
	/**
		Resolution to start rendering preview at, progressively increasing it to the full viewport size
		
		Type: int in [8, 16384], default 64
	**/
	var preview_start_resolution : Int;
	/**
		Method to sample lights and materials
		
		Type: enum in [‘BRANCHED_PATH’, ‘PATH’], default ‘PATH’
	**/
	var progressive : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum11;
	/**
		Scanline “exposure” time for the rolling shutter effect
		
		Type: float in [0, 1], default 0.1
	**/
	var rolling_shutter_duration : Float;
	/**
		Type of rolling shutter effect matching CMOS-based cameras
		
		Type: enum in [‘NONE’, ‘TOP’], default ‘NONE’
	**/
	var rolling_shutter_type : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum12;
	/**
		Sample all lights (for direct samples), rather than randomly picking one
		
		Type: boolean, default True
	**/
	var sample_all_lights_direct : Bool;
	/**
		Sample all lights (for indirect samples), rather than randomly picking one
		
		Type: boolean, default True
	**/
	var sample_all_lights_indirect : Bool;
	/**
		If non-zero, the maximum value for a direct sample, higher values will be scaled down to avoid too much noise and slow convergence at the cost of accuracy
		
		Type: float in [0, inf], default 0.0
	**/
	var sample_clamp_direct : Float;
	/**
		If non-zero, the maximum value for an indirect sample, higher values will be scaled down to avoid too much noise and slow convergence at the cost of accuracy
		
		Type: float in [0, inf], default 10.0
	**/
	var sample_clamp_indirect : Float;
	/**
		Number of samples to render for each pixel
		
		Type: int in [1, inf], default 128
	**/
	var samples : Int;
	/**
		Random sampling pattern used by the integrator
		
		Type: enum in [‘SOBOL’, ‘CORRELATED_MUTI_JITTER’], default ‘SOBOL’
	**/
	var sampling_pattern : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum13;
	/**
		Seed value for integrator to get different noise patterns
		
		Type: int in [0, inf], default 0
	**/
	var seed : Int;
	/**
		Use Open Shading Language (CPU rendering only)
		
		Type: boolean, default False
	**/
	var shading_system : Bool;
	/**
		Number of subsurface scattering samples to render for each AA sample
		
		Type: int in [1, 1024], default 1
	**/
	var subsurface_samples : Int;
	/**
		Limit texture size used by viewport rendering
		
		Type: enum in [‘OFF’, ‘128’, ‘256’, ‘512’, ‘1024’, ‘2048’, ‘4096’, ‘8192’], default ‘OFF’
	**/
	var texture_limit : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum14;
	/**
		Limit texture size used by final rendering
		
		Type: enum in [‘OFF’, ‘128’, ‘256’, ‘512’, ‘1024’, ‘2048’, ‘4096’, ‘8192’], default ‘OFF’
	**/
	var texture_limit_render : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum15;
	/**
		Tile order for rendering
		
		Type: enum in [‘CENTER’, ‘RIGHT_TO_LEFT’, ‘LEFT_TO_RIGHT’, ‘TOP_TO_BOTTOM’, ‘BOTTOM_TO_TOP’, ‘HILBERT_SPIRAL’], default ‘HILBERT_SPIRAL’
	**/
	var tile_order : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum16;
	/**
		Maximum number of transmission bounces, bounded by total maximum
		
		Type: int in [0, 1024], default 12
	**/
	var transmission_bounces : Int;
	/**
		Number of transmission bounce samples to render for each AA sample
		
		Type: int in [1, 1024], default 1
	**/
	var transmission_samples : Int;
	/**
		Maximum number of transparent bounces
		
		Type: int in [0, 1024], default 8
	**/
	var transparent_max_bounces : Int;
	/**
		Use different seed values (and hence noise patterns) at different frames
		
		Type: boolean, default False
	**/
	var use_animated_seed : Bool;
	/**
		Use Embree as ray accelerator
		
		Type: boolean, default False
	**/
	var use_bvh_embree : Bool;
	/**
		Allow objects to be culled based on the camera frustum
		
		Type: boolean, default False
	**/
	var use_camera_cull : Bool;
	/**
		Allow objects to be culled based on the distance from camera
		
		Type: boolean, default False
	**/
	var use_distance_cull : Bool;
	/**
		How to use per render layer sample settings
		
		Type: enum in [‘USE’, ‘BOUNDED’, ‘IGNORE’], default ‘USE’
	**/
	var use_layer_samples : bpy.types.cyclesrendersettings.CyclesRenderSettings.Enum17;
	/**
		Instead of rendering each tile until it is finished, refine the whole image progressively (this renders somewhat slower, but time can be saved by manually stopping the render when the noise is low enough)
		
		Type: boolean, default False
	**/
	var use_progressive_refine : Bool;
	/**
		Square sampling values for easier artist control
		
		Type: boolean, default False
	**/
	var use_square_samples : Bool;
	/**
		Maximum number of volumetric scattering events
		
		Type: int in [0, 1024], default 0
	**/
	var volume_bounces : Int;
	/**
		Maximum number of steps through the volume before giving up, to avoid extremely long render times with big objects or small step sizes
		
		Type: int in [2, 65536], default 1024
	**/
	var volume_max_steps : Int;
	/**
		Number of volume scattering samples to render for each AA sample
		
		Type: int in [1, 1024], default 1
	**/
	var volume_samples : Int;
	/**
		Distance between volume shader samples when rendering the volume (lower values give more accurate and detailed results, but also increased render time)
		
		Type: float in [1e-07, 100000], default 0.1
	**/
	var volume_step_size : Float;
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
}