package bpy.types.sculpttoolcapabilities;
/**
	Read-only indications of which brush operations are supported by the current sculpt tool
**/
@:pythonImport("bpy.types.SculptToolCapabilities") extern class SculptToolCapabilities {
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_accumulate(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_auto_smooth(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_gravity(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_height(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_jitter(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_normal_weight(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_persistence(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_pinch_factor(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_plane_offset(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_rake_factor(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_random_texture_angle(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_sculpt_plane(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_secondary_color(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_smooth_stroke(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_space_attenuation(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var has_strength_pressure(default, never) : Bool;
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