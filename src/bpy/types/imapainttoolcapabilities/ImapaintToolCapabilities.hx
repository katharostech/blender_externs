package bpy.types.imapainttoolcapabilities;
/**
	Read-only indications of which brush operations are supported by the current image paint brush
**/
@:pythonImport("bpy.types.ImapaintToolCapabilities") extern class ImapaintToolCapabilities {
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_accumulate(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_radius(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_space_attenuation(default, never) : Bool;
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