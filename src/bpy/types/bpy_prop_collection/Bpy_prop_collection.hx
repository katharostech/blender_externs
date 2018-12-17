package bpy.types.bpy_prop_collection;
/**
	built-in class used for all collections.
**/
@:native("bpy.types.bpy_prop_collection") extern class Bpy_prop_collection {
	/**
		Returns the index of a key in a collection or -1 when not found
		(matches pythons string find function of the same name).
		@param key The identifier for the collection member. — string
		
		@returns int
	**/
	function find(key:String):Int;
	/**
		This is a function to give fast access to attributes within a collection.
		
		Only works for ‘basic type’ properties (bool, int and float)!
		Multi-dimensional arrays (like array of vectors) will be flattened into seq.
	**/
	function foreach_get(attr:Dynamic, seq:Dynamic):Void;
	/**
		This is a function to give fast access to attributes within a collection.
		
		Only works for ‘basic type’ properties (bool, int and float)!
		seq must be uni-dimensional, multi-dimensional arrays (like array of vectors) will be re-created from it.
	**/
	function foreach_set(attr:Dynamic, seq:Dynamic):Void;
	/**
		Returns the value of the item assigned to key or default when not found
		(matches pythons dictionary function of the same name).
		@param key The identifier for the collection member. — string
		@param pyDefault Optional argument for the value to return if
		                                                key is not found. — Undefined
	**/
	function get(key:String, pyDefault:Dynamic):Void;
	/**
		Return the identifiers of collection members
		(matching pythons dict.items() functionality).
		
		@returns list of tuples
	**/
	function items():Array<Dynamic>;
	/**
		Return the identifiers of collection members
		(matching pythons dict.keys() functionality).
		
		@returns list of strings
	**/
	function keys():Array<Dynamic>;
	/**
		Return the values of collection
		(matching pythons dict.values() functionality).
		
		@returns list
	**/
	function values():Array<Dynamic>;
}