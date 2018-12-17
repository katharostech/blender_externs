package bpy.types.animviz;
/**
	Settings for the visualization of motion
**/
@:native("bpy.types.AnimViz") extern class AnimViz {
	/**
		Motion Path settings for visualization
		
		Type: AnimVizMotionPaths, (readonly, never None)
	**/
	var motion_path(default, never) : bpy.types.animvizmotionpaths.AnimVizMotionPaths;
	/**
		Onion Skinning (ghosting) settings for visualization
		
		Type: AnimVizOnionSkinning, (readonly, never None)
	**/
	var onion_skin_frames(default, never) : bpy.types.animvizonionskinning.AnimVizOnionSkinning;
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