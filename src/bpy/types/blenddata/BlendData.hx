package bpy.types.blenddata;
/**
	Main data structure representing a .blend file and all its data-blocks
**/
@:native("bpy.types.BlendData") extern class BlendData {
	/**
		Action data-blocks
		
		Type: BlendDataActions bpy_prop_collection of Action, (readonly)
	**/
	var actions(default, never) : bpy.types.blenddataactions.BlendDataActions;
	/**
		Armature data-blocks
		
		Type: BlendDataArmatures bpy_prop_collection of Armature, (readonly)
	**/
	var armatures(default, never) : bpy.types.blenddataarmatures.BlendDataArmatures;
	/**
		Brush data-blocks
		
		Type: BlendDataBrushes bpy_prop_collection of Brush, (readonly)
	**/
	var brushes(default, never) : bpy.types.blenddatabrushes.BlendDataBrushes;
	/**
		Cache Files data-blocks
		
		Type: BlendDataCacheFiles bpy_prop_collection of CacheFile, (readonly)
	**/
	var cache_files(default, never) : bpy.types.blenddatacachefiles.BlendDataCacheFiles;
	/**
		Camera data-blocks
		
		Type: BlendDataCameras bpy_prop_collection of Camera, (readonly)
	**/
	var cameras(default, never) : bpy.types.blenddatacameras.BlendDataCameras;
	/**
		Collection data-blocks
		
		Type: BlendDataCollections bpy_prop_collection of Collection, (readonly)
	**/
	var collections(default, never) : bpy.types.blenddatacollections.BlendDataCollections;
	/**
		Curve data-blocks
		
		Type: BlendDataCurves bpy_prop_collection of Curve, (readonly)
	**/
	var curves(default, never) : bpy.types.blenddatacurves.BlendDataCurves;
	/**
		Path to the .blend file
		
		Type: string, default “”, (readonly, never None)
	**/
	var filepath(default, never) : String;
	/**
		Vector font data-blocks
		
		Type: BlendDataFonts bpy_prop_collection of VectorFont, (readonly)
	**/
	var fonts(default, never) : bpy.types.blenddatafonts.BlendDataFonts;
	/**
		Grease Pencil data-blocks
		
		Type: BlendDataGreasePencils bpy_prop_collection of GreasePencil, (readonly)
	**/
	var grease_pencil(default, never) : bpy.types.blenddatagreasepencils.BlendDataGreasePencils;
	/**
		Image data-blocks
		
		Type: BlendDataImages bpy_prop_collection of Image, (readonly)
	**/
	var images(default, never) : bpy.types.blenddataimages.BlendDataImages;
	/**
		Have recent edits been saved to disk
		
		Type: boolean, default False, (readonly)
	**/
	var is_dirty(default, never) : Bool;
	/**
		Has the current session been saved to disk as a .blend file
		
		Type: boolean, default False, (readonly)
	**/
	var is_saved(default, never) : Bool;
	/**
		Lattice data-blocks
		
		Type: BlendDataLattices bpy_prop_collection of Lattice, (readonly)
	**/
	var lattices(default, never) : bpy.types.blenddatalattices.BlendDataLattices;
	/**
		Library data-blocks
		
		Type: BlendDataLibraries bpy_prop_collection of Library, (readonly)
	**/
	var libraries(default, never) : bpy.types.blenddatalibraries.BlendDataLibraries;
	/**
		LightProbe data-blocks
		
		Type: BlendDataProbes bpy_prop_collection of LightProbe, (readonly)
	**/
	var lightprobes(default, never) : bpy.types.blenddataprobes.BlendDataProbes;
	/**
		Light data-blocks
		
		Type: BlendDataLights bpy_prop_collection of Light, (readonly)
	**/
	var lights(default, never) : bpy.types.blenddatalights.BlendDataLights;
	/**
		Line Style data-blocks
		
		Type: BlendDataLineStyles bpy_prop_collection of FreestyleLineStyle, (readonly)
	**/
	var linestyles(default, never) : bpy.types.blenddatalinestyles.BlendDataLineStyles;
	/**
		Masks data-blocks
		
		Type: BlendDataMasks bpy_prop_collection of Mask, (readonly)
	**/
	var masks(default, never) : bpy.types.blenddatamasks.BlendDataMasks;
	/**
		Material data-blocks
		
		Type: BlendDataMaterials bpy_prop_collection of Material, (readonly)
	**/
	var materials(default, never) : bpy.types.blenddatamaterials.BlendDataMaterials;
	/**
		Mesh data-blocks
		
		Type: BlendDataMeshes bpy_prop_collection of Mesh, (readonly)
	**/
	var meshes(default, never) : bpy.types.blenddatameshes.BlendDataMeshes;
	/**
		Metaball data-blocks
		
		Type: BlendDataMetaBalls bpy_prop_collection of MetaBall, (readonly)
	**/
	var metaballs(default, never) : bpy.types.blenddatametaballs.BlendDataMetaBalls;
	/**
		Movie Clip data-blocks
		
		Type: BlendDataMovieClips bpy_prop_collection of MovieClip, (readonly)
	**/
	var movieclips(default, never) : bpy.types.blenddatamovieclips.BlendDataMovieClips;
	/**
		Node group data-blocks
		
		Type: BlendDataNodeTrees bpy_prop_collection of NodeTree, (readonly)
	**/
	var node_groups(default, never) : bpy.types.blenddatanodetrees.BlendDataNodeTrees;
	/**
		Object data-blocks
		
		Type: BlendDataObjects bpy_prop_collection of Object, (readonly)
	**/
	var objects(default, never) : bpy.types.blenddataobjects.BlendDataObjects;
	/**
		Paint Curves data-blocks
		
		Type: BlendDataPaintCurves bpy_prop_collection of PaintCurve, (readonly)
	**/
	var paint_curves(default, never) : bpy.types.blenddatapaintcurves.BlendDataPaintCurves;
	/**
		Palette data-blocks
		
		Type: BlendDataPalettes bpy_prop_collection of Palette, (readonly)
	**/
	var palettes(default, never) : bpy.types.blenddatapalettes.BlendDataPalettes;
	/**
		Particle data-blocks
		
		Type: BlendDataParticles bpy_prop_collection of ParticleSettings, (readonly)
	**/
	var particles(default, never) : bpy.types.blenddataparticles.BlendDataParticles;
	/**
		Scene data-blocks
		
		Type: BlendDataScenes bpy_prop_collection of Scene, (readonly)
	**/
	var scenes(default, never) : bpy.types.blenddatascenes.BlendDataScenes;
	/**
		Screen data-blocks
		
		Type: BlendDataScreens bpy_prop_collection of Screen, (readonly)
	**/
	var screens(default, never) : bpy.types.blenddatascreens.BlendDataScreens;
	/**
		Shape Key data-blocks
		
		Type: bpy_prop_collection of Key, (readonly)
	**/
	var shape_keys(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Sound data-blocks
		
		Type: BlendDataSounds bpy_prop_collection of Sound, (readonly)
	**/
	var sounds(default, never) : bpy.types.blenddatasounds.BlendDataSounds;
	/**
		Speaker data-blocks
		
		Type: BlendDataSpeakers bpy_prop_collection of Speaker, (readonly)
	**/
	var speakers(default, never) : bpy.types.blenddataspeakers.BlendDataSpeakers;
	/**
		Text data-blocks
		
		Type: BlendDataTexts bpy_prop_collection of Text, (readonly)
	**/
	var texts(default, never) : bpy.types.blenddatatexts.BlendDataTexts;
	/**
		Texture data-blocks
		
		Type: BlendDataTextures bpy_prop_collection of Texture, (readonly)
	**/
	var textures(default, never) : bpy.types.blenddatatextures.BlendDataTextures;
	/**
		Automatically pack all external data into .blend file
		
		Type: boolean, default False
	**/
	var use_autopack : Bool;
	/**
		Version of Blender the .blend was saved with
		
		Type: int array of 3 items in [0, inf], default (0, 0, 0), (readonly)
	**/
	var version(default, never) : Array<Int>;
	/**
		Window manager data-blocks
		
		Type: BlendDataWindowManagers bpy_prop_collection of WindowManager, (readonly)
	**/
	var window_managers(default, never) : bpy.types.blenddatawindowmanagers.BlendDataWindowManagers;
	/**
		Workspace data-blocks
		
		Type: BlendDataWorkSpaces bpy_prop_collection of WorkSpace, (readonly)
	**/
	var workspaces(default, never) : bpy.types.blenddataworkspaces.BlendDataWorkSpaces;
	/**
		World data-blocks
		
		Type: BlendDataWorlds bpy_prop_collection of World, (readonly)
	**/
	var worlds(default, never) : bpy.types.blenddataworlds.BlendDataWorlds;
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
		Returns a mapping of all ID datablocks in current bpy.data to a set of all datablocks using them.
		
		For list of valid set members for key_types &amp; value_types, see: bpy.types.KeyingSetPath.id_type.
		@param subset When passed, only these data-blocks and their users will be included as keys/values in the map. — sequence
		@param key_types Filter the keys mapped by ID types. — set of strings
		@param value_types Filter the values in the set by ID types. — set of strings
		
		@returns dict
	**/
	function user_map(subset:Dynamic, key_types:Dynamic, value_types:Dynamic):Dynamic;
}