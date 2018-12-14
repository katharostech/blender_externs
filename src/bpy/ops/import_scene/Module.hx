package bpy.ops.import_scene;
/**
	Import Scene Operators
**/
@:pythonImport("bpy.ops.import_scene") extern class Module {
	/**
		Load a FBX file
		@param filepath File Path, Filepath used for importing the file — string, (optional, never None)
		@param directory directory — string, (optional, never None)
		@param filter_glob filter_glob — string, (optional, never None)
		@param ui_tab ui_tab, Import options categoriesMAIN Main, Main basic settings.ARMATURE Armatures, Armature-related settings. — enum in ['MAIN', 'ARMATURE'], (optional)
		@param use_manual_orientation Manual Orientation, Specify orientation and scale, instead of using embedded data in FBX file — boolean, (optional)
		@param global_scale Scale — float in [0.001, 1000], (optional)
		@param bake_space_transform !EXPERIMENTAL! Apply Transform, Bake space transform into object data, avoids getting unwanted rotations to objects when target space is not aligned with Blender’s space (WARNING! experimental option, use at own risks, known broken with armatures/animations) — boolean, (optional)
		@param use_custom_normals Import Normals, Import custom normals, if available (otherwise Blender will recompute them) — boolean, (optional)
		@param use_image_search Image Search, Search subdirs for any associated images (WARNING: may be slow) — boolean, (optional)
		@param use_alpha_decals Alpha Decals, Treat materials with alpha as decals (no shadow casting) — boolean, (optional)
		@param decal_offset Decal Offset, Displace geometry of alpha meshes — float in [0, 1], (optional)
		@param use_anim Import Animation, Import FBX animation — boolean, (optional)
		@param anim_offset Animation Offset, Offset to apply to animation during import, in frames — float in [-inf, inf], (optional)
		@param use_custom_props Import User Properties, Import user properties as custom properties — boolean, (optional)
		@param use_custom_props_enum_as_string Import Enums As Strings, Store enumeration values as strings — boolean, (optional)
		@param ignore_leaf_bones Ignore Leaf Bones, Ignore the last bone at the end of each chain (used to mark the length of the previous bone) — boolean, (optional)
		@param force_connect_children Force Connect Children, Force connection of children bones to their parent, even if their computed head/tail positions do not match (can be useful with pure-joints-type armatures) — boolean, (optional)
		@param automatic_bone_orientation Automatic Bone Orientation, Try to align the major bone axis with the bone children — boolean, (optional)
		@param primary_bone_axis Primary Bone Axis — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param secondary_bone_axis Secondary Bone Axis — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param use_prepost_rot Use Pre/Post Rotation, Use pre/post rotation from FBX transform (you may have to disable that in some cases) — boolean, (optional)
		@param axis_forward Forward — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param axis_up Up — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
	**/
	static function fbx(filepath:String, directory:String, filter_glob:String, ui_tab:bpy.ops.import_scene.Import_scene.Enum1, use_manual_orientation:Bool, global_scale:Float, bake_space_transform:Bool, use_custom_normals:Bool, use_image_search:Bool, use_alpha_decals:Bool, decal_offset:Float, use_anim:Bool, anim_offset:Float, use_custom_props:Bool, use_custom_props_enum_as_string:Bool, ignore_leaf_bones:Bool, force_connect_children:Bool, automatic_bone_orientation:Bool, primary_bone_axis:bpy.ops.import_scene.Import_scene.Enum2, secondary_bone_axis:bpy.ops.import_scene.Import_scene.Enum3, use_prepost_rot:Bool, axis_forward:bpy.ops.import_scene.Import_scene.Enum4, axis_up:bpy.ops.import_scene.Import_scene.Enum5):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param filepath File Path, Filepath used for importing the file — string, (optional, never None)
		@param axis_forward Forward — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param axis_up Up — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param filter_glob filter_glob — string, (optional, never None)
		@param loglevel Log Level — enum in ['50', '40', '30', '20', '0'], (optional)
		@param import_pack_images Pack images — boolean, (optional)
		@param import_shading Shading — enum in ['NORMALS', 'FLAT', 'SMOOTH'], (optional)
	**/
	static function gltf(filepath:String, axis_forward:bpy.ops.import_scene.Import_scene.Enum6, axis_up:bpy.ops.import_scene.Import_scene.Enum7, filter_glob:String, loglevel:bpy.ops.import_scene.Import_scene.Enum8, import_pack_images:Bool, import_shading:bpy.ops.import_scene.Import_scene.Enum9):Void;
	/**
		Load a Wavefront OBJ File
		@param filepath File Path, Filepath used for importing the file — string, (optional, never None)
		@param filter_glob filter_glob — string, (optional, never None)
		@param use_edges Lines, Import lines and faces with 2 verts as edge — boolean, (optional)
		@param use_smooth_groups Smooth Groups, Surround smooth groups by sharp edges — boolean, (optional)
		@param use_split_objects Object, Import OBJ Objects into Blender Objects — boolean, (optional)
		@param use_split_groups Group, Import OBJ Groups into Blender Objects — boolean, (optional)
		@param use_groups_as_vgroups Poly Groups, Import OBJ groups as vertex groups — boolean, (optional)
		@param use_image_search Image Search, Search subdirs for any associated images (Warning, may be slow) — boolean, (optional)
		@param split_mode SplitON Split, Split geometry, omits unused verts.OFF Keep Vert Order, Keep vertex order from file. — enum in ['ON', 'OFF'], (optional)
		@param global_clight_size Clamp Size, Clamp bounds under this value (zero to disable) — float in [0, 1000], (optional)
		@param axis_forward Forward — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param axis_up Up — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
	**/
	static function obj(filepath:String, filter_glob:String, use_edges:Bool, use_smooth_groups:Bool, use_split_objects:Bool, use_split_groups:Bool, use_groups_as_vgroups:Bool, use_image_search:Bool, split_mode:bpy.ops.import_scene.Import_scene.Enum10, global_clight_size:Float, axis_forward:bpy.ops.import_scene.Import_scene.Enum11, axis_up:bpy.ops.import_scene.Import_scene.Enum12):Void;
}