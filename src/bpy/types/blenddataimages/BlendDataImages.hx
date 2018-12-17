package bpy.types.blenddataimages;
/**
	Collection of images
**/
@:native("bpy.types.BlendDataImages") extern class BlendDataImages {
	/**
		Add a new image to the main database
		@param name New name for the data-block — string, (never None)
		@param width Width of the image — int in [1, inf]
		@param height Height of the image — int in [1, inf]
		@param alpha Alpha, Use alpha channel — boolean, (optional)
		@param float_buffer Float Buffer, Create an image with floating point color — boolean, (optional)
		@param pystereo3d Stereo 3D, Create left and right views — boolean, (optional)
		
		@returns Image
	**/
	function pyNew(name:String, width:Int, height:Int, alpha:Bool, float_buffer:Bool, pystereo3d:Bool):bpy.types.image.Image;
	/**
		Load a new image into the main database
		@param filepath path of the file to load — string, (never None)
		@param check_existing Using existing data-block if this file is already loaded — boolean, (optional)
		
		@returns Image
	**/
	function load(filepath:String, check_existing:Bool):bpy.types.image.Image;
	/**
		Remove an image from the current blendfile
		@param image Image to remove — Image, (never None)
		@param do_unlink Unlink all usages of this image before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this image — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this image — boolean, (optional)
	**/
	function remove(image:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Bool):Void;
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