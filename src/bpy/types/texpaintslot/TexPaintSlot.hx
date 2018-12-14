package bpy.types.texpaintslot;
/**
	Slot that contains information about texture painting
**/
@:pythonImport("bpy.types.TexPaintSlot") extern class TexPaintSlot {
	/**
		Slot has a valid image and UV map
		
		Type: boolean, default False, (readonly)
	**/
	var is_valid(default, never) : Bool;
	/**
		Name of UV map
		
		Type: string, default “”, (never None)
	**/
	var uv_layer : String;
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