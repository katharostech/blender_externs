package bpy.types.viewlayers;
/**
	Collection of render layers
**/
@:native("bpy.types.ViewLayers") extern class ViewLayers {
	/**
		Add a view layer to scene
		@param name New name for the view layer (not unique) — string, (never None)
		
		@returns ViewLayer
	**/
	function pyNew(name:String):bpy.types.viewlayer.ViewLayer;
	/**
		Remove a view layer
		@param layer View layer to remove — ViewLayer, (never None)
	**/
	function remove(layer:bpy.types.viewlayer.ViewLayer):Void;
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