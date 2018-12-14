package bpy.types.gpencil_ul_layer;
@:pythonImport("bpy.types.GPENCIL_UL_layer") extern class GPENCIL_UL_layer {
	function draw_item():Void;
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