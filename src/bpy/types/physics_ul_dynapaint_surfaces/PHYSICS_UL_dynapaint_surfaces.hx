package bpy.types.physics_ul_dynapaint_surfaces;
@:pythonImport("bpy.types.PHYSICS_UL_dynapaint_surfaces") extern class PHYSICS_UL_dynapaint_surfaces {
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