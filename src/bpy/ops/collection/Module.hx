package bpy.ops.collection;
/**
	Collection Operators
**/
@:pythonImport("bpy.ops.collection") extern class Module {
	/**
		Create an object collection from selected objects
		@param name Name, Name of the new collection — string, (optional, never None)
	**/
	static function create(name:String):Void;
	/**
		Add the object to an object collection that contains the active object
		@param collection Collection, The collection to add other selected objects to — enum in [], (optional)
	**/
	static function objects_add_active(collection:bpy.ops.collection.Collection.Enum1):Void;
	/**
		Remove selected objects from a collection
		@param collection Collection, The collection to remove this object from — enum in [], (optional)
	**/
	static function objects_remove(collection:bpy.ops.collection.Collection.Enum2):Void;
	/**
		Remove the object from an object collection that contains the active object
		@param collection Collection, The collection to remove other selected objects from — enum in [], (optional)
	**/
	static function objects_remove_active(collection:bpy.ops.collection.Collection.Enum3):Void;
	/**
		Remove selected objects from all collections not used in a scene
	**/
	static function objects_remove_all():Void;
}