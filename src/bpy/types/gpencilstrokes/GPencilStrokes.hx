package bpy.types.gpencilstrokes;
/**
	Collection of grease pencil stroke
**/
@:native("bpy.types.GPencilStrokes") extern class GPencilStrokes {
	/**
		Add a new grease pencil stroke
		
		@returns GPencilStroke
	**/
	function pyNew():bpy.types.gpencilstroke.GPencilStroke;
	/**
		Remove a grease pencil stroke
		@param stroke Stroke, The stroke to remove — GPencilStroke, (never None)
	**/
	function remove(stroke:bpy.types.gpencilstroke.GPencilStroke):Void;
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
}