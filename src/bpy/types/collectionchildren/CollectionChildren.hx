package bpy.types.collectionchildren;
/**
	Collection of child collections
**/
@:pythonImport("bpy.types.CollectionChildren") extern class CollectionChildren {
	/**
		Add this collection as child of this collection
		@param child Collection to add — Collection, (never None)
	**/
	function link(child:Dynamic):Void;
	/**
		Remove this child collection from a collection
		@param child Collection to remove — Collection
	**/
	function unlink(child:Dynamic):Void;
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