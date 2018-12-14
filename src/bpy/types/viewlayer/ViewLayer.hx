package bpy.types.viewlayer;
/**
	View layer
**/
@:pythonImport("bpy.types.ViewLayer") extern class ViewLayer {
	/**
		Active layer collection in this view layer’s hierarchy
		
		Type: LayerCollection, (never None)
	**/
	var active_layer_collection : bpy.types.layercollection.LayerCollection;
	/**
		Cycles ViewLayer Settings
		
		Type: CyclesRenderLayerSettings, (readonly)
	**/
	var cycles(default, never) : bpy.types.cyclesrenderlayersettings.CyclesRenderLayerSettings;
	/**
		Dependencies in the scene data
		
		Type: Depsgraph, (readonly)
	**/
	var depsgraph(default, never) : bpy.types.depsgraph.Depsgraph;
	/**
		
		
		Type: FreestyleSettings, (readonly, never None)
	**/
	var freestyle_settings(default, never) : bpy.types.freestylesettings.FreestyleSettings;
	/**
		For Zmask, only render what is behind solid z values instead of in front
		
		Type: boolean, default False
	**/
	var invert_zmask : Bool;
	/**
		Root of collections hierarchy of this view layer,its ‘collection’ pointer property is the same as the scene’s master collection
		
		Type: LayerCollection, (readonly, never None)
	**/
	var layer_collection(default, never) : bpy.types.layercollection.LayerCollection;
	/**
		View layer name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		All the objects in this layer
		
		Type: LayerObjects bpy_prop_collection of Object, (readonly)
	**/
	var objects(default, never) : bpy.types.layerobjects.LayerObjects;
	/**
		Z, Index, normal, UV and vector passes are only affected by surfaces with alpha transparency equal to or higher than this threshold
		
		Type: float in [0, 1], default 0.0
	**/
	var pass_alpha_threshold : Float;
	/**
		Disable or enable the render layer
		
		Type: boolean, default False
	**/
	var use : Bool;
	/**
		Fill in Z values for solid faces in invisible layers, for masking
		
		Type: boolean, default False
	**/
	var use_all_z : Bool;
	/**
		Render Ambient Occlusion in this Layer
		
		Type: boolean, default False
	**/
	var use_ao : Bool;
	/**
		Render Edge-enhance in this Layer (only works for Solid faces)
		
		Type: boolean, default False
	**/
	var use_edge_enhance : Bool;
	/**
		Render stylized strokes in this Layer
		
		Type: boolean, default False
	**/
	var use_freestyle : Bool;
	/**
		Render Halos in this Layer (on top of Solid)
		
		Type: boolean, default False
	**/
	var use_halo : Bool;
	/**
		Deliver Ambient Occlusion pass
		
		Type: boolean, default False
	**/
	var use_pass_ambient_occlusion : Bool;
	/**
		Deliver full combined RGBA buffer
		
		Type: boolean, default False
	**/
	var use_pass_combined : Bool;
	/**
		Deliver diffuse color pass
		
		Type: boolean, default False
	**/
	var use_pass_diffuse_color : Bool;
	/**
		Deliver diffuse direct pass
		
		Type: boolean, default False
	**/
	var use_pass_diffuse_direct : Bool;
	/**
		Deliver diffuse indirect pass
		
		Type: boolean, default False
	**/
	var use_pass_diffuse_indirect : Bool;
	/**
		Deliver emission pass
		
		Type: boolean, default False
	**/
	var use_pass_emit : Bool;
	/**
		Deliver environment lighting pass
		
		Type: boolean, default False
	**/
	var use_pass_environment : Bool;
	/**
		Deliver glossy color pass
		
		Type: boolean, default False
	**/
	var use_pass_glossy_color : Bool;
	/**
		Deliver glossy direct pass
		
		Type: boolean, default False
	**/
	var use_pass_glossy_direct : Bool;
	/**
		Deliver glossy indirect pass
		
		Type: boolean, default False
	**/
	var use_pass_glossy_indirect : Bool;
	/**
		Deliver indirect lighting pass
		
		Type: boolean, default False
	**/
	var use_pass_indirect : Bool;
	/**
		Deliver material index pass
		
		Type: boolean, default False
	**/
	var use_pass_material_index : Bool;
	/**
		Deliver mist factor pass (0.0-1.0)
		
		Type: boolean, default False
	**/
	var use_pass_mist : Bool;
	/**
		Deliver normal pass
		
		Type: boolean, default False
	**/
	var use_pass_normal : Bool;
	/**
		Deliver object index pass
		
		Type: boolean, default False
	**/
	var use_pass_object_index : Bool;
	/**
		Deliver shadow pass
		
		Type: boolean, default False
	**/
	var use_pass_shadow : Bool;
	/**
		Deliver specular pass
		
		Type: boolean, default False
	**/
	var use_pass_specular : Bool;
	/**
		Deliver subsurface color pass
		
		Type: boolean, default False
	**/
	var use_pass_subsurface_color : Bool;
	/**
		Deliver subsurface direct pass
		
		Type: boolean, default False
	**/
	var use_pass_subsurface_direct : Bool;
	/**
		Deliver subsurface indirect pass
		
		Type: boolean, default False
	**/
	var use_pass_subsurface_indirect : Bool;
	/**
		Deliver transmission color pass
		
		Type: boolean, default False
	**/
	var use_pass_transmission_color : Bool;
	/**
		Deliver transmission direct pass
		
		Type: boolean, default False
	**/
	var use_pass_transmission_direct : Bool;
	/**
		Deliver transmission indirect pass
		
		Type: boolean, default False
	**/
	var use_pass_transmission_indirect : Bool;
	/**
		Deliver texture UV pass
		
		Type: boolean, default False
	**/
	var use_pass_uv : Bool;
	/**
		Deliver speed vector pass
		
		Type: boolean, default False
	**/
	var use_pass_vector : Bool;
	/**
		Deliver Z values pass
		
		Type: boolean, default False
	**/
	var use_pass_z : Bool;
	/**
		Render Sky in this Layer
		
		Type: boolean, default False
	**/
	var use_sky : Bool;
	/**
		Render Solid faces in this Layer
		
		Type: boolean, default False
	**/
	var use_solid : Bool;
	/**
		Render Strands in this Layer
		
		Type: boolean, default False
	**/
	var use_strand : Bool;
	/**
		Only render what’s in front of the solid z values
		
		Type: boolean, default False
	**/
	var use_zmask : Bool;
	/**
		Render Z-Transparent faces in this Layer (on top of Solid and Halos)
		
		Type: boolean, default False
	**/
	var use_ztransp : Bool;
	/**
		Requery the enabled render passes from the render engine
	**/
	static function update_render_passes():Void;
	/**
		Update data tagged to be updated from previous access to data or operators
	**/
	function update():Void;
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