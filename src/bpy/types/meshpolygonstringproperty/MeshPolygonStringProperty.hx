package bpy.types.meshpolygonstringproperty;
/**
	User defined string text value in a string properties layer
**/
@:native("bpy.types.MeshPolygonStringProperty") extern class MeshPolygonStringProperty {
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var value : String;
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