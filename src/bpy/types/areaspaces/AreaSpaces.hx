package bpy.types.areaspaces;
/**
	Collection of spaces
**/
@:native("bpy.types.AreaSpaces") extern class AreaSpaces {
	/**
		Space currently being displayed in this area
		
		Type: Space, (readonly)
	**/
	var active(default, never) : bpy.types.space.Space;
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