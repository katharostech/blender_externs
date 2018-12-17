package bpy.types.operatormacro;
/**
	Storage of a sub operator in a macro after it has been added
**/
@:native("bpy.types.OperatorMacro") extern class OperatorMacro {
	/**
		
		
		Type: OperatorProperties, (readonly, never None)
	**/
	var properties(default, never) : bpy.types.operatorproperties.OperatorProperties;
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