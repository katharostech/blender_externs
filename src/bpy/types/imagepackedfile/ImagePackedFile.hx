package bpy.types.imagepackedfile;
@:native("bpy.types.ImagePackedFile") extern class ImagePackedFile {
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var filepath : String;
	/**
		
		
		Type: PackedFile, (readonly)
	**/
	var packed_file(default, never) : bpy.types.packedfile.PackedFile;
	/**
		Save the packed file to its filepath
	**/
	function save():Void;
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