package bpy.types.collectionobjects;
/**
	Collection of collection objects
**/
@:pythonImport("bpy.types.CollectionObjects") extern class CollectionObjects {
	/**
		Add this object to a collection
		@param object Object to add — Object, (never None)
	**/
	function link(object:Dynamic):Void;
	/**
		Remove this object from a collection
		@param object Object to remove — Object
	**/
	function unlink(object:Dynamic):Void;
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