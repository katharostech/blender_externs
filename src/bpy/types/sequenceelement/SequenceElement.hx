package bpy.types.sequenceelement;
/**
	Sequence strip data for a single frame
**/
@:pythonImport("bpy.types.SequenceElement") extern class SequenceElement {
	/**
		Name of the source file
		
		Type: string, default “”, (never None)
	**/
	var filename : String;
	/**
		Original image height
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var orig_height(default, never) : Int;
	/**
		Original image width
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var orig_width(default, never) : Int;
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