package bpy.types.unknowntype;
/**
	Stub RNA type used for pointers to unknown or internal data
**/
@:native("bpy.types.UnknownType") extern class UnknownType {
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