package bpy.types.colorrampelements;
/**
	Collection of Color Ramp Elements
**/
@:native("bpy.types.ColorRampElements") extern class ColorRampElements {
	/**
		Add element to ColorRamp
		@param position Position, Position to add element — float in [0, 1]
		
		@returns ColorRampElement
	**/
	function pyNew(position:Float):bpy.types.colorrampelement.ColorRampElement;
	/**
		Delete element from ColorRamp
		@param element Element to remove — ColorRampElement, (never None)
	**/
	function remove(element:bpy.types.colorrampelement.ColorRampElement):Void;
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