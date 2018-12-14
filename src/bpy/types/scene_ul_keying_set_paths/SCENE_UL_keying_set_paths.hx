package bpy.types.scene_ul_keying_set_paths;
@:pythonImport("bpy.types.SCENE_UL_keying_set_paths") extern class SCENE_UL_keying_set_paths {
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