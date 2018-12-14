package bpy_extras.image_utils;
/**
	bpy_extras submodule (bpy_extras.image_utils)
**/
@:pythonImport("bpy_extras.image_utils") extern class Module {
	/**
		Return an image from the file path with options to search multiple paths
		and return a placeholder if its not found.
		@param filepath The image filename
		                                        If a path precedes it, this will be searched as well. — string
		@param dirname is the directory where the image may be located - any file at
		                                        the end will be ignored. — string
		@param place_holder if True a new place holder image will be created.
		                                        this is useful so later you can relink the image to its original data. — bool
		@param recursive If True, directories will be recursively searched.
		                                        Be careful with this if you have files in your root directory because
		                                        it may take a long time. — bool
		@param ncase_cmp on non windows systems, find the correct case for the file. — bool
		@param convert_callback a function that takes an existing path and returns
		                                        a new one. Use this when loading image formats blender may not support,
		                                        the CONVERT_CALLBACK can take the path for a GIF (for example),
		                                        convert it to a PNG and return the PNG’s path.
		                                        For formats blender can read, simply return the path that is given. — function
		@param relpath If not None, make the file relative to this path. — None or string
		@param check_existing If true,
		                                        returns already loaded image datablock if possible
		                                        (based on file path). — bool
		@param force_reload If true,
		                                        force reloading of image (only useful when check_existing
		                                        is also enabled). — bool
		
		@returns bpy.types.Image
	**/
	static function load_image(filepath:Dynamic, dirname:Dynamic, place_holder:Dynamic, recursive:Dynamic, ncase_cmp:Dynamic, convert_callback:Dynamic, relpath:Dynamic, check_existing:Dynamic, force_reload:Dynamic):bpy.types.image.Image;
}