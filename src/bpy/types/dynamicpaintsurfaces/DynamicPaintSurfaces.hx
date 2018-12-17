package bpy.types.dynamicpaintsurfaces;
/**
	Collection of Dynamic Paint Canvas surfaces
**/
@:native("bpy.types.DynamicPaintSurfaces") extern class DynamicPaintSurfaces {
	/**
		Active Dynamic Paint surface being displayed
		
		Type: DynamicPaintSurface, (readonly)
	**/
	var active(default, never) : bpy.types.dynamicpaintsurface.DynamicPaintSurface;
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var active_index : Int;
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