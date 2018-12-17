package bpy.types.packedfile;
/**
	External file packed into the .blend file
**/
@:native("bpy.types.PackedFile") extern class PackedFile {
	/**
		Raw data (bytes, exact content of the embedded file)
		
		Type: string, default “”, (readonly, never None)
	**/
	var data(default, never) : String;
	/**
		Size of packed file in bytes
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var size(default, never) : Int;
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