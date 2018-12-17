package bpy.types.operatormousepath;
/**
	Mouse path values for operators that record such paths
**/
@:native("bpy.types.OperatorMousePath") extern class OperatorMousePath {
	/**
		Mouse location
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var loc : Array<Float>;
	/**
		Time of mouse location
		
		Type: float in [-inf, inf], default 0.0
	**/
	var time : Float;
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
	/**
		Unique name used in the code and scripting
		
		Type: string, default “”, (never None)
	**/
	var name : String;
}