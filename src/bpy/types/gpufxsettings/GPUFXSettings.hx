package bpy.types.gpufxsettings;
/**
	Settings for GPU based compositing
**/
@:pythonImport("bpy.types.GPUFXSettings") extern class GPUFXSettings {
	/**
		
		
		Type: GPUDOFSettings, (readonly, never None)
	**/
	var dof(default, never) : bpy.types.gpudofsettings.GPUDOFSettings;
	/**
		
		
		Type: GPUSSAOSettings, (readonly, never None)
	**/
	var ssao(default, never) : bpy.types.gpussaosettings.GPUSSAOSettings;
	/**
		Use depth of field on viewport using the values from active camera
		
		Type: boolean, default False
	**/
	var use_dof : Bool;
	/**
		Use screen space ambient occlusion of field on viewport
		
		Type: boolean, default False
	**/
	var use_ssao : Bool;
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