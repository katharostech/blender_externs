package bpy.types.selecteduvelement;
@:native("bpy.types.SelectedUvElement") extern class SelectedUvElement {
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