package bpy.app;
/**
	Application Data (bpy.app)
	
	This module contains application values that remain unchanged during runtime.
	
	Submodules:
**/
@:pythonImport("bpy.app") extern class Module {
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var autoexec_fail : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var autoexec_fail_message : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var autoexec_fail_quiet : Dynamic;
	/**
		String, the path to the python executable (read-only)
	**/
	var binary_path_python : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_depsgraph : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_depsgraph_build : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_depsgraph_eval : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_depsgraph_pretty : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_depsgraph_tag : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_depsgraph_time : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_events : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_ffmpeg : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_freestyle : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_gpumem : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_handlers : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_io : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_python : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_simdata : Dynamic;
	/**
		Int, number which can be set to non-zero values for testing purposes
	**/
	var debug_value : Dynamic;
	/**
		Boolean, for debug info (started with –debug / –debug_* matching this attribute name)
	**/
	var debug_wm : Dynamic;
	/**
		Dictionary for drivers namespace, editable in-place, reset on file load (read-only)
	**/
	var driver_namespace : Dynamic;
	/**
		Reference size for icon/preview renders (read-only)
	**/
	var render_icon_size : Dynamic;
	/**
		Reference size for icon/preview renders (read-only)
	**/
	var render_preview_size : Dynamic;
	/**
		String, the temp directory used by blender (read-only)
	**/
	var tempdir : Dynamic;
	/**
		Boolean, whether static override is exposed in UI or not.
	**/
	var use_static_override : Dynamic;
	/**
		Boolean, True when blender is running without a user interface (started with -b)
	**/
	var background(default, never) : Dynamic;
	/**
		Boolean, True when blender is running with –factory-startup)
	**/
	var factory_startup(default, never) : Dynamic;
	/**
		Application and addons internationalization API
	**/
	var translations(default, never) : Dynamic;
	/**
		The branch this blender instance was built from
	**/
	var build_branch(default, never) : Dynamic;
	/**
		C compiler flags
	**/
	var build_cflags(default, never) : Dynamic;
	/**
		The date of commit this blender instance was built
	**/
	var build_commit_date(default, never) : Dynamic;
	/**
		The time of commit this blender instance was built
	**/
	var build_commit_time(default, never) : Dynamic;
	/**
		C++ compiler flags
	**/
	var build_cxxflags(default, never) : Dynamic;
	/**
		The date this blender instance was built
	**/
	var build_date(default, never) : Dynamic;
	/**
		The commit hash this blender instance was built with
	**/
	var build_hash(default, never) : Dynamic;
	/**
		Binary linking flags
	**/
	var build_linkflags(default, never) : Dynamic;
	/**
		The platform this blender instance was built for
	**/
	var build_platform(default, never) : Dynamic;
	/**
		Build system used
	**/
	var build_system(default, never) : Dynamic;
	/**
		The time this blender instance was built
	**/
	var build_time(default, never) : Dynamic;
	/**
		The type of build (Release, Debug)
	**/
	var build_type(default, never) : Dynamic;
	/**
		The unix timestamp of commit this blender instance was built
	**/
	var build_commit_timestamp(default, never) : Dynamic;
	/**
		Manage custom icons
	**/
	var icons(default, never) : Dynamic;
	/**
		Manage timers
	**/
	var timers(default, never) : Dynamic;
	/**
		The location of blenders executable, useful for utilities that spawn new instances
	**/
	var binary_path(default, never) : Dynamic;
	/**
		The Blender version character (for minor releases)
	**/
	var version_char(default, never) : Dynamic;
	/**
		The release status of this build alpha/beta/rc/release
	**/
	var version_cycle(default, never) : Dynamic;
	/**
		The Blender version formatted as a string
	**/
	var version_string(default, never) : Dynamic;
	/**
		The Blender version as a tuple of 3 numbers. eg. (2, 50, 11)
	**/
	var version(default, never) : Dynamic;
	/**
		constant value bpy.app.alembic(supported=True, version=(1, 7, 8), version_string=’ 1,  7,  8’)
	**/
	var alembic(default, never) : Dynamic;
	/**
		constant value bpy.app.build_options(bullet=True, codec_avi=True, codec_ffmpeg=True, codec_sndfile=False, compositor=True, cycles=True, cycles_osl=True, freestyle=True, image_cineon=True, image_dds=True, image_hdr=True, image_openexr=True, image_openjpeg=True, image_tiff=True, input_ndof=True, audaspace=True, international=True, openal=True, sdl=True, sdl_dynload=True, jack=True, libmv=True, mod_fluid=True, mod_oceansim=True, mod_remesh=True, mod_smoke=True, collada=True, opencolorio=True, openmp=True, openvdb=True, …)
	**/
	var build_options(default, never) : Dynamic;
	/**
		constant value bpy.app.ffmpeg(supported=True, avcodec_version=(58, 18, 100), avcodec_version_string=‘58, 18, 100’, avdevice_version=(58, 3, 100), avdevice_version_string=‘58,  3, 100’, avformat_version=(58, 12, 100), avformat_version_string=‘58, 12, 100’, avutil_version=(56, 14, 100), avutil_version_string=‘56, 14, 100’, swscale_version=(5, 1, 100), swscale_version_string=’ 5,  1, 100’)
	**/
	var ffmpeg(default, never) : Dynamic;
	/**
		constant value bpy.app.handlers(frame_change_pre=[], frame_change_post=[], render_pre=[], render_post=[], render_write=[], render_stats=[], render_init=[], render_complete=[], render_cancel=[], load_pre=[], load_post=[], save_pre=[], save_post=[], undo_pre=[], undo_post=[], redo_pre=[], redo_post=[], depsgraph_update_pre=[], depsgraph_update_post=[], version_update=[&lt;function do_versions at 0x7efbed3fc7b8&gt;], persistent=&lt;class ‘persistent’&gt;)
	**/
	var handlers(default, never) : Dynamic;
	/**
		constant value bpy.app.ocio(supported=True, version=(1, 1, 0), version_string=’ 1,  1,  0’)
	**/
	var ocio(default, never) : Dynamic;
	/**
		constant value bpy.app.oiio(supported=True, version=(1, 8, 13), version_string=’ 1,  8, 13’)
	**/
	var oiio(default, never) : Dynamic;
	/**
		constant value bpy.app.opensubdiv(supported=True, version=(0, 0, 0), version_string=’ 0,  0,  0’)
	**/
	var opensubdiv(default, never) : Dynamic;
	/**
		constant value bpy.app.openvdb(supported=True, version=(5, 1, 0), version_string=’ 5,  1,  0’)
	**/
	var openvdb(default, never) : Dynamic;
	/**
		constant value bpy.app.sdl(supported=True, version=(2, 0, 4), version_string=‘2.0.4’, available=True)
	**/
	var sdl(default, never) : Dynamic;
}