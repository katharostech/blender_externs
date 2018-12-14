package bpy.types.movietrackingcamera;
@:enum abstract Enum1(String) from String to String {
	var POLYNOMIAL : String = "POLYNOMIAL";
	var DIVISION : String = "DIVISION";
}@:enum abstract Enum2(String) from String to String {
	var PIXELS : String = "PIXELS";
	var MILLIMETERS : String = "MILLIMETERS";
}/**
	Match-moving camera data for tracking
**/
@:pythonImport("bpy.types.MovieTrackingCamera") extern class MovieTrackingCamera {
	/**
		Distortion model used for camera lenses
		
		Type: enum in [‘POLYNOMIAL’, ‘DIVISION’], default ‘POLYNOMIAL’
	**/
	var distortion_model : bpy.types.movietrackingcamera.MovieTrackingCamera.Enum1;
	/**
		First coefficient of second order division distortion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var division_k1 : Float;
	/**
		First coefficient of second order division distortion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var division_k2 : Float;
	/**
		Camera’s focal length
		
		Type: float in [0.0001, inf], default 0.0
	**/
	var focal_length : Float;
	/**
		Camera’s focal length
		
		Type: float in [0, inf], default 0.0
	**/
	var focal_length_pixels : Float;
	/**
		First coefficient of third order polynomial radial distortion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var k1 : Float;
	/**
		Second coefficient of third order polynomial radial distortion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var k2 : Float;
	/**
		Third coefficient of third order polynomial radial distortion
		
		Type: float in [-inf, inf], default 0.0
	**/
	var k3 : Float;
	/**
		Pixel aspect ratio
		
		Type: float in [0.1, inf], default 1.0
	**/
	var pixel_aspect : Float;
	/**
		Optical center of lens
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var principal : Array<Float>;
	/**
		Width of CCD sensor in millimeters
		
		Type: float in [0, 500], default 0.0
	**/
	var sensor_width : Float;
	/**
		Units used for camera focal length
		
		Type: enum in [‘PIXELS’, ‘MILLIMETERS’], default ‘PIXELS’
	**/
	var units : bpy.types.movietrackingcamera.MovieTrackingCamera.Enum2;
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