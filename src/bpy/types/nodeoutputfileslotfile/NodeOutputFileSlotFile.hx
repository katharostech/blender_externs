package bpy.types.nodeoutputfileslotfile;
/**
	Single layer file slot of the file output node
**/
@:native("bpy.types.NodeOutputFileSlotFile") extern class NodeOutputFileSlotFile {
	/**
		
		
		Type: ImageFormatSettings, (readonly)
	**/
	var format(default, never) : bpy.types.imageformatsettings.ImageFormatSettings;
	/**
		Subpath used for this slot
		
		Type: string, default “”, (never None)
	**/
	var path : String;
	/**
		
		
		Type: boolean, default False
	**/
	var use_node_format : Bool;
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