package bpy.types.colorrampelement;
/**
	Element defining a color at a position in the color ramp
**/
@:native("bpy.types.ColorRampElement") extern class ColorRampElement {
	/**
		Set alpha of selected color stop
		
		Type: float in [0, inf], default 0.0
	**/
	var alpha : Float;
	/**
		Set color of selected color stop
		
		Type: float array of 4 items in [0, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		Set position of selected color stop
		
		Type: float in [0, 1], default 0.0
	**/
	var position : Float;
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