package bpy.ops.render;
/**
	Render Operators
**/
@:pythonImport("bpy.ops.render") extern class Module {
	/**
		Add an Integrator Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function cycles_integrator_preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
	/**
		Add a Sampling Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function cycles_sampling_preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
	/**
		Take a snapshot of the active viewport
		@param animation Animation, Render files from the animation range of this scene — boolean, (optional)
		@param sequencer Sequencer, Render using the sequencer’s OpenGL display — boolean, (optional)
		@param write_still Write Image, Save rendered the image to the output path (used only when animation is disabled) — boolean, (optional)
		@param view_context View Context, Use the current 3D view for rendering, else use scene settings — boolean, (optional)
	**/
	static function opengl(animation:Bool, sequencer:Bool, write_still:Bool, view_context:Bool):Void;
	/**
		Play back rendered frames/movies using an external player
	**/
	static function play_rendered_anim():Void;
	/**
		Add or remove a Render Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
	/**
		Render active scene
		@param animation Animation, Render files from the animation range of this scene — boolean, (optional)
		@param write_still Write Image, Save rendered the image to the output path (used only when animation is disabled) — boolean, (optional)
		@param use_viewport Use 3D Viewport, When inside a 3D viewport, use layers and camera of the viewport — boolean, (optional)
		@param layer Render Layer, Single render layer to re-render (used only when animation is disabled) — string, (optional, never None)
		@param scene Scene, Scene to render, current scene if not specified — string, (optional, never None)
	**/
	static function render(animation:Bool, write_still:Bool, use_viewport:Bool, layer:String, scene:String):Void;
	/**
		Set shutter curve
		@param shape Mode — enum in ['SHARP', 'SMOOTH', 'MAX', 'LINE', 'ROUND', 'ROOT'], (optional)
	**/
	static function shutter_curve_preset(shape:bpy.ops.render.Render.Enum1):Void;
	/**
		Cancel show render view
	**/
	static function view_cancel():Void;
	/**
		Toggle show render view
	**/
	static function view_show():Void;
}