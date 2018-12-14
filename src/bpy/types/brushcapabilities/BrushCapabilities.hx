package bpy.types.brushcapabilities;
/**
	Read-only indications of which brush operations are supported by the current brush
**/
@:pythonImport("bpy.types.BrushCapabilities") extern class BrushCapabilities {
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_overlay(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_random_texture_angle(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_smooth_stroke(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_spacing(default, never) : Bool;
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