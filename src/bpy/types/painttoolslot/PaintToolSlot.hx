package bpy.types.painttoolslot;
@:native("bpy.types.PaintToolSlot") extern class PaintToolSlot {
	/**
		
		
		Type: Brush
	**/
	var brush : bpy.types.brush.Brush;
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