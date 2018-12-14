package bpy.types.uipiemenu;
@:pythonImport("bpy.types.UIPieMenu") extern class UIPieMenu {
	/**
		
		
		Type: UILayout, (readonly)
	**/
	var layout(default, never) : bpy.types.uilayout.UILayout;
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