package bpy.types.cyclesrenderlayersettings;
@:native("bpy.types.CyclesRenderLayerSettings") extern class CyclesRenderLayerSettings {
	/**
		Denoise the direct diffuse lighting
		
		Type: boolean, default True
	**/
	var denoising_diffuse_direct : Bool;
	/**
		Denoise the indirect diffuse lighting
		
		Type: boolean, default True
	**/
	var denoising_diffuse_indirect : Bool;
	/**
		Controls removal of noisy image feature passes (lower values preserve more detail, but aren’t as smooth)
		
		Type: float in [0, 1], default 0.5
	**/
	var denoising_feature_strength : Float;
	/**
		Denoise the direct glossy lighting
		
		Type: boolean, default True
	**/
	var denoising_glossy_direct : Bool;
	/**
		Denoise the indirect glossy lighting
		
		Type: boolean, default True
	**/
	var denoising_glossy_indirect : Bool;
	/**
		Size of the image area that’s used to denoise a pixel (higher values are smoother, but might lose detail and are slower)
		
		Type: int in [1, 25], default 8
	**/
	var denoising_radius : Int;
	/**
		When removing pixels that don’t carry information, use a relative threshold instead of an absolute one (can help to reduce artifacts, but might cause detail loss around edges)
		
		Type: boolean, default False
	**/
	var denoising_relative_pca : Bool;
	/**
		Store the denoising feature passes and the noisy image
		
		Type: boolean, default False
	**/
	var denoising_store_passes : Bool;
	/**
		Controls neighbor pixel weighting for the denoising filter (lower values preserve more detail, but aren’t as smooth)
		
		Type: float in [0, 1], default 0.5
	**/
	var denoising_strength : Float;
	/**
		Denoise the direct subsurface lighting
		
		Type: boolean, default True
	**/
	var denoising_subsurface_direct : Bool;
	/**
		Denoise the indirect subsurface lighting
		
		Type: boolean, default True
	**/
	var denoising_subsurface_indirect : Bool;
	/**
		Denoise the direct transmission lighting
		
		Type: boolean, default True
	**/
	var denoising_transmission_direct : Bool;
	/**
		Denoise the indirect transmission lighting
		
		Type: boolean, default True
	**/
	var denoising_transmission_indirect : Bool;
	/**
		Generate a more accurate Cryptomatte pass. CPU only, may render slower and use more memory
		
		Type: boolean, default True
	**/
	var pass_crypto_accurate : Bool;
	/**
		Sets how many unique objects can be distinguished per pixel
		
		Type: int in [2, 16], default 6
	**/
	var pass_crypto_depth : Int;
	/**
		Store Debug BVH Intersections
		
		Type: boolean, default False
	**/
	var pass_debug_bvh_intersections : Bool;
	/**
		Store Debug BVH Traversed Instances pass
		
		Type: boolean, default False
	**/
	var pass_debug_bvh_traversed_instances : Bool;
	/**
		Store Debug BVH Traversed Nodes pass
		
		Type: boolean, default False
	**/
	var pass_debug_bvh_traversed_nodes : Bool;
	/**
		Store Debug Ray Bounces pass
		
		Type: boolean, default False
	**/
	var pass_debug_ray_bounces : Bool;
	/**
		Render time in milliseconds per sample and pixel
		
		Type: boolean, default False
	**/
	var pass_debug_render_time : Bool;
	/**
		Denoise the rendered image
		
		Type: boolean, default False
	**/
	var use_denoising : Bool;
	/**
		Render cryptomatte asset pass, for isolating groups of objects with the same parent
		
		Type: boolean, default False
	**/
	var use_pass_crypto_asset : Bool;
	/**
		Render cryptomatte material pass, for isolating materials in compositing
		
		Type: boolean, default False
	**/
	var use_pass_crypto_material : Bool;
	/**
		Render cryptomatte object pass, for isolating objects in compositing
		
		Type: boolean, default False
	**/
	var use_pass_crypto_object : Bool;
	/**
		Deliver direct volumetric scattering pass
		
		Type: boolean, default False
	**/
	var use_pass_volume_direct : Bool;
	/**
		Deliver indirect volumetric scattering pass
		
		Type: boolean, default False
	**/
	var use_pass_volume_indirect : Bool;
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