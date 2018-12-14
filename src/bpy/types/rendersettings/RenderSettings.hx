package bpy.types.rendersettings;
@:enum abstract Enum1(String) from String to String {
	var SKY : String = "SKY";
	var TRANSPARENT : String = "TRANSPARENT";
}@:enum abstract Enum2(String) from String to String {
	var 5 : String = "5";
	var 8 : String = "8";
	var 11 : String = "11";
	var 16 : String = "16";
}@:enum abstract Enum3(String) from String to String {
	var NORMALS : String = "NORMALS";
	var DISPLACEMENT : String = "DISPLACEMENT";
}@:enum abstract Enum4(String) from String to String {
	var SCREEN : String = "SCREEN";
	var AREA : String = "AREA";
	var WINDOW : String = "WINDOW";
	var NONE : String = "NONE";
}@:enum abstract Enum5(String) from String to String {
	var BLENDER_EEVEE : String = "BLENDER_EEVEE";
}@:enum abstract Enum6(String) from String to String {
	var STRAND : String = "STRAND";
	var STRIP : String = "STRIP";
}@:enum abstract Enum7(String) from String to String {
	var ABSOLUTE : String = "ABSOLUTE";
	var RELATIVE : String = "RELATIVE";
}@:enum abstract Enum8(String) from String to String {
	var AUTO : String = "AUTO";
	var 1 : String = "1";
	var 2 : String = "2";
	var 4 : String = "4";
	var 8 : String = "8";
}@:enum abstract Enum9(String) from String to String {
	var WIREFRAME : String = "WIREFRAME";
	var SOLID : String = "SOLID";
	var MATERIAL : String = "MATERIAL";
	var RENDERED : String = "RENDERED";
}@:enum abstract Enum10(String) from String to String {
	var AUTO : String = "AUTO";
	var FIXED : String = "FIXED";
}@:enum abstract Enum11(String) from String to String {
	var STEREO_3D : String = "STEREO_3D";
	var MULTIVIEW : String = "MULTIVIEW";
}/**
	Rendering settings for a Scene data-block
**/
@:pythonImport("bpy.types.RenderSettings") extern class RenderSettings {
	/**
		Representation of alpha information in the RGBA pixels
		
		Type: enum in [‘SKY’, ‘TRANSPARENT’], default ‘SKY’
	**/
	var alpha_mode : bpy.types.rendersettings.RenderSettings.Enum1;
	/**
		Amount of anti-aliasing samples per pixel
		
		Type: enum in [‘5’, ‘8’, ‘11’, ‘16’], default ‘5’
	**/
	var antialiasing_samples : bpy.types.rendersettings.RenderSettings.Enum2;
	/**
		
		
		Type: BakeSettings, (readonly, never None)
	**/
	var bake(default, never) : bpy.types.bakesettings.BakeSettings;
	/**
		Bias towards faces further away from the object (in blender units)
		
		Type: float in [0, 1000], default 0.0
	**/
	var bake_bias : Float;
	/**
		Extends the baked result as a post process filter
		
		Type: int in [0, 64], default 0
	**/
	var bake_margin : Int;
	/**
		Number of samples used for ambient occlusion baking from multires
		
		Type: int in [64, 1024], default 256
	**/
	var bake_samples : Int;
	/**
		Choose shading information to bake into the image
		
		Type: enum in [‘NORMALS’, ‘DISPLACEMENT’], default ‘NORMALS’
	**/
	var bake_type : bpy.types.rendersettings.RenderSettings.Enum3;
	/**
		Instead of automatically normalizing to 0..1, apply a user scale to the derivative map
		
		Type: float in [0, 1000], default 0.0
	**/
	var bake_user_scale : Float;
	/**
		Maximum X value for the render border
		
		Type: float in [0, 1], default 0.0
	**/
	var border_max_x : Float;
	/**
		Maximum Y value for the render border
		
		Type: float in [0, 1], default 0.0
	**/
	var border_max_y : Float;
	/**
		Minimum X value for the render border
		
		Type: float in [0, 1], default 0.0
	**/
	var border_min_x : Float;
	/**
		Minimum Y value for the render border
		
		Type: float in [0, 1], default 0.0
	**/
	var border_min_y : Float;
	/**
		Select where rendered images will be displayed
		
		Type: enum in [‘SCREEN’, ‘AREA’, ‘WINDOW’, ‘NONE’], default ‘SCREEN’
	**/
	var display_mode : bpy.types.rendersettings.RenderSettings.Enum4;
	/**
		Amount of dithering noise added to the rendered image to break up banding
		
		Type: float in [0, 2], default 0.0
	**/
	var dither_intensity : Float;
	/**
		Engine to use for rendering
		
		Type: enum in [‘BLENDER_EEVEE’], default ‘BLENDER_EEVEE’
	**/
	var engine : bpy.types.rendersettings.RenderSettings.Enum5;
	/**
		FFmpeg related settings for the scene
		
		Type: FFmpegSettings, (readonly)
	**/
	var ffmpeg(default, never) : bpy.types.ffmpegsettings.FFmpegSettings;
	/**
		The file extension used for saving renders
		
		Type: string, default “”, (readonly, never None)
	**/
	var file_extension(default, never) : String;
	/**
		Directory/name to save animations, # characters defines the position and length of frame numbers
		
		Type: string, default “”, (never None)
	**/
	var filepath : String;
	/**
		Width over which the reconstruction filter combines samples
		
		Type: float in [0, 500], default 0.0
	**/
	var filter_size : Float;
	/**
		Framerate, expressed in frames per second
		
		Type: int in [1, 32767], default 0
	**/
	var fps : Int;
	/**
		Framerate base
		
		Type: float in [1e-05, 1e+06], default 0.0
	**/
	var fps_base : Float;
	/**
		How many frames the Map Old will last
		
		Type: int in [1, 900], default 0
	**/
	var frame_map_new : Int;
	/**
		Old mapping value in frames
		
		Type: int in [1, 900], default 0
	**/
	var frame_map_old : Int;
	/**
		Additional subdivision along the hair
		
		Type: int in [0, 3], default 0
	**/
	var hair_subdiv : Int;
	/**
		Hair shape type
		
		Type: enum in [‘STRAND’, ‘STRIP’], default ‘STRAND’
	**/
	var hair_type : bpy.types.rendersettings.RenderSettings.Enum6;
	/**
		More than one rendering engine is available
		
		Type: boolean, default False, (readonly)
	**/
	var has_multiple_engines(default, never) : Bool;
	/**
		
		
		Type: ImageFormatSettings, (readonly, never None)
	**/
	var image_settings(default, never) : bpy.types.imageformatsettings.ImageFormatSettings;
	/**
		When true the format is a movie
		
		Type: boolean, default False, (readonly)
	**/
	var is_movie_format(default, never) : Bool;
	/**
		Line thickness in pixels
		
		Type: float in [0, 10000], default 0.0
	**/
	var line_thickness : Float;
	/**
		Line thickness mode for Freestyle line drawing
		
		Type: enum in [‘ABSOLUTE’, ‘RELATIVE’], default ‘ABSOLUTE’
	**/
	var line_thickness_mode : bpy.types.rendersettings.RenderSettings.Enum7;
	/**
		Time taken in frames between shutter open and close
		
		Type: float in [0, inf], default 0.0
	**/
	var motion_blur_shutter : Float;
	/**
		Curve defining the shutter’s openness over time
		
		Type: CurveMapping, (readonly)
	**/
	var motion_blur_shutter_curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Horizontal aspect ratio - for anamorphic or non-square pixel output
		
		Type: float in [1, 200], default 0.0
	**/
	var pixel_aspect_x : Float;
	/**
		Vertical aspect ratio - for anamorphic or non-square pixel output
		
		Type: float in [1, 200], default 0.0
	**/
	var pixel_aspect_y : Float;
	/**
		Pixel size for viewport rendering
		
		Type: enum in [‘AUTO’, ‘1’, ‘2’, ‘4’, ‘8’], default ‘AUTO’
	**/
	var preview_pixel_size : bpy.types.rendersettings.RenderSettings.Enum8;
	/**
		Resolution to start rendering preview at, progressively increasing it to the full viewport size
		
		Type: int in [8, 16384], default 64
	**/
	var preview_start_resolution : Int;
	/**
		Percentage scale for render resolution
		
		Type: int in [1, 32767], default 0
	**/
	var resolution_percentage : Int;
	/**
		Number of horizontal pixels in the rendered image
		
		Type: int in [4, 65536], default 0
	**/
	var resolution_x : Int;
	/**
		Number of vertical pixels in the rendered image
		
		Type: int in [4, 65536], default 0
	**/
	var resolution_y : Int;
	/**
		Method to draw in the sequencer view
		
		Type: enum in [‘WIREFRAME’, ‘SOLID’, ‘MATERIAL’, ‘RENDERED’], default ‘WIREFRAME’
	**/
	var sequencer_gl_preview : bpy.types.rendersettings.RenderSettings.Enum9;
	/**
		Global child particles percentage
		
		Type: float in [0, 1], default 0.0
	**/
	var simplify_child_particles : Float;
	/**
		Global child particles percentage during rendering
		
		Type: float in [0, 1], default 0.0
	**/
	var simplify_child_particles_render : Float;
	/**
		Simplify Grease Pencil drawing
		
		Type: boolean, default False
	**/
	var simplify_gpencil : Bool;
	/**
		Do not display blend layers
		
		Type: boolean, default False
	**/
	var simplify_gpencil_blend : Bool;
	/**
		Simplify Grease Pencil only during animation playback
		
		Type: boolean, default False
	**/
	var simplify_gpencil_onplay : Bool;
	/**
		Disable external lines of fill strokes
		
		Type: boolean, default False
	**/
	var simplify_gpencil_remove_lines : Bool;
	/**
		Do not apply shader fx
		
		Type: boolean, default False
	**/
	var simplify_gpencil_shader_fx : Bool;
	/**
		Disable fill strokes in the viewport
		
		Type: boolean, default False
	**/
	var simplify_gpencil_view_fill : Bool;
	/**
		Do not apply modifiers in the viewport
		
		Type: boolean, default False
	**/
	var simplify_gpencil_view_modifier : Bool;
	/**
		Global maximum subdivision level
		
		Type: int in [0, 32767], default 0
	**/
	var simplify_subdivision : Int;
	/**
		Global maximum subdivision level during rendering
		
		Type: int in [0, 32767], default 0
	**/
	var simplify_subdivision_render : Int;
	/**
		Color to use behind stamp text
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var stamp_background : Array<Float>;
	/**
		Size of the font used when rendering stamp text
		
		Type: int in [8, 64], default 0
	**/
	var stamp_font_size : Int;
	/**
		Color to use for stamp text
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var stamp_foreground : Array<Float>;
	/**
		Custom text to appear in the stamp note
		
		Type: string, default “”, (never None)
	**/
	var stamp_note_text : String;
	/**
		
		
		Type: bpy_prop_collection of SceneRenderView, (readonly)
	**/
	var stereo_views(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Number of CPU threads to use simultaneously while rendering (for multi-core/CPU systems)
		
		Type: int in [1, 1024], default 0
	**/
	var threads : Int;
	/**
		Determine the amount of render threads used
		
		Type: enum in [‘AUTO’, ‘FIXED’], default ‘AUTO’
	**/
	var threads_mode : bpy.types.rendersettings.RenderSettings.Enum10;
	/**
		Horizontal tile size to use while rendering
		
		Type: int in [8, 65536], default 0
	**/
	var tile_x : Int;
	/**
		Vertical tile size to use while rendering
		
		Type: int in [8, 65536], default 0
	**/
	var tile_y : Int;
	/**
		Render and combine multiple samples per pixel to prevent jagged edges
		
		Type: boolean, default False
	**/
	var use_antialiasing : Bool;
	/**
		Clear Images before baking
		
		Type: boolean, default False
	**/
	var use_bake_clear : Bool;
	/**
		Calculate heights against unsubdivided low resolution mesh
		
		Type: boolean, default False
	**/
	var use_bake_lores_mesh : Bool;
	/**
		Bake directly from multires object
		
		Type: boolean, default False
	**/
	var use_bake_multires : Bool;
	/**
		Bake shading on the surface of selected objects to the active object
		
		Type: boolean, default False
	**/
	var use_bake_selected_to_active : Bool;
	/**
		Use a user scale for the derivative map
		
		Type: boolean, default False
	**/
	var use_bake_user_scale : Bool;
	/**
		Render a user-defined border region, within the frame size
		
		Type: boolean, default False
	**/
	var use_border : Bool;
	/**
		Process the render result through the compositing pipeline, if compositing nodes are enabled
		
		Type: boolean, default False
	**/
	var use_compositing : Bool;
	/**
		Crop the rendered frame to the defined border size
		
		Type: boolean, default False
	**/
	var use_crop_to_border : Bool;
	/**
		Add the file format extensions to the rendered file name (eg: filename + .jpg)
		
		Type: boolean, default False
	**/
	var use_file_extension : Bool;
	/**
		Draw stylized strokes using Freestyle
		
		Type: boolean, default False
	**/
	var use_freestyle : Bool;
	/**
		Save for every anti-aliasing sample the entire RenderLayer results (this solves anti-aliasing issues with compositing)
		
		Type: boolean, default False
	**/
	var use_full_sample : Bool;
	/**
		Lock interface during rendering in favor of giving more memory to the renderer
		
		Type: boolean, default False
	**/
	var use_lock_interface : Bool;
	/**
		Use multi-sampled 3D scene motion blur
		
		Type: boolean, default False
	**/
	var use_motion_blur : Bool;
	/**
		Use multiple views in the scene
		
		Type: boolean, default False
	**/
	var use_multiview : Bool;
	/**
		Overwrite existing files while rendering
		
		Type: boolean, default False
	**/
	var use_overwrite : Bool;
	/**
		Keep render data around for faster re-renders
		
		Type: boolean, default False
	**/
	var use_persistent_data : Bool;
	/**
		Create empty placeholder files while rendering frames (similar to Unix ‘touch’)
		
		Type: boolean, default False
	**/
	var use_placeholder : Bool;
	/**
		Save render cache to EXR files (useful for heavy compositing, Note: affects indirectly rendered scenes)
		
		Type: boolean, default False
	**/
	var use_render_cache : Bool;
	/**
		Save tiles for all RenderLayers and SceneNodes to files in the temp directory (saves memory, required for Full Sample)
		
		Type: boolean, default False
	**/
	var use_save_buffers : Bool;
	/**
		Process the render (and composited) result through the video sequence editor pipeline, if sequencer strips exist
		
		Type: boolean, default False
	**/
	var use_sequencer : Bool;
	/**
		Use depth of field using the values from scene strip active camera
		
		Type: boolean, default False
	**/
	var use_sequencer_gl_dof : Bool;
	/**
		Display face-assigned textures in solid draw method
		
		Type: boolean, default False
	**/
	var use_sequencer_gl_textured_solid : Bool;
	/**
		Enable simplification of scene for quicker preview renders
		
		Type: boolean, default False
	**/
	var use_simplify : Bool;
	/**
		Only render the active layer. Only affects rendering from the interface, ignored for rendering from command line
		
		Type: boolean, default False
	**/
	var use_single_layer : Bool;
	/**
		Active render engine supports spherical stereo rendering
		
		Type: boolean, default False, (readonly)
	**/
	var use_spherical_stereo(default, never) : Bool;
	/**
		Render the stamp info text in the rendered image
		
		Type: boolean, default False
	**/
	var use_stamp : Bool;
	/**
		Include the name of the active camera in image metadata
		
		Type: boolean, default False
	**/
	var use_stamp_camera : Bool;
	/**
		Include the current date in image/video metadata
		
		Type: boolean, default False
	**/
	var use_stamp_date : Bool;
	/**
		Include the .blend filename in image/video metadata
		
		Type: boolean, default False
	**/
	var use_stamp_filename : Bool;
	/**
		Include the frame number in image metadata
		
		Type: boolean, default False
	**/
	var use_stamp_frame : Bool;
	/**
		Include the rendered frame range in image/video metadata
		
		Type: boolean, default False
	**/
	var use_stamp_frame_range : Bool;
	/**
		Display stamp labels (“Camera” in front of camera name, etc.)
		
		Type: boolean, default False
	**/
	var use_stamp_labels : Bool;
	/**
		Include the active camera’s lens in image metadata
		
		Type: boolean, default False
	**/
	var use_stamp_lens : Bool;
	/**
		Include the name of the last marker in image metadata
		
		Type: boolean, default False
	**/
	var use_stamp_marker : Bool;
	/**
		Include the peak memory usage in image metadata
		
		Type: boolean, default False
	**/
	var use_stamp_memory : Bool;
	/**
		Include a custom note in image/video metadata
		
		Type: boolean, default False
	**/
	var use_stamp_note : Bool;
	/**
		Include the render time in image metadata
		
		Type: boolean, default False
	**/
	var use_stamp_render_time : Bool;
	/**
		Include the name of the active scene in image/video metadata
		
		Type: boolean, default False
	**/
	var use_stamp_scene : Bool;
	/**
		Include the name of the foreground sequence strip in image metadata
		
		Type: boolean, default False
	**/
	var use_stamp_sequencer_strip : Bool;
	/**
		Use metadata from the strips in the sequencer
		
		Type: boolean, default False
	**/
	var use_stamp_strip_meta : Bool;
	/**
		Include the rendered frame timecode as HH:MM:SS.FF in image metadata
		
		Type: boolean, default False
	**/
	var use_stamp_time : Bool;
	/**
		
		
		Type: RenderViews bpy_prop_collection of SceneRenderView, (readonly)
	**/
	var views(default, never) : bpy.types.renderviews.RenderViews;
	/**
		
		
		Type: enum in [‘STEREO_3D’, ‘MULTIVIEW’], default ‘STEREO_3D’
	**/
	var views_format : bpy.types.rendersettings.RenderSettings.Enum11;
	/**
		Return the absolute path to the filename to be written for a given frame
		@param frame Frame number to use, if unset the current frame will be used — int in [-inf, inf], (optional)
		@param preview Preview, Use preview range — boolean, (optional)
		@param view View, The name of the view to use to replace the “%” chars — string, (optional, never None)
		
		@returns string, (never None)
	**/
	function frame_path(frame:Int, preview:Bool, view:String):String;
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