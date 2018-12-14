package bpy.types.textbox;
/**
	Text bounding box for layout
**/
@:pythonImport("bpy.types.TextBox") extern class TextBox {
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var height : Float;
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var width : Float;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var x : Float;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var y : Float;
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