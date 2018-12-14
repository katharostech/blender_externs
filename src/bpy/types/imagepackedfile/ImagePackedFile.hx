package bpy.types.imagepackedfile;
@:pythonImport("bpy.types.ImagePackedFile") extern class ImagePackedFile {
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
	static function bl_rna_get_subclass(id:Dynamic):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:Dynamic):Dynamic;
}