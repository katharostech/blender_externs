package bpy.types.renderlayer;
@:pythonImport("bpy.types.RenderLayer") extern class RenderLayer {
	/**
		For Zmask, only render what is behind solid z values instead of in front
		
		Type: boolean, default False, (readonly)
	**/
	var invert_zmask(default, never) : Bool;
	/**
		View layer name
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		
		
		Type: RenderPasses bpy_prop_collection of RenderPass, (readonly)
	**/
	var passes(default, never) : bpy.types.renderpasses.RenderPasses;
	/**
		Fill in Z values for solid faces in invisible layers, for masking
		
		Type: boolean, default False, (readonly)
	**/
	var use_all_z(default, never) : Bool;
	/**
		Render Ambient Occlusion in this Layer
		
		Type: boolean, default False, (readonly)
	**/
	var use_ao(default, never) : Bool;
	/**
		Render Edge-enhance in this Layer (only works for Solid faces)
		
		Type: boolean, default False, (readonly)
	**/
	var use_edge_enhance(default, never) : Bool;
	/**
		Render Halos in this Layer (on top of Solid)
		
		Type: boolean, default False, (readonly)
	**/
	var use_halo(default, never) : Bool;
	/**
		Deliver Ambient Occlusion pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_ambient_occlusion(default, never) : Bool;
	/**
		Deliver full combined RGBA buffer
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_combined(default, never) : Bool;
	/**
		Deliver diffuse color pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_diffuse_color(default, never) : Bool;
	/**
		Deliver diffuse direct pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_diffuse_direct(default, never) : Bool;
	/**
		Deliver diffuse indirect pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_diffuse_indirect(default, never) : Bool;
	/**
		Deliver emission pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_emit(default, never) : Bool;
	/**
		Deliver environment lighting pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_environment(default, never) : Bool;
	/**
		Deliver glossy color pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_glossy_color(default, never) : Bool;
	/**
		Deliver glossy direct pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_glossy_direct(default, never) : Bool;
	/**
		Deliver glossy indirect pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_glossy_indirect(default, never) : Bool;
	/**
		Deliver indirect lighting pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_indirect(default, never) : Bool;
	/**
		Deliver material index pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_material_index(default, never) : Bool;
	/**
		Deliver mist factor pass (0.0-1.0)
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_mist(default, never) : Bool;
	/**
		Deliver normal pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_normal(default, never) : Bool;
	/**
		Deliver object index pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_object_index(default, never) : Bool;
	/**
		Deliver shadow pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_shadow(default, never) : Bool;
	/**
		Deliver specular pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_specular(default, never) : Bool;
	/**
		Deliver subsurface color pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_subsurface_color(default, never) : Bool;
	/**
		Deliver subsurface direct pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_subsurface_direct(default, never) : Bool;
	/**
		Deliver subsurface indirect pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_subsurface_indirect(default, never) : Bool;
	/**
		Deliver transmission color pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_transmission_color(default, never) : Bool;
	/**
		Deliver transmission direct pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_transmission_direct(default, never) : Bool;
	/**
		Deliver transmission indirect pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_transmission_indirect(default, never) : Bool;
	/**
		Deliver texture UV pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_uv(default, never) : Bool;
	/**
		Deliver speed vector pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_vector(default, never) : Bool;
	/**
		Deliver Z values pass
		
		Type: boolean, default False, (readonly)
	**/
	var use_pass_z(default, never) : Bool;
	/**
		Render Sky in this Layer
		
		Type: boolean, default False, (readonly)
	**/
	var use_sky(default, never) : Bool;
	/**
		Render Solid faces in this Layer
		
		Type: boolean, default False, (readonly)
	**/
	var use_solid(default, never) : Bool;
	/**
		Render Strands in this Layer
		
		Type: boolean, default False, (readonly)
	**/
	var use_strand(default, never) : Bool;
	/**
		Only render what’s in front of the solid z values
		
		Type: boolean, default False, (readonly)
	**/
	var use_zmask(default, never) : Bool;
	/**
		Render Z-Transparent faces in this Layer (on top of Solid and Halos)
		
		Type: boolean, default False, (readonly)
	**/
	var use_ztransp(default, never) : Bool;
	/**
		Copies the pixels of this renderlayer from an image file
		@param filename Filename, Filename to load into this render tile, must be no smaller than the renderlayer — string, (never None)
		@param x Offset X, Offset the position to copy from if the image is larger than the render layer — int in [0, inf], (optional)
		@param y Offset Y, Offset the position to copy from if the image is larger than the render layer — int in [0, inf], (optional)
	**/
	function load_from_file(filename:String, x:Int, y:Int):Void;
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