package bpy.types.cyclesmaterialsettings;
@:enum abstract Enum1(String) from String to String {
	var BUMP : String = "BUMP";
	var DISPLACEMENT : String = "DISPLACEMENT";
	var BOTH : String = "BOTH";
}@:enum abstract Enum2(String) from String to String {
	var LINEAR : String = "LINEAR";
	var CUBIC : String = "CUBIC";
}@:enum abstract Enum3(String) from String to String {
	var DISTANCE : String = "DISTANCE";
	var EQUIANGULAR : String = "EQUIANGULAR";
	var MULTIPLE_IMPORTANCE : String = "MULTIPLE_IMPORTANCE";
}@:native("bpy.types.CyclesMaterialSettings") extern class CyclesMaterialSettings {
	/**
		Method to use for the displacement
		
		Type: enum in [‘BUMP’, ‘DISPLACEMENT’, ‘BOTH’], default ‘DISPLACEMENT’
	**/
	var displacement_method : bpy.types.cyclesmaterialsettings.CyclesMaterialSettings.Enum1;
	/**
		When using volume rendering, assume volume has the same density everywhere (not using any textures), for faster rendering
		
		Type: boolean, default False
	**/
	var homogeneous_volume : Bool;
	/**
		Use multiple importance sampling for this material, disabling may reduce overall noise for large objects that emit little light compared to other light sources
		
		Type: boolean, default True
	**/
	var sample_as_light : Bool;
	/**
		Use transparent shadows for this material if it contains a Transparent BSDF, disabling will render faster but not give accurate shadows
		
		Type: boolean, default True
	**/
	var use_transparent_shadow : Bool;
	/**
		Interpolation method to use for smoke/fire volumes
		
		Type: enum in [‘LINEAR’, ‘CUBIC’], default ‘LINEAR’
	**/
	var volume_interpolation : bpy.types.cyclesmaterialsettings.CyclesMaterialSettings.Enum2;
	/**
		Sampling method to use for volumes
		
		Type: enum in [‘DISTANCE’, ‘EQUIANGULAR’, ‘MULTIPLE_IMPORTANCE’], default ‘MULTIPLE_IMPORTANCE’
	**/
	var volume_sampling : bpy.types.cyclesmaterialsettings.CyclesMaterialSettings.Enum3;
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