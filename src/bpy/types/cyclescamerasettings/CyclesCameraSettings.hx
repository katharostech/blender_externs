package bpy.types.cyclescamerasettings;
@:enum abstract Enum1(String) from String to String {
	var RADIUS : String = "RADIUS";
	var FSTOP : String = "FSTOP";
}@:enum abstract Enum2(String) from String to String {
	var EQUIRECTANGULAR : String = "EQUIRECTANGULAR";
	var FISHEYE_EQUIDISTANT : String = "FISHEYE_EQUIDISTANT";
	var FISHEYE_EQUISOLID : String = "FISHEYE_EQUISOLID";
	var MIRRORBALL : String = "MIRRORBALL";
}@:pythonImport("bpy.types.CyclesCameraSettings") extern class CyclesCameraSettings {
	/**
		Number of blades in aperture for polygonal bokeh (at least 3)
		
		Type: int in [0, 100], default 0
	**/
	var aperture_blades : Int;
	/**
		F-stop ratio (lower numbers give more defocus, higher numbers give a sharper image)
		
		Type: float in [0, inf], default 5.6
	**/
	var aperture_fstop : Float;
	/**
		Distortion to simulate anamorphic lens bokeh
		
		Type: float in [0.01, inf], default 1.0
	**/
	var aperture_ratio : Float;
	/**
		Rotation of blades in aperture
		
		Type: float in [-inf, inf], default 0.0
	**/
	var aperture_rotation : Float;
	/**
		Radius of the aperture for depth of field (higher values give more defocus)
		
		Type: float in [0, inf], default 0.0
	**/
	var aperture_size : Float;
	/**
		Use f-stop number or aperture radius
		
		Type: enum in [‘RADIUS’, ‘FSTOP’], default ‘RADIUS’
	**/
	var aperture_type : bpy.types.cyclescamerasettings.CyclesCameraSettings.Enum1;
	/**
		Field of view for the fisheye lens
		
		Type: float in [0.1745, 31.4159], default 3.14159
	**/
	var fisheye_fov : Float;
	/**
		Lens focal length (mm)
		
		Type: float in [0.01, 100], default 10.5
	**/
	var fisheye_lens : Float;
	/**
		Maximum latitude (vertical angle) for the equirectangular lens
		
		Type: float in [-1.5708, 1.5708], default 1.5708
	**/
	var latitude_max : Float;
	/**
		Minimum latitude (vertical angle) for the equirectangular lens
		
		Type: float in [-1.5708, 1.5708], default -1.5708
	**/
	var latitude_min : Float;
	/**
		Maximum longitude (horizontal angle) for the equirectangular lens
		
		Type: float in [-3.14159, 3.14159], default 3.14159
	**/
	var longitude_max : Float;
	/**
		Minimum longitude (horizontal angle) for the equirectangular lens
		
		Type: float in [-3.14159, 3.14159], default -3.14159
	**/
	var longitude_min : Float;
	/**
		Distortion to use for the calculation
		
		Type: enum in [‘EQUIRECTANGULAR’, ‘FISHEYE_EQUIDISTANT’, ‘FISHEYE_EQUISOLID’, ‘MIRRORBALL’], default ‘FISHEYE_EQUISOLID’
	**/
	var panorama_type : bpy.types.cyclescamerasettings.CyclesCameraSettings.Enum2;
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