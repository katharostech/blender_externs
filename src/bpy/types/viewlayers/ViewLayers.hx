package bpy.types.viewlayers;
/**
	Collection of render layers
**/
@:pythonImport("bpy.types.ViewLayers") extern class ViewLayers {
	/**
		Add a view layer to scene
		@param name New name for the view layer (not unique) — string, (never None)
		
		@returns ViewLayer
	**/
	function new(name:String):bpy.types.viewlayer.ViewLayer;
	/**
		Remove a view layer
		@param layer View layer to remove — ViewLayer, (never None)
	**/
	function remove(layer:bpy.types.viewlayer.ViewLayer):Void;
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