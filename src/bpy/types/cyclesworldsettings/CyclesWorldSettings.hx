package bpy.types.cyclesworldsettings;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var AUTOMATIC : String = "AUTOMATIC";
	var MANUAL : String = "MANUAL";
}@:enum abstract Enum2(String) from String to String {
	var LINEAR : String = "LINEAR";
	var CUBIC : String = "CUBIC";
}@:enum abstract Enum3(String) from String to String {
	var DISTANCE : String = "DISTANCE";
	var EQUIANGULAR : String = "EQUIANGULAR";
	var MULTIPLE_IMPORTANCE : String = "MULTIPLE_IMPORTANCE";
}@:native("bpy.types.CyclesWorldSettings") extern class CyclesWorldSettings {
	/**
		When using volume rendering, assume volume has the same density everywhere(not using any textures), for faster rendering
		
		Type: boolean, default False
	**/
	var homogeneous_volume : Bool;
	/**
		Maximum number of bounces the background light will contribute to the render
		
		Type: int in [0, 1024], default 1024
	**/
	var max_bounces : Int;
	/**
		Importance map size is resolution x resolution/2; higher values potentially produce less noise, at the cost of memory and speed
		
		Type: int in [4, 8192], default 1024
	**/
	var sample_map_resolution : Int;
	/**
		Number of light samples to render for each AA sample
		
		Type: int in [1, 10000], default 1
	**/
	var samples : Int;
	/**
		How to sample the background light
		
		Type: enum in [‘NONE’, ‘AUTOMATIC’, ‘MANUAL’], default ‘AUTOMATIC’
	**/
	var sampling_method : bpy.types.cyclesworldsettings.CyclesWorldSettings.Enum1;
	/**
		Interpolation method to use for volumes
		
		Type: enum in [‘LINEAR’, ‘CUBIC’], default ‘LINEAR’
	**/
	var volume_interpolation : bpy.types.cyclesworldsettings.CyclesWorldSettings.Enum2;
	/**
		Sampling method to use for volumes
		
		Type: enum in [‘DISTANCE’, ‘EQUIANGULAR’, ‘MULTIPLE_IMPORTANCE’], default ‘EQUIANGULAR’
	**/
	var volume_sampling : bpy.types.cyclesworldsettings.CyclesWorldSettings.Enum3;
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