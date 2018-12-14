package bpy.types.studiolight;
@:enum abstract Enum1(String) from String to String {
	var STUDIO : String = "STUDIO";
	var WORLD : String = "WORLD";
	var MATCAP : String = "MATCAP";
}/**
	Studio light
**/
@:pythonImport("bpy.types.StudioLight") extern class StudioLight {
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var index(default, never) : Int;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_user_defined(default, never) : Bool;
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var path(default, never) : String;
	/**
		Path where the irradiance cache is stored
		
		Type: string, default “”, (readonly, never None)
	**/
	var path_irr_cache(default, never) : String;
	/**
		Path where the spherical harmonics cache is stored
		
		Type: string, default “”, (readonly, never None)
	**/
	var path_sh_cache(default, never) : String;
	/**
		
		
		Type: float multi-dimensional array of 4 * 3 items in [0, inf], default ((0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0)), (readonly)
	**/
	var spherical_harmonics_coefficients(default, never) : Array<Float>;
	/**
		
		
		Type: enum in [‘STUDIO’, ‘WORLD’, ‘MATCAP’], default ‘STUDIO’, (readonly)
	**/
	var type(default, never) : bpy.types.studiolight.StudioLight.Enum1;
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