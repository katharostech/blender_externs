package bpy.utils.previews;
/**
	Dictionary-like class of previews.
	
	This is a subclass of Python’s built-in dict type,
	used to store multiple image previews.
**/
@:native("bpy.utils.previews.ImagePreviewCollection") extern class ImagePreviewCollection {
	/**
		Clear all previews.
	**/
	function clear():Void;
	/**
		Close the collection and clear all previews.
	**/
	function close():Void;
	/**
		Generate a new preview from given file path, or return existing one matching name.
		@param name The name (unique id) identifying the preview. — string
		@param filepath The file path to generate the preview from. — string
		@param filetype The type of file, needed to generate the preview in [‘IMAGE’, ‘MOVIE’, ‘BLEND’, ‘FONT’]. — string
		@param force_reload If True, force running thumbnail manager even if preview already exists in cache. — bool
		
		@returns bpy.types.ImagePreview
	**/
	function load(name:String, filepath:String, filetype:String, force_reload:Dynamic):bpy.types.imagepreview.ImagePreview;
	/**
		Generate a new empty preview, or return existing one matching name.
		@param name The name (unique id) identifying the preview. — string
		
		@returns bpy.types.ImagePreview
	**/
	function pyNew(name:String):bpy.types.imagepreview.ImagePreview;
}