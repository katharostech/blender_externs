package bpy.types.sequencecrop;
/**
	Cropping parameters for a sequence strip
**/
@:pythonImport("bpy.types.SequenceCrop") extern class SequenceCrop {
	/**
		Number of pixels to crop from the right side
		
		Type: int in [0, inf], default 0
	**/
	var max_x : Int;
	/**
		Number of pixels to crop from the top
		
		Type: int in [0, inf], default 0
	**/
	var max_y : Int;
	/**
		Number of pixels to crop from the left side
		
		Type: int in [0, inf], default 0
	**/
	var min_x : Int;
	/**
		Number of pixels to crop from the bottom
		
		Type: int in [0, inf], default 0
	**/
	var min_y : Int;
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