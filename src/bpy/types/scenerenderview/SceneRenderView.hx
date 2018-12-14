package bpy.types.scenerenderview;
/**
	Render viewpoint for 3D stereo and multiview rendering
**/
@:pythonImport("bpy.types.SceneRenderView") extern class SceneRenderView {
	/**
		Suffix to identify the cameras to use, and added to the render images for this view
		
		Type: string, default “”, (never None)
	**/
	var camera_suffix : String;
	/**
		Suffix added to the render images for this view
		
		Type: string, default “”, (never None)
	**/
	var file_suffix : String;
	/**
		Render view name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Disable or enable the render view
		
		Type: boolean, default False
	**/
	var use : Bool;
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