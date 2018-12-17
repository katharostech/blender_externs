package bpy.types.dynamicpaintcanvassettings;
/**
	Dynamic Paint canvas settings
**/
@:native("bpy.types.DynamicPaintCanvasSettings") extern class DynamicPaintCanvasSettings {
	/**
		Paint surface list
		
		Type: DynamicPaintSurfaces bpy_prop_collection of DynamicPaintSurface, (readonly)
	**/
	var canvas_surfaces(default, never) : bpy.types.dynamicpaintsurfaces.DynamicPaintSurfaces;
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