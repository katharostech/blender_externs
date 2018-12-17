package bpy.types.meshpolygonfloatproperty;
/**
	User defined floating point number value in a float properties layer
**/
@:native("bpy.types.MeshPolygonFloatProperty") extern class MeshPolygonFloatProperty {
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var value : Float;
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