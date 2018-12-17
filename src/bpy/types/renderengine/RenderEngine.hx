package bpy.types.renderengine;
@:enum abstract Enum1(String) from String to String {
	var COMBINED : String = "COMBINED";
	var AO : String = "AO";
	var SHADOW : String = "SHADOW";
	var NORMAL : String = "NORMAL";
	var UV : String = "UV";
	var ROUGHNESS : String = "ROUGHNESS";
	var EMIT : String = "EMIT";
	var ENVIRONMENT : String = "ENVIRONMENT";
	var DIFFUSE : String = "DIFFUSE";
	var GLOSSY : String = "GLOSSY";
	var TRANSMISSION : String = "TRANSMISSION";
	var SUBSURFACE : String = "SUBSURFACE";
}@:enum abstract Enum2(String) from String to String {
	var VALUE : String = "VALUE";
	var VECTOR : String = "VECTOR";
	var COLOR : String = "COLOR";
}/**
	Render engine
**/
@:native("bpy.types.RenderEngine") extern class RenderEngine {
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_label : String;
	/**
		
		
		Type: boolean, default False
	**/
	var bl_use_exclude_layers : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var bl_use_postprocess : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var bl_use_preview : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var bl_use_save_buffers : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var bl_use_shading_nodes : Bool;
	/**
		
		
		Type: boolean, default True
	**/
	var bl_use_shading_nodes_custom : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var bl_use_spherical_stereo : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var bl_use_texture_preview : Bool;
	/**
		
		
		Type: Object, (readonly)
	**/
	var camera_override(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: boolean, default False
	**/
	var is_animation : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var is_preview : Bool;
	/**
		
		
		Type: boolean array of 20 items, default (False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False, False)
	**/
	var layer_override : Array<Bool>;
	/**
		
		
		Type: RenderSettings, (readonly)
	**/
	var render(default, never) : bpy.types.rendersettings.RenderSettings;
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var resolution_x(default, never) : Int;
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var resolution_y(default, never) : Int;
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var tile_x : Int;
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var tile_y : Int;
	/**
		
		
		Type: boolean, default False
	**/
	var use_highlight_tiles : Bool;
	/**
		Export scene data for render
	**/
	function update(data:Dynamic, depsgraph:Dynamic):Void;
	/**
		Bake passes
		@param pass_type Pass, Pass to bake — enum in ['COMBINED', 'AO', 'SHADOW', 'NORMAL', 'UV', 'ROUGHNESS', 'EMIT', 'ENVIRONMENT', 'DIFFUSE', 'GLOSSY', 'TRANSMISSION', 'SUBSURFACE']
		@param pass_filter Pass Filter, Filter to combined, diffuse, glossy, transmission and subsurface passes — int in [0, inf]
		@param object_id Object Id, Id of the current object being baked in relation to the others — int in [0, inf]
		@param num_pixels Number of Pixels, Size of the baking batch — int in [0, inf]
		@param depth Pixels depth, Number of channels — int in [0, inf]
	**/
	function bake(pass_type:bpy.types.renderengine.RenderEngine.Enum1, pass_filter:Int, object_id:Int, num_pixels:Int, depth:Int):Void;
	/**
		Update on data changes for viewport render
	**/
	function view_update(context:Dynamic):Void;
	/**
		Draw viewport render
	**/
	function view_draw(context:Dynamic):Void;
	/**
		Compile shader script node
	**/
	function update_script_node(node:Dynamic):Void;
	/**
		Update the render passes that will be generated
	**/
	function update_render_passes(scene:Dynamic, renderlayer:Dynamic):Void;
	/**
		Request redraw for viewport rendering
	**/
	function tag_redraw():Void;
	/**
		Request update call for viewport rendering
	**/
	function tag_update():Void;
	/**
		Create render result to write linear floating point render layers and passes
		@param x X — int in [0, inf]
		@param y Y — int in [0, inf]
		@param w Width — int in [0, inf]
		@param h Height — int in [0, inf]
		@param layer Layer, Single layer to get render result for — string, (optional, never None)
		@param view View, Single view to get render result for — string, (optional, never None)
		
		@returns RenderResult
	**/
	function begin_result(x:Int, y:Int, w:Int, h:Int, layer:String, view:String):bpy.types.renderresult.RenderResult;
	/**
		Signal that pixels have been updated and can be redrawn in the user interface
		@param result Result — RenderResult
	**/
	function update_result(result:bpy.types.renderresult.RenderResult):Void;
	/**
		All pixels in the render result have been set and are final
		@param result Result — RenderResult
		@param cancel Cancel, Don’t mark tile as done, don’t merge results unless forced — boolean, (optional)
		@param highlight Highlight, Don’t mark tile as done yet — boolean, (optional)
		@param do_merge_results Merge Results, Merge results even if cancel=true — boolean, (optional)
	**/
	function end_result(result:bpy.types.renderresult.RenderResult, cancel:Bool, highlight:Bool, do_merge_results:Bool):Void;
	/**
		Add a pass to the render layer
		@param name Name, Name of the Pass, without view or channel tag — string, (never None)
		@param channels Channels — int in [0, inf]
		@param chan_id Channel IDs, Channel names, one character per channel — string, (never None)
		@param layer Layer, Single layer to add render pass to — string, (optional, never None)
	**/
	function add_pass(name:String, channels:Int, chan_id:String, layer:String):Void;
	/**
		Get final result for non-pixel operations
		
		@returns RenderResult
	**/
	function get_result():bpy.types.renderresult.RenderResult;
	/**
		Test if the render operation should been canceled, this is a fast call that should be used regularly for responsiveness
		
		@returns boolean
	**/
	function test_break():Bool;
	/**
		active_view_get
		
		@returns string, (never None)
	**/
	function active_view_get():String;
	/**
		active_view_set
		@param view View, Single view to set as active — string, (never None)
	**/
	function active_view_set(view:String):Void;
	/**
		camera_shift_x
		@param use_spherical_stereo Spherical Stereo — boolean, (optional)
		
		@returns float in [0, inf]
	**/
	function camera_shift_x(use_spherical_stereo:Bool):Float;
	/**
		camera_model_matrix
		@param use_spherical_stereo Spherical Stereo — boolean, (optional)
		
		@returns float multi-dimensional array of 4 * 4 items in [-inf, inf]
	**/
	function camera_model_matrix(use_spherical_stereo:Bool):Array<Float>;
	/**
		use_spherical_stereo
		
		@returns boolean
	**/
	function use_spherical_stereo(camera:Dynamic):Bool;
	/**
		Update and signal to redraw render status text
		@param stats Stats — string, (never None)
		@param info Info — string, (never None)
	**/
	function update_stats(stats:String, info:String):Void;
	/**
		Evaluate scene at a different frame (for motion blur)
		@param frame Frame — int in [-inf, inf]
		@param subframe Subframe — float in [0, 1]
	**/
	function frame_set(frame:Int, subframe:Float):Void;
	/**
		Update progress percentage of render
		@param progress Percentage of render that’s done — float in [0, 1]
	**/
	function update_progress(progress:Float):Void;
	/**
		Update memory usage statistics
		@param memory_used Current memory usage in megabytes — float in [0, inf], (optional)
		@param memory_peak Peak memory usage in megabytes — float in [0, inf], (optional)
	**/
	function update_memory_stats(memory_used:Float, memory_peak:Float):Void;
	/**
		Report info, warning or error messages
		@param type Type — enum set in {'DEBUG', 'INFO', 'OPERATOR', 'PROPERTY', 'WARNING', 'ERROR', 'ERROR_INVALID_INPUT', 'ERROR_INVALID_CONTEXT', 'ERROR_OUT_OF_MEMORY'}
		@param message Report Message — string, (never None)
	**/
	function report(type:Dynamic, message:String):Void;
	/**
		Set error message displaying after the render is finished
		@param message Report Message — string, (never None)
	**/
	function error_set(message:String):Void;
	/**
		Bind GLSL fragment shader that converts linear colors to display space colors using scene color management settings
	**/
	function bind_display_space_shader(scene:Dynamic):Void;
	/**
		Unbind GLSL display space shader, must always be called after binding the shader
	**/
	function unbind_display_space_shader():Void;
	/**
		Test if GLSL display space shader is supported for the combination of graphics card and scene settings
		
		@returns boolean
	**/
	function support_display_space_shader(scene:Dynamic):Bool;
	/**
		Free Blender side memory of render engine
		
		@returns int in [1, 8]
	**/
	function get_preview_pixel_size(scene:Dynamic):Int;
	/**
		free_blender_memory
	**/
	function free_blender_memory():Void;
	/**
		Register a render pass that will be part of the render with the current settings
		@param name Name — string, (never None)
		@param channels Channels — int in [1, 8]
		@param chanid Channel IDs — string, (never None)
		@param type Type — enum in ['VALUE', 'VECTOR', 'COLOR']
	**/
	function register_pass(name:String, channels:Int, chanid:String, type:bpy.types.renderengine.RenderEngine.Enum2):Void;
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