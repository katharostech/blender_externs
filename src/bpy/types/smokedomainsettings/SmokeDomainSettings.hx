package bpy.types.smokedomainsettings;
@:enum abstract Enum1(String) from String to String {
	var FULL : String = "FULL";
	var SINGLE : String = "SINGLE";
}@:enum abstract Enum2(String) from String to String {
	var POINTCACHE : String = "POINTCACHE";
	var OPENVDB : String = "OPENVDB";
}@:enum abstract Enum3(String) from String to String {
	var COLOR_R : String = "COLOR_R";
	var COLOR_G : String = "COLOR_G";
	var COLOR_B : String = "COLOR_B";
	var DENSITY : String = "DENSITY";
	var FLAME : String = "FLAME";
	var FUEL : String = "FUEL";
	var HEAT : String = "HEAT";
	var VELOCITY_X : String = "VELOCITY_X";
	var VELOCITY_Y : String = "VELOCITY_Y";
	var VELOCITY_Z : String = "VELOCITY_Z";
}@:enum abstract Enum4(String) from String to String {
	var BORDEROPEN : String = "BORDEROPEN";
	var BORDERVERTICAL : String = "BORDERVERTICAL";
	var BORDERCLOSED : String = "BORDERCLOSED";
}@:enum abstract Enum5(String) from String to String {
	var 16 : String = "16";
	var 32 : String = "32";
}@:enum abstract Enum6(String) from String to String {
	var LINEAR : String = "LINEAR";
	var CUBIC : String = "CUBIC";
}@:enum abstract Enum7(String) from String to String {
	var FULLSAMPLE : String = "FULLSAMPLE";
	var LINEAR : String = "LINEAR";
	var NEAREST : String = "NEAREST";
}@:enum abstract Enum8(String) from String to String {
	var NOISEWAVE : String = "NOISEWAVE";
	var NOISEFFT : String = "NOISEFFT";
}@:enum abstract Enum9(String) from String to String {
	var ZIP : String = "ZIP";
	var BLOSC : String = "BLOSC";
	var NONE : String = "NONE";
}@:enum abstract Enum10(String) from String to String {
	var CACHELIGHT : String = "CACHELIGHT";
	var CACHEHEAVY : String = "CACHEHEAVY";
}@:enum abstract Enum11(String) from String to String {
	var AUTO : String = "AUTO";
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum12(String) from String to String {
	var VIEW_ALIGNED : String = "VIEW_ALIGNED";
	var AXIS_ALIGNED : String = "AXIS_ALIGNED";
}@:enum abstract Enum13(String) from String to String {
	var NEEDLE : String = "NEEDLE";
	var STREAMLINE : String = "STREAMLINE";
}/**
	Smoke domain settings
**/
@:pythonImport("bpy.types.SmokeDomainSettings") extern class SmokeDomainSettings {
	/**
		Margin added around fluid to minimize boundary interference
		
		Type: int in [2, 24], default 0
	**/
	var adapt_margin : Int;
	/**
		Maximum amount of fluid cell can contain before it is considered empty
		
		Type: float in [0.01, 0.5], default 0.0
	**/
	var adapt_threshold : Float;
	/**
		Maximum number of additional cells
		
		Type: int in [0, 512], default 0
	**/
	var additional_res : Int;
	/**
		How much density affects smoke motion (higher value results in faster rising smoke)
		
		Type: float in [-5, 5], default 0.0
	**/
	var alpha : Float;
	/**
		Enhance the resolution of smoke by this factor using noise
		
		Type: int in [1, 10], default 0
	**/
	var amplify : Int;
	/**
		
		
		Type: enum in [‘FULL’, ‘SINGLE’], default ‘FULL’
	**/
	var axis_slice_method : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum1;
	/**
		How much heat affects smoke motion (higher value results in faster rising smoke)
		
		Type: float in [-5, 5], default 0.0
	**/
	var beta : Float;
	/**
		Speed of the burning reaction (use larger values for smaller flame)
		
		Type: float in [0.01, 4], default 0.0
	**/
	var burning_rate : Float;
	/**
		Select the file format to be used for caching
		
		Type: enum in [‘POINTCACHE’, ‘OPENVDB’], default ‘POINTCACHE’
	**/
	var cache_file_format : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum2;
	/**
		Cell Size
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0), (readonly)
	**/
	var cell_size(default, never) : Array<Float>;
	/**
		Value under which voxels are considered empty space to optimize caching or rendering
		
		Type: float in [0, 1], default 0.0
	**/
	var clipping : Float;
	/**
		Simulation field to color map
		
		Type: enum in [‘COLOR_R’, ‘COLOR_G’, ‘COLOR_B’, ‘DENSITY’, ‘FLAME’, ‘FUEL’, ‘HEAT’, ‘VELOCITY_X’, ‘VELOCITY_Y’, ‘VELOCITY_Z’], default ‘DENSITY’
	**/
	var coba_field : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum3;
	/**
		Limit collisions to this collection
		
		Type: Collection
	**/
	var collision_collection : bpy.types.collection.Collection;
	/**
		Select which domain border will be treated as collision object
		
		Type: enum in [‘BORDEROPEN’, ‘BORDERVERTICAL’, ‘BORDERCLOSED’], default ‘BORDEROPEN’
	**/
	var collision_extents : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum4;
	/**
		Smoke color grid
		
		Type: float array of 32 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0), (readonly)
	**/
	var color_grid(default, never) : Array<Float>;
	/**
		
		
		Type: ColorRamp, (readonly)
	**/
	var color_ramp(default, never) : bpy.types.colorramp.ColorRamp;
	/**
		Bit depth for writing all scalar (including vector) lower values reduce file size
		
		Type: enum in [‘16’, ‘32’], default ‘32’
	**/
	var data_depth : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum5;
	/**
		Smoke density grid
		
		Type: float array of 32 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0), (readonly)
	**/
	var density_grid(default, never) : Array<Float>;
	/**
		Interpolation method to use for smoke/fire volumes in solid mode
		
		Type: enum in [‘LINEAR’, ‘CUBIC’], default ‘LINEAR’
	**/
	var display_interpolation : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum6;
	/**
		Thickness of smoke drawing in the viewport
		
		Type: float in [0.001, 1000], default 0.0
	**/
	var display_thickness : Float;
	/**
		Toggle visualization of the velocity field as needles
		
		Type: boolean, default False
	**/
	var display_velocity : Bool;
	/**
		Dissolve Speed
		
		Type: int in [1, 10000], default 0
	**/
	var dissolve_speed : Int;
	/**
		Smoke Grid Resolution
		
		Type: int array of 3 items in [-inf, inf], default (0, 0, 0), (readonly)
	**/
	var domain_resolution(default, never) : Array<Int>;
	/**
		Limit effectors to this collection
		
		Type: Collection
	**/
	var effector_collection : bpy.types.collection.Collection;
	/**
		
		
		Type: EffectorWeights, (readonly)
	**/
	var effector_weights(default, never) : bpy.types.effectorweights.EffectorWeights;
	/**
		Smoke flame grid
		
		Type: float array of 32 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0), (readonly)
	**/
	var flame_grid(default, never) : Array<Float>;
	/**
		Minimum temperature of flames
		
		Type: float in [0.5, 5], default 0.0
	**/
	var flame_ignition : Float;
	/**
		Maximum temperature of flames
		
		Type: float in [1, 10], default 0.0
	**/
	var flame_max_temp : Float;
	/**
		Amount of smoke created by burning fuel
		
		Type: float in [0, 8], default 0.0
	**/
	var flame_smoke : Float;
	/**
		Color of smoke emitted from burning fuel
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var flame_smoke_color : Array<Float>;
	/**
		Additional vorticity for the flames
		
		Type: float in [0, 2], default 0.0
	**/
	var flame_vorticity : Float;
	/**
		Limit fluid objects to this collection
		
		Type: Collection
	**/
	var fluid_collection : bpy.types.collection.Collection;
	/**
		Smoke heat grid
		
		Type: float array of 32 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0), (readonly)
	**/
	var heat_grid(default, never) : Array<Float>;
	/**
		Method for sampling the high resolution flow
		
		Type: enum in [‘FULLSAMPLE’, ‘LINEAR’, ‘NEAREST’], default ‘NEAREST’
	**/
	var highres_sampling : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum7;
	/**
		Noise method which is used for creating the high resolution
		
		Type: enum in [‘NOISEWAVE’, ‘NOISEFFT’], default ‘NOISEWAVE’
	**/
	var noise_type : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum8;
	/**
		Compression method to be used
		
		Type: enum in [‘ZIP’, ‘BLOSC’, ‘NONE’], default ‘BLOSC’
	**/
	var openvdb_cache_compress_type : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum9;
	/**
		
		
		Type: PointCache, (readonly, never None)
	**/
	var point_cache(default, never) : bpy.types.pointcache.PointCache;
	/**
		Compression method to be used
		
		Type: enum in [‘CACHELIGHT’, ‘CACHEHEAVY’], default ‘CACHELIGHT’
	**/
	var point_cache_compress_type : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum10;
	/**
		Maximal resolution used in the fluid domain
		
		Type: int in [6, 512], default 0
	**/
	var resolution_max : Int;
	/**
		Show high resolution (using amplification)
		
		Type: boolean, default False
	**/
	var show_high_resolution : Bool;
	/**
		
		
		Type: enum in [‘AUTO’, ‘X’, ‘Y’, ‘Z’], default ‘AUTO’
	**/
	var slice_axis : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum11;
	/**
		Position of the slice
		
		Type: float in [0, 1], default 0.0
	**/
	var slice_depth : Float;
	/**
		How to slice the volume for viewport rendering
		
		Type: enum in [‘VIEW_ALIGNED’, ‘AXIS_ALIGNED’], default ‘VIEW_ALIGNED’
	**/
	var slice_method : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum12;
	/**
		How many slices per voxel should be generated
		
		Type: float in [0, 100], default 0.0
	**/
	var slice_per_voxel : Float;
	/**
		Start point
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0), (readonly)
	**/
	var start_point(default, never) : Array<Float>;
	/**
		Strength of noise
		
		Type: float in [0, 10], default 0.0
	**/
	var strength : Float;
	/**
		Smoke temperature grid, range 0..1 represents 0..1000K
		
		Type: float array of 32 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0), (readonly)
	**/
	var temperature_grid(default, never) : Array<Float>;
	/**
		Adjust simulation speed
		
		Type: float in [0.2, 1.5], default 0.0
	**/
	var time_scale : Float;
	/**
		Adapt simulation resolution and size to fluid
		
		Type: boolean, default False
	**/
	var use_adaptive_domain : Bool;
	/**
		Render a simulation field while mapping its voxels values to the colors of a ramp
		
		Type: boolean, default False
	**/
	var use_color_ramp : Bool;
	/**
		Enable smoke to disappear over time
		
		Type: boolean, default False
	**/
	var use_dissolve_smoke : Bool;
	/**
		Using 1/x
		
		Type: boolean, default False
	**/
	var use_dissolve_smoke_log : Bool;
	/**
		Enable high resolution (using amplification)
		
		Type: boolean, default False
	**/
	var use_high_resolution : Bool;
	/**
		
		
		Type: enum in [‘NEEDLE’, ‘STREAMLINE’], default ‘NEEDLE’
	**/
	var vector_display_type : bpy.types.smokedomainsettings.SmokeDomainSettings.Enum13;
	/**
		Multiplier for scaling the vectors
		
		Type: float in [0, 1000], default 0.0
	**/
	var vector_scale : Float;
	/**
		Smoke velocity grid
		
		Type: float array of 32 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0), (readonly)
	**/
	var velocity_grid(default, never) : Array<Float>;
	/**
		Amount of turbulence/rotation in fluid
		
		Type: float in [0.01, 4], default 0.0
	**/
	var vorticity : Float;
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