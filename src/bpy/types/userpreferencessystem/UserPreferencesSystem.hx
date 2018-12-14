package bpy.types.userpreferencessystem;
@:enum abstract Enum1(String) from String to String {
	var FILTER_0 : String = "FILTER_0";
	var FILTER_2 : String = "FILTER_2";
	var FILTER_4 : String = "FILTER_4";
	var FILTER_8 : String = "FILTER_8";
	var FILTER_16 : String = "FILTER_16";
}@:enum abstract Enum2(String) from String to String {
	var MONO : String = "MONO";
	var STEREO : String = "STEREO";
	var SURROUND4 : String = "SURROUND4";
	var SURROUND51 : String = "SURROUND51";
	var SURROUND71 : String = "SURROUND71";
}@:enum abstract Enum3(String) from String to String {
	var N : String = "N";
}@:enum abstract Enum4(String) from String to String {
	var SAMPLES_256 : String = "SAMPLES_256";
	var SAMPLES_512 : String = "SAMPLES_512";
	var SAMPLES_1024 : String = "SAMPLES_1024";
	var SAMPLES_2048 : String = "SAMPLES_2048";
	var SAMPLES_4096 : String = "SAMPLES_4096";
	var SAMPLES_8192 : String = "SAMPLES_8192";
	var SAMPLES_16384 : String = "SAMPLES_16384";
	var SAMPLES_32768 : String = "SAMPLES_32768";
}@:enum abstract Enum5(String) from String to String {
	var U8 : String = "U8";
	var S16 : String = "S16";
	var S24 : String = "S24";
	var S32 : String = "S32";
	var FLOAT : String = "FLOAT";
	var DOUBLE : String = "DOUBLE";
}@:enum abstract Enum6(String) from String to String {
	var RATE_44100 : String = "RATE_44100";
	var RATE_48000 : String = "RATE_48000";
	var RATE_96000 : String = "RATE_96000";
	var RATE_192000 : String = "RATE_192000";
}@:enum abstract Enum7(String) from String to String {
	var CIRCLE_HSV : String = "CIRCLE_HSV";
	var CIRCLE_HSL : String = "CIRCLE_HSL";
	var SQUARE_SV : String = "SQUARE_SV";
	var SQUARE_HS : String = "SQUARE_HS";
	var SQUARE_HV : String = "SQUARE_HV";
}@:enum abstract Enum8(String) from String to String {
	var CLAMP_OFF : String = "CLAMP_OFF";
	var CLAMP_8192 : String = "CLAMP_8192";
	var CLAMP_4096 : String = "CLAMP_4096";
	var CLAMP_2048 : String = "CLAMP_2048";
	var CLAMP_1024 : String = "CLAMP_1024";
	var CLAMP_512 : String = "CLAMP_512";
	var CLAMP_256 : String = "CLAMP_256";
	var CLAMP_128 : String = "CLAMP_128";
}@:enum abstract Enum9(String) from String to String {
	var NONE : String = "NONE";
	var 2 : String = "2";
	var 4 : String = "4";
	var 8 : String = "8";
	var 16 : String = "16";
}@:enum abstract Enum10(String) from String to String {
	var 2DTEXTURE : String = "2DTEXTURE";
	var GLSL : String = "GLSL";
	var DRAWPIXELS : String = "DRAWPIXELS";
}@:enum abstract Enum11(String) from String to String {
	var NONE : String = "NONE";
	var 2 : String = "2";
	var 4 : String = "4";
	var 8 : String = "8";
	var 16 : String = "16";
}@:enum abstract Enum12(String) from String to String {
	var NONE : String = "NONE";
	var CPU : String = "CPU";
	var OPENMP : String = "OPENMP";
}@:enum abstract Enum13(String) from String to String {
	var AUTO : String = "AUTO";
	var GL_SELECT : String = "GL_SELECT";
	var GL_QUERY : String = "GL_QUERY";
}@:enum abstract Enum14(String) from String to String {
	var AUTO : String = "AUTO";
	var NONE : String = "NONE";
	var SLIGHT : String = "SLIGHT";
	var FULL : String = "FULL";
}/**
	Graphics driver and operating system settings
**/
@:pythonImport("bpy.types.UserPreferencesSystem") extern class UserPreferencesSystem {
	/**
		Quality of the anisotropic filtering (values greater than 1.0 enable anisotropic filtering)
		
		Type: enum in [‘FILTER_0’, ‘FILTER_2’, ‘FILTER_4’, ‘FILTER_8’, ‘FILTER_16’], default ‘FILTER_0’
	**/
	var anisotropic_filter : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum1;
	/**
		Audio channel count
		
		Type: enum in [‘MONO’, ‘STEREO’, ‘SURROUND4’, ‘SURROUND51’, ‘SURROUND71’], default ‘MONO’
	**/
	var audio_channels : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum2;
	/**
		Audio output device
		
		Type: enum in [‘Null’], default ‘Null’
	**/
	var audio_device : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum3;
	/**
		Number of samples used by the audio mixing buffer
		
		Type: enum in [‘SAMPLES_256’, ‘SAMPLES_512’, ‘SAMPLES_1024’, ‘SAMPLES_2048’, ‘SAMPLES_4096’, ‘SAMPLES_8192’, ‘SAMPLES_16384’, ‘SAMPLES_32768’], default ‘SAMPLES_256’
	**/
	var audio_mixing_buffer : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum4;
	/**
		Audio sample format
		
		Type: enum in [‘U8’, ‘S16’, ‘S24’, ‘S32’, ‘FLOAT’, ‘DOUBLE’], default ‘U8’
	**/
	var audio_sample_format : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum5;
	/**
		Audio sample rate
		
		Type: enum in [‘RATE_44100’, ‘RATE_48000’, ‘RATE_96000’, ‘RATE_192000’], default ‘RATE_44100’
	**/
	var audio_sample_rate : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum6;
	/**
		Name that will be used in exported files when format supports such feature
		
		Type: string, default “”, (never None)
	**/
	var author : String;
	/**
		Different styles of displaying the color picker widget
		
		Type: enum in [‘CIRCLE_HSV’, ‘CIRCLE_HSL’, ‘SQUARE_SV’, ‘SQUARE_HS’, ‘SQUARE_HV’], default ‘CIRCLE_HSV’
	**/
	var color_picker_type : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum7;
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var dpi(default, never) : Int;
	/**
		View the result of the solid lights in the viewport
		
		Type: boolean, default False
	**/
	var edit_solid_light : Bool;
	/**
		Path to interface font
		
		Type: string, default “”, (never None)
	**/
	var font_path_ui : String;
	/**
		Path to interface mono-space Font
		
		Type: string, default “”, (never None)
	**/
	var font_path_ui_mono : String;
	/**
		Clip alpha below this threshold in the 3D textured view
		
		Type: float in [0, 1], default 0.0
	**/
	var gl_clip_alpha : Float;
	/**
		Limit the texture size to save graphics memory
		
		Type: enum in [‘CLAMP_OFF’, ‘CLAMP_8192’, ‘CLAMP_4096’, ‘CLAMP_2048’, ‘CLAMP_1024’, ‘CLAMP_512’, ‘CLAMP_256’, ‘CLAMP_128’], default ‘CLAMP_OFF’
	**/
	var gl_texture_limit : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum8;
	/**
		Enable Grease Pencil OpenGL multi-sampling, only for systems that support it
		
		Type: enum in [‘NONE’, ‘2’, ‘4’, ‘8’, ‘16’], default ‘NONE’
	**/
	var gpencil_multi_sample : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum9;
	/**
		Quality setting for Solid mode rendering in the 3d viewport
		
		Type: float in [0, 1], default 0.6
	**/
	var gpu_viewport_quality : Float;
	/**
		Method used for displaying images on the screen
		
		Type: enum in [‘2DTEXTURE’, ‘GLSL’, ‘DRAWPIXELS’], default ‘2DTEXTURE’
	**/
	var image_draw_method : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum10;
	/**
		For backwards compatibility only
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var legacy_compute_device_type(default, never) : Int;
	/**
		Color of the ambient light that uniformly lit the scene
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var light_ambient : Array<Float>;
	/**
		Memory cache limit (in megabytes)
		
		Type: int in [0, inf], default 0
	**/
	var memory_cache_limit : Int;
	/**
		Enable OpenGL multi-sampling, only for systems that support it, requires restart
		
		Type: enum in [‘NONE’, ‘2’, ‘4’, ‘8’, ‘16’], default ‘NONE’
	**/
	var multi_sample : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum11;
	/**
		Type of computer back-end used with OpenSubdiv
		
		Type: enum in [‘NONE’, ‘CPU’, ‘OPENMP’], default ‘NONE’
	**/
	var opensubdiv_compute_type : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum12;
	/**
		
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var pixel_size(default, never) : Float;
	/**
		Number of frames to render ahead during playback (sequencer only)
		
		Type: int in [0, inf], default 0
	**/
	var prefetch_frames : Int;
	/**
		Maximum number of lines to store for the console buffer
		
		Type: int in [32, 32768], default 0
	**/
	var scrollback : Int;
	/**
		Use OpenGL occlusion queries or selection render mode to accelerate selection
		
		Type: enum in [‘AUTO’, ‘GL_SELECT’, ‘GL_QUERY’], default ‘AUTO’
	**/
	var select_method : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum13;
	/**
		Lights user to display objects in solid draw mode
		
		Type: bpy_prop_collection of UserSolidLight, (readonly)
	**/
	var solid_lights(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Method for making user interface text render sharp
		
		Type: enum in [‘AUTO’, ‘NONE’, ‘SLIGHT’, ‘FULL’], default ‘AUTO’
	**/
	var text_hinting : bpy.types.userpreferencessystem.UserPreferencesSystem.Enum14;
	/**
		Number of seconds between each run of the GL texture garbage collector
		
		Type: int in [1, 3600], default 0
	**/
	var texture_collection_rate : Int;
	/**
		Time since last access of a GL texture in seconds after which it is freed (set to 0 to keep textures allocated)
		
		Type: int in [0, 3600], default 0
	**/
	var texture_time_out : Int;
	/**
		Suggested line thickness and point size in pixels, for add-ons drawing custom user interface elements, based on operating system settings and Blender UI scale
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var ui_line_width(default, never) : Float;
	/**
		Size multiplier to use when drawing custom user interface elements, so that they are scaled correctly on screens with different DPI. This value is based on operating system DPI settings and Blender display scale
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var ui_scale(default, never) : Float;
	/**
		Use 16 bit per component texture for float images
		
		Type: boolean, default False
	**/
	var use_16bit_textures : Bool;
	/**
		Generate Image Mipmaps on the GPU
		
		Type: boolean, default False
	**/
	var use_gpu_mipmap : Bool;
	/**
		Enable UI translation and use international fonts
		
		Type: boolean, default False
	**/
	var use_international_fonts : Bool;
	/**
		Allow user to choose any codec (Windows only, might generate instability)
		
		Type: boolean, default False
	**/
	var use_preview_images : Bool;
	/**
		Draw tool/property regions over the main region, when using Triple Buffer
		
		Type: boolean, default False
	**/
	var use_region_overlap : Bool;
	/**
		Allow any .blend file to run scripts automatically (unsafe with blend files from an untrusted source)
		
		Type: boolean, default False
	**/
	var use_scripts_auto_execute : Bool;
	/**
		Use the depth buffer for picking 3D View selection
		
		Type: boolean, default False
	**/
	var use_select_pick_depth : Bool;
	/**
		Automatically convert all new tabs into spaces for new and loaded text files
		
		Type: boolean, default False
	**/
	var use_tabs_as_spaces : Bool;
	/**
		Draw user interface text anti-aliased
		
		Type: boolean, default False
	**/
	var use_text_antialiasing : Bool;
	/**
		Translate all labels in menus, buttons and panels (note that this might make it hard to follow tutorials or the manual)
		
		Type: boolean, default False
	**/
	var use_translate_interface : Bool;
	/**
		Translate the names of new data-blocks (objects, materials…)
		
		Type: boolean, default False
	**/
	var use_translate_new_dataname : Bool;
	/**
		Translate the descriptions when hovering UI elements (recommended)
		
		Type: boolean, default False
	**/
	var use_translate_tooltips : Bool;
	/**
		Enable color range used for weight visualization in weight painting mode
		
		Type: boolean, default False
	**/
	var use_weight_color_range : Bool;
	/**
		Color range used for weight visualization in weight painting mode
		
		Type: ColorRamp, (readonly, never None)
	**/
	var weight_color_range(default, never) : bpy.types.colorramp.ColorRamp;
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