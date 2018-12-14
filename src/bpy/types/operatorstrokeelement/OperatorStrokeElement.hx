package bpy.types.operatorstrokeelement;
@:pythonImport("bpy.types.OperatorStrokeElement") extern class OperatorStrokeElement {
	/**
		
		
		Type: boolean, default False
	**/
	var is_start : Bool;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var location : Array<Float>;
	/**
		
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var mouse : Array<Float>;
	/**
		
		
		Type: boolean, default False
	**/
	var pen_flip : Bool;
	/**
		Tablet pressure
		
		Type: float in [0, 1], default 0.0
	**/
	var pressure : Float;
	/**
		Brush Size in screen space
		
		Type: float in [0, inf], default 0.0
	**/
	var size : Float;
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var time : Float;
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