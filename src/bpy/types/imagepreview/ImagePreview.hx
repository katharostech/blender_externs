package bpy.types.imagepreview;
/**
	Preview image and icon
**/
@:pythonImport("bpy.types.ImagePreview") extern class ImagePreview {
	/**
		Unique integer identifying this preview as an icon (zero means invalid)
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var icon_id(default, never) : Int;
	/**
		Icon pixels, as bytes (always RGBA 32bits)
		
		Type: int in [-inf, inf], default 0
	**/
	var icon_pixels : Int;
	/**
		Icon pixels components, as floats (RGBA concatenated values)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var icon_pixels_float : Float;
	/**
		Width and height in pixels
		
		Type: int array of 2 items in [-inf, inf], default (0, 0)
	**/
	var icon_size : Array<Int>;
	/**
		Image pixels, as bytes (always RGBA 32bits)
		
		Type: int in [-inf, inf], default 0
	**/
	var image_pixels : Int;
	/**
		Image pixels components, as floats (RGBA concatenated values)
		
		Type: float in [-inf, inf], default 0.0
	**/
	var image_pixels_float : Float;
	/**
		Width and height in pixels
		
		Type: int array of 2 items in [-inf, inf], default (0, 0)
	**/
	var image_size : Array<Int>;
	/**
		True if this preview icon has been modified by py script,and is no more auto-generated by Blender
		
		Type: boolean, default False
	**/
	var is_icon_custom : Bool;
	/**
		True if this preview image has been modified by py script,and is no more auto-generated by Blender
		
		Type: boolean, default False
	**/
	var is_image_custom : Bool;
	/**
		Reload the preview from its source path
	**/
	function reload():Void;
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