package bpy.types.themeproperties;
/**
	Theme settings for the Properties
**/
@:native("bpy.types.ThemeProperties") extern class ThemeProperties {
	/**
		Settings for space
		
		Type: ThemeSpaceGeneric, (readonly, never None)
	**/
	var space(default, never) : bpy.types.themespacegeneric.ThemeSpaceGeneric;
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