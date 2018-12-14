package bpy.types.dopesheet;
/**
	Settings for filtering the channels shown in animation editors
**/
@:pythonImport("bpy.types.DopeSheet") extern class DopeSheet {
	/**
		Collection that included object should be a member of
		
		Type: Collection
	**/
	var filter_collection : bpy.types.collection.Collection;
	/**
		F-Curve live filtering string
		
		Type: string, default “”, (never None)
	**/
	var filter_fcurve_name : String;
	/**
		Live filtering string
		
		Type: string, default “”, (never None)
	**/
	var filter_text : String;
	/**
		Include visualization of armature related animation data
		
		Type: boolean, default False
	**/
	var show_armatures : Bool;
	/**
		Include visualization of camera related animation data
		
		Type: boolean, default False
	**/
	var show_cameras : Bool;
	/**
		Include visualization of curve related animation data
		
		Type: boolean, default False
	**/
	var show_curves : Bool;
	/**
		Show options for whether channels related to certain types of data are included
		
		Type: boolean, default False
	**/
	var show_datablock_filters : Bool;
	/**
		Collapse summary when shown, so all other channels get hidden (Dope Sheet editors only)
		
		Type: boolean, default False
	**/
	var show_expanded_summary : Bool;
	/**
		Include visualization of Grease Pencil related animation data and frames
		
		Type: boolean, default False
	**/
	var show_gpencil : Bool;
	/**
		Only show Grease Pencil data-blocks used as part of the active scene
		
		Type: boolean, default False
	**/
	var show_gpencil_3d_only : Bool;
	/**
		Include channels from objects/bone that are not visible
		
		Type: boolean, default False
	**/
	var show_hidden : Bool;
	/**
		Include visualization of lattice related animation data
		
		Type: boolean, default False
	**/
	var show_lattices : Bool;
	/**
		Include visualization of light related animation data
		
		Type: boolean, default False
	**/
	var show_lights : Bool;
	/**
		Include visualization of Line Style related Animation data
		
		Type: boolean, default False
	**/
	var show_linestyles : Bool;
	/**
		Include visualization of material related animation data
		
		Type: boolean, default False
	**/
	var show_materials : Bool;
	/**
		Include visualization of mesh related animation data
		
		Type: boolean, default False
	**/
	var show_meshes : Bool;
	/**
		Include visualization of metaball related animation data
		
		Type: boolean, default False
	**/
	var show_metaballs : Bool;
	/**
		Include animation data-blocks with no NLA data (NLA editor only)
		
		Type: boolean, default False
	**/
	var show_missing_nla : Bool;
	/**
		Include visualization of animation data related to data-blocks linked to modifiers
		
		Type: boolean, default False
	**/
	var show_modifiers : Bool;
	/**
		Include visualization of node related animation data
		
		Type: boolean, default False
	**/
	var show_nodes : Bool;
	/**
		Only include F-Curves and drivers that are disabled or have errors
		
		Type: boolean, default False
	**/
	var show_only_errors : Bool;
	/**
		Only include channels relating to selected objects and data
		
		Type: boolean, default False
	**/
	var show_only_selected : Bool;
	/**
		Include visualization of particle related animation data
		
		Type: boolean, default False
	**/
	var show_particles : Bool;
	/**
		Include visualization of scene related animation data
		
		Type: boolean, default False
	**/
	var show_scenes : Bool;
	/**
		Include visualization of shape key related animation data
		
		Type: boolean, default False
	**/
	var show_shapekeys : Bool;
	/**
		Include visualization of speaker related animation data
		
		Type: boolean, default False
	**/
	var show_speakers : Bool;
	/**
		Display an additional ‘summary’ line (Dope Sheet editors only)
		
		Type: boolean, default False
	**/
	var show_summary : Bool;
	/**
		Include visualization of texture related animation data
		
		Type: boolean, default False
	**/
	var show_textures : Bool;
	/**
		Include visualization of object-level animation data (mostly transforms)
		
		Type: boolean, default False
	**/
	var show_transforms : Bool;
	/**
		Include visualization of world related animation data
		
		Type: boolean, default False
	**/
	var show_worlds : Bool;
	/**
		ID-Block representing source data, usually ID_SCE (i.e. Scene)
		
		Type: ID, (readonly)
	**/
	var source(default, never) : bpy.types.id.ID;
	/**
		Alphabetically sorts data-blocks - mainly objects in the scene (disable to increase viewport speed)
		
		Type: boolean, default False
	**/
	var use_datablock_sort : Bool;
	/**
		Perform fuzzy/multi-word matching (WARNING: May be slow)
		
		Type: boolean, default False
	**/
	var use_multi_word_filter : Bool;
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