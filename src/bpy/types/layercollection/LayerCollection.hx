package bpy.types.layercollection;
/**
	Layer collection
**/
@:native("bpy.types.LayerCollection") extern class LayerCollection {
	/**
		Child layer collections
		
		Type: bpy_prop_collection of LayerCollection, (readonly)
	**/
	var children(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Collection this layer collection is wrapping
		
		Type: Collection, (readonly, never None)
	**/
	var collection(default, never) : bpy.types.collection.Collection;
	/**
		Exclude collection from view layer
		
		Type: boolean, default False
	**/
	var exclude : Bool;
	/**
		Mask out objects in collection from view layer
		
		Type: boolean, default False
	**/
	var holdout : Bool;
	/**
		Objects in collection only contribute indirectly (through shadows and reflections) in the view layer
		
		Type: boolean, default False
	**/
	var indirect_only : Bool;
	/**
		Name of this view layer (same as its collection one)
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		
		
		@returns boolean
	**/
	function has_objects():Bool;
	/**
		
		@param view_layer ViewLayer the layer collection belongs to — ViewLayer
		
		@returns boolean
	**/
	function has_visible_objects(view_layer:bpy.types.viewlayer.ViewLayer):Bool;
	/**
		
		@param view_layer ViewLayer the layer collection belongs to — ViewLayer
		
		@returns boolean
	**/
	function has_hidden_objects(view_layer:bpy.types.viewlayer.ViewLayer):Bool;
	/**
		
		@param view_layer ViewLayer the layer collection belongs to — ViewLayer
		
		@returns boolean
	**/
	function has_selected_objects(view_layer:bpy.types.viewlayer.ViewLayer):Bool;
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