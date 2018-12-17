package bpy.types.operatorfilelistelement;
@:native("bpy.types.OperatorFileListElement") extern class OperatorFileListElement {
	/**
		Name of a file or directory within a file list
		
		Type: string, default “”, (never None)
	**/
	var name : String;
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