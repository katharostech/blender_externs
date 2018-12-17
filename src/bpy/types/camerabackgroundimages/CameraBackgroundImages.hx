package bpy.types.camerabackgroundimages;
/**
	Collection of background images
**/
@:native("bpy.types.CameraBackgroundImages") extern class CameraBackgroundImages {
	/**
		Add new background image
		
		@returns CameraBackgroundImage
	**/
	function pyNew():bpy.types.camerabackgroundimage.CameraBackgroundImage;
	/**
		Remove background image
		@param image Image displayed as viewport background — CameraBackgroundImage, (never None)
	**/
	function remove(image:bpy.types.camerabackgroundimage.CameraBackgroundImage):Void;
	/**
		Remove all background images
	**/
	function clear():Void;
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