package bpy.types.sequencetransform;
/**
	Transform parameters for a sequence strip
**/
@:pythonImport("bpy.types.SequenceTransform") extern class SequenceTransform {
	/**
		Amount to move the input on the X axis within its boundaries
		
		Type: int in [-inf, inf], default 0
	**/
	var offset_x : Int;
	/**
		Amount to move the input on the Y axis within its boundaries
		
		Type: int in [-inf, inf], default 0
	**/
	var offset_y : Int;
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