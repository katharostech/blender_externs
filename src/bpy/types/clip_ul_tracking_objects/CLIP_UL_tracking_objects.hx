package bpy.types.clip_ul_tracking_objects;
@:pythonImport("bpy.types.CLIP_UL_tracking_objects") extern class CLIP_UL_tracking_objects {
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