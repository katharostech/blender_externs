package idprop.types;
@:native("idprop.types.IDPropertyArray") extern class IDPropertyArray {
	/**
		Return the array as a list.
	**/
	function to_list():Void;
	/**
		The type of the data in the array {‘f’: float, ‘d’: double, ‘i’: int}.
	**/
	var typecode : Dynamic;
}@:native("idprop.types.IDPropertyGroup") extern class IDPropertyGroup {
	/**
		Clear all members from this group.
	**/
	function clear():Void;
	/**
		Return the value for key, if it exists, else default.
	**/
	function get(key:Dynamic, pyDefault:Dynamic):Void;
	/**
		Return the items associated with this group.
	**/
	function items():Void;
	/**
		Iterate through the items in the dict; behaves like dictionary method iteritems.
	**/
	function iteritems():Void;
	/**
		Return the keys associated with this group as a list of strings.
	**/
	function keys():Void;
	/**
		Remove an item from the group, returning a Python representation.
		@param key Name of item to remove. — string
		@param pyDefault Value to return when key isn’t found, otherwise raise an exception. — Undefined
	**/
	function pop(key:String, pyDefault:Dynamic):Void;
	/**
		Return a purely python version of the group.
	**/
	function to_dict():Void;
	/**
		Update key, values.
		@param other Updates the values in the group with this. — IDPropertyGroup or dict
	**/
	function update(other:Dynamic):Void;
	/**
		Return the values associated with this group.
	**/
	function values():Void;
	/**
		The name of this Group.
	**/
	var name : Dynamic;
}@:native("idprop.types.IDPropertyGroupIter") extern class IDPropertyGroupIter {

}