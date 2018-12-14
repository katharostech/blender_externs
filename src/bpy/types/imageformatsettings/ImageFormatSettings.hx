package bpy.types.imageformatsettings;
@:enum abstract Enum1(String) from String to String {
	var 8 : String = "8";
	var 10 : String = "10";
	var 12 : String = "12";
	var 16 : String = "16";
	var 32 : String = "32";
}@:enum abstract Enum2(String) from String to String {
	var BW : String = "BW";
	var RGB : String = "RGB";
	var RGBA : String = "RGBA";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var PXR24 : String = "PXR24";
	var ZIP : String = "ZIP";
	var PIZ : String = "PIZ";
	var RLE : String = "RLE";
	var ZIPS : String = "ZIPS";
	var B44 : String = "B44";
	var B44A : String = "B44A";
	var DWAA : String = "DWAA";
}@:enum abstract Enum4(String) from String to String {
	var BMP : String = "BMP";
	var IRIS : String = "IRIS";
	var PNG : String = "PNG";
	var JPEG : String = "JPEG";
	var JPEG2000 : String = "JPEG2000";
	var TARGA : String = "TARGA";
	var TARGA_RAW : String = "TARGA_RAW";
	var CINEON : String = "CINEON";
	var DPX : String = "DPX";
	var OPEN_EXR_MULTILAYER : String = "OPEN_EXR_MULTILAYER";
	var OPEN_EXR : String = "OPEN_EXR";
	var HDR : String = "HDR";
	var TIFF : String = "TIFF";
	var AVI_JPEG : String = "AVI_JPEG";
	var AVI_RAW : String = "AVI_RAW";
	var FFMPEG : String = "FFMPEG";
}@:enum abstract Enum5(String) from String to String {
	var JP2 : String = "JP2";
	var J2K : String = "J2K";
}@:enum abstract Enum6(String) from String to String {
	var NONE : String = "NONE";
	var DEFLATE : String = "DEFLATE";
	var LZW : String = "LZW";
	var PACKBITS : String = "PACKBITS";
}@:enum abstract Enum7(String) from String to String {
	var INDIVIDUAL : String = "INDIVIDUAL";
	var STEREO_3D : String = "STEREO_3D";
}/**
	Settings for image formats
**/
@:pythonImport("bpy.types.ImageFormatSettings") extern class ImageFormatSettings {
	/**
		Log conversion reference blackpoint
		
		Type: int in [0, 1024], default 0
	**/
	var cineon_black : Int;
	/**
		Log conversion gamma
		
		Type: float in [0, 10], default 0.0
	**/
	var cineon_gamma : Float;
	/**
		Log conversion reference whitepoint
		
		Type: int in [0, 1024], default 0
	**/
	var cineon_white : Int;
	/**
		Bit depth per channel
		
		Type: enum in [‘8’, ‘10’, ‘12’, ‘16’, ‘32’], default ‘8’
	**/
	var color_depth : bpy.types.imageformatsettings.ImageFormatSettings.Enum1;
	/**
		Choose BW for saving grayscale images, RGB for saving red, green and blue channels, and RGBA for saving red, green, blue and alpha channels
		
		Type: enum in [‘BW’, ‘RGB’, ‘RGBA’], default ‘BW’
	**/
	var color_mode : bpy.types.imageformatsettings.ImageFormatSettings.Enum2;
	/**
		Amount of time to determine best compression: 0 = no compression with fast file output, 100 = maximum lossless compression with slow file output
		
		Type: int in [0, 100], default 0
	**/
	var compression : Int;
	/**
		Settings of device saved image would be displayed on
		
		Type: ColorManagedDisplaySettings, (readonly)
	**/
	var display_settings(default, never) : bpy.types.colormanageddisplaysettings.ColorManagedDisplaySettings;
	/**
		Codec settings for OpenEXR
		
		Type: enum in [‘NONE’, ‘PXR24’, ‘ZIP’, ‘PIZ’, ‘RLE’, ‘ZIPS’, ‘B44’, ‘B44A’, ‘DWAA’], default ‘NONE’
	**/
	var exr_codec : bpy.types.imageformatsettings.ImageFormatSettings.Enum3;
	/**
		File format to save the rendered images as
		
		Type: enum in [‘BMP’, ‘IRIS’, ‘PNG’, ‘JPEG’, ‘JPEG2000’, ‘TARGA’, ‘TARGA_RAW’, ‘CINEON’, ‘DPX’, ‘OPEN_EXR_MULTILAYER’, ‘OPEN_EXR’, ‘HDR’, ‘TIFF’, ‘AVI_JPEG’, ‘AVI_RAW’, ‘FFMPEG’], default ‘TARGA’
	**/
	var file_format : bpy.types.imageformatsettings.ImageFormatSettings.Enum4;
	/**
		Codec settings for Jpeg2000
		
		Type: enum in [‘JP2’, ‘J2K’], default ‘JP2’
	**/
	var jpeg2k_codec : bpy.types.imageformatsettings.ImageFormatSettings.Enum5;
	/**
		Quality for image formats that support lossy compression
		
		Type: int in [0, 100], default 0
	**/
	var quality : Int;
	/**
		Settings for stereo 3d
		
		Type: Stereo3dFormat, (readonly, never None)
	**/
	var stereo_3d_format(default, never) : bpy.types.stereo3dformat.Stereo3dFormat;
	/**
		Compression mode for TIFF
		
		Type: enum in [‘NONE’, ‘DEFLATE’, ‘LZW’, ‘PACKBITS’], default ‘DEFLATE’
	**/
	var tiff_codec : bpy.types.imageformatsettings.ImageFormatSettings.Enum6;
	/**
		Convert to logarithmic color space
		
		Type: boolean, default False
	**/
	var use_cineon_log : Bool;
	/**
		Use Openjpeg Cinema Preset (48fps)
		
		Type: boolean, default False
	**/
	var use_jpeg2k_cinema_48 : Bool;
	/**
		Use Openjpeg Cinema Preset
		
		Type: boolean, default False
	**/
	var use_jpeg2k_cinema_preset : Bool;
	/**
		Save luminance-chrominance-chrominance channels instead of RGB colors
		
		Type: boolean, default False
	**/
	var use_jpeg2k_ycc : Bool;
	/**
		When rendering animations, save JPG preview images in same directory
		
		Type: boolean, default False
	**/
	var use_preview : Bool;
	/**
		Save the z-depth per pixel (32 bit unsigned int z-buffer)
		
		Type: boolean, default False
	**/
	var use_zbuffer : Bool;
	/**
		Color management settings applied on image before saving
		
		Type: ColorManagedViewSettings, (readonly)
	**/
	var view_settings(default, never) : bpy.types.colormanagedviewsettings.ColorManagedViewSettings;
	/**
		Format of multiview media
		
		Type: enum in [‘INDIVIDUAL’, ‘STEREO_3D’], default ‘INDIVIDUAL’
	**/
	var views_format : bpy.types.imageformatsettings.ImageFormatSettings.Enum7;
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