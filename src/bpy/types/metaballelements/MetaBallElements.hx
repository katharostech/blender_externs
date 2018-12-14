package bpy.types.metaballelements;
@:enum abstract Enum1(String) from String to String {
	var BALL : String = "BALL";
	var CAPSULE : String = "CAPSULE";
	var PLANE : String = "PLANE";
	var ELLIPSOID : String = "ELLIPSOID";
	var CUBE : String = "CUBE";
}/**
	Collection of metaball elements
**/
@:pythonImport("bpy.types.MetaBallElements") extern class MetaBallElements {
	/**
		Last selected element
		
		Type: MetaElement, (readonly)
	**/
	var active(default, never) : bpy.types.metaelement.MetaElement;
	/**
		Add a new element to the metaball
		@param type type for the new meta-element — enum in ['BALL', 'CAPSULE', 'PLANE', 'ELLIPSOID', 'CUBE'], (optional)
		
		@returns MetaElement
	**/
	function new(type:bpy.types.metaballelements.MetaBallElements.Enum1):bpy.types.metaelement.MetaElement;
	/**
		Remove an element from the metaball
		@param element The element to remove — MetaElement, (never None)
	**/
	function remove(element:bpy.types.metaelement.MetaElement):Void;
	/**
		Remove all elements from the metaball
	**/
	function clear():Void;
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