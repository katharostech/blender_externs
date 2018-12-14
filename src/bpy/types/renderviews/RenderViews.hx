package bpy.types.renderviews;
/**
	Collection of render views
**/
@:pythonImport("bpy.types.RenderViews") extern class RenderViews {
	/**
		Active Render View
		
		Type: SceneRenderView, (never None)
	**/
	var active : bpy.types.scenerenderview.SceneRenderView;
	/**
		Active index in render view array
		
		Type: int in [0, 32767], default 0
	**/
	var active_index : Int;
	/**
		Add a render view to scene
		@param name New name for the marker (not unique) — string, (never None)
		
		@returns SceneRenderView
	**/
	function new(name:String):bpy.types.scenerenderview.SceneRenderView;
	/**
		Remove a render view
		@param view Render view to remove — SceneRenderView, (never None)
	**/
	function remove(view:bpy.types.scenerenderview.SceneRenderView):Void;
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