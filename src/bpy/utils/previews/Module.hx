package bpy.utils.previews;
/**
	bpy.utils submodule (bpy.utils.previews)
	
	This module contains utility functions to handle custom previews.
	
	It behaves as a high-level ‘cached’ previews manager.
	
	This allows scripts to generate their own previews, and use them as icons in UI widgets
	            (‘icon_value’ for UILayout functions).
**/
@:pythonImport("bpy.utils.previews") extern class Module {
	/**
		
		
		@returns ImagePreviewCollection
	**/
	static function pyNew():bpy.utils.previews.imagepreviewcollection.ImagePreviewCollection;
	/**
		Remove the specified previews collection.
		@param pcoll Preview collection to close. — ImagePreviewCollection
	**/
	static function remove(pcoll:Dynamic):Void;
}