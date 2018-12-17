package bpy.types.uvprojector;
/**
	UV projector used by the UV project modifier
**/
@:native("bpy.types.UVProjector") extern class UVProjector {
	/**
		Object to use as projector transform
		
		Type: Object
	**/
	var object : bpy.types.object.Object;
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