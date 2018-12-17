package bpy.types.camerabackgroundimage;
@:enum abstract Enum1(String) from String to String {
	var BACK : String = "BACK";
	var FRONT : String = "FRONT";
}@:enum abstract Enum2(String) from String to String {
	var STRETCH : String = "STRETCH";
	var FIT : String = "FIT";
	var CROP : String = "CROP";
}@:enum abstract Enum3(String) from String to String {
	var IMAGE : String = "IMAGE";
	var MOVIE_CLIP : String = "MOVIE_CLIP";
}/**
	Image and settings for display in the 3D View background
**/
@:native("bpy.types.CameraBackgroundImage") extern class CameraBackgroundImage {
	/**
		Image opacity to blend the image against the background color
		
		Type: float in [0, 1], default 0.0
	**/
	var alpha : Float;
	/**
		Movie clip displayed and edited in this space
		
		Type: MovieClip
	**/
	var clip : bpy.types.movieclip.MovieClip;
	/**
		Parameters defining which frame of the movie clip is displayed
		
		Type: MovieClipUser, (readonly, never None)
	**/
	var clip_user(default, never) : bpy.types.movieclipuser.MovieClipUser;
	/**
		Display under or over everything
		
		Type: enum in [‘BACK’, ‘FRONT’], default ‘BACK’
	**/
	var display_depth : bpy.types.camerabackgroundimage.CameraBackgroundImage.Enum1;
	/**
		How the image fits in the camera frame
		
		Type: enum in [‘STRETCH’, ‘FIT’, ‘CROP’], default ‘STRETCH’
	**/
	var frame_method : bpy.types.camerabackgroundimage.CameraBackgroundImage.Enum2;
	/**
		Image displayed and edited in this space
		
		Type: Image
	**/
	var image : bpy.types.image.Image;
	/**
		Parameters defining which layer, pass and frame of the image is displayed
		
		Type: ImageUser, (readonly, never None)
	**/
	var image_user(default, never) : bpy.types.imageuser.ImageUser;
	/**
		
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var offset : Array<Float>;
	/**
		Rotation for the background image (ortho view only)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var rotation : Float;
	/**
		Scale the background image
		
		Type: float in [0, inf], default 0.0
	**/
	var scale : Float;
	/**
		Show this image as background
		
		Type: boolean, default False
	**/
	var show_background_image : Bool;
	/**
		Show the expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Show this image in front of objects in viewport
		
		Type: boolean, default False
	**/
	var show_on_foreground : Bool;
	/**
		Data source used for background
		
		Type: enum in [‘IMAGE’, ‘MOVIE_CLIP’], default ‘IMAGE’
	**/
	var source : bpy.types.camerabackgroundimage.CameraBackgroundImage.Enum3;
	/**
		Use movie clip from active scene camera
		
		Type: boolean, default False
	**/
	var use_camera_clip : Bool;
	/**
		Flip the background image horizontally
		
		Type: boolean, default False
	**/
	var use_flip_x : Bool;
	/**
		Flip the background image vertically
		
		Type: boolean, default False
	**/
	var use_flip_y : Bool;
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