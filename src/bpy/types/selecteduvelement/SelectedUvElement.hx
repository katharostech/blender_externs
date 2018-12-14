package bpy.types.selecteduvelement;
@:pythonImport("bpy.types.SelectedUvElement") extern class SelectedUvElement {
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var element_index : Int;
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var face_index : Int;
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