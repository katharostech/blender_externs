package bpy.types.meshpaintmasklayer;
/**
	Per-vertex paint mask data
**/
@:native("bpy.types.MeshPaintMaskLayer") extern class MeshPaintMaskLayer {
	/**
		
		
		Type: bpy_prop_collection of MeshPaintMaskProperty, (readonly)
	**/
	var data(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
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