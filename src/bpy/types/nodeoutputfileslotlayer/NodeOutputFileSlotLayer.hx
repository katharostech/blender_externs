package bpy.types.nodeoutputfileslotlayer;
/**
	Multilayer slot of the file output node
**/
@:pythonImport("bpy.types.NodeOutputFileSlotLayer") extern class NodeOutputFileSlotLayer {
	/**
		OpenEXR layer name used for this slot
		
		Type: string, default “”, (never None)
	**/
	var name : String;
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