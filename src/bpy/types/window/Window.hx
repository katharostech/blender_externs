package bpy.types.window;
@:enum abstract Enum1(String) from String to String {
	var DEFAULT : String = "DEFAULT";
	var NONE : String = "NONE";
	var WAIT : String = "WAIT";
	var CROSSHAIR : String = "CROSSHAIR";
	var MOVE_X : String = "MOVE_X";
	var MOVE_Y : String = "MOVE_Y";
	var KNIFE : String = "KNIFE";
	var TEXT : String = "TEXT";
	var PAINT_BRUSH : String = "PAINT_BRUSH";
	var HAND : String = "HAND";
	var SCROLL_X : String = "SCROLL_X";
	var SCROLL_Y : String = "SCROLL_Y";
	var SCROLL_XY : String = "SCROLL_XY";
	var EYEDROPPER : String = "EYEDROPPER";
}@:enum abstract Enum2(String) from String to String {
	var DEFAULT : String = "DEFAULT";
	var NONE : String = "NONE";
	var WAIT : String = "WAIT";
	var CROSSHAIR : String = "CROSSHAIR";
	var MOVE_X : String = "MOVE_X";
	var MOVE_Y : String = "MOVE_Y";
	var KNIFE : String = "KNIFE";
	var TEXT : String = "TEXT";
	var PAINT_BRUSH : String = "PAINT_BRUSH";
	var HAND : String = "HAND";
	var SCROLL_X : String = "SCROLL_X";
	var SCROLL_Y : String = "SCROLL_Y";
	var SCROLL_XY : String = "SCROLL_XY";
	var EYEDROPPER : String = "EYEDROPPER";
}/**
	Open window
**/
@:pythonImport("bpy.types.Window") extern class Window {
	/**
		Window height
		
		Type: int in [0, 32767], default 0, (readonly)
	**/
	var height(default, never) : Int;
	/**
		Active workspace and scene follow this window
		
		Type: Window, (readonly)
	**/
	var parent(default, never) : bpy.types.window.Window;
	/**
		Active scene to be edited in the window
		
		Type: Scene, (never None)
	**/
	var scene : bpy.types.scene.Scene;
	/**
		Active workspace screen showing in the window
		
		Type: Screen, (never None)
	**/
	var screen : bpy.types.screen.Screen;
	/**
		Settings for stereo 3d display
		
		Type: Stereo3dDisplay, (readonly, never None)
	**/
	var stereo_3d_display(default, never) : bpy.types.stereo3ddisplay.Stereo3dDisplay;
	/**
		The active workspace view layer showing in the window
		
		Type: ViewLayer, (never None)
	**/
	var view_layer : bpy.types.viewlayer.ViewLayer;
	/**
		Window width
		
		Type: int in [0, 32767], default 0, (readonly)
	**/
	var width(default, never) : Int;
	/**
		Active workspace showing in the window
		
		Type: WorkSpace, (never None)
	**/
	var workspace : bpy.types.workspace.WorkSpace;
	/**
		Horizontal location of the window
		
		Type: int in [-32768, 32767], default 0, (readonly)
	**/
	var x(default, never) : Int;
	/**
		Vertical location of the window
		
		Type: int in [-32768, 32767], default 0, (readonly)
	**/
	var y(default, never) : Int;
	/**
		Set the cursor position
	**/
	function cursor_warp():Void;
	/**
		Set the cursor
		@param cursor cursor — enum in ['DEFAULT', 'NONE', 'WAIT', 'CROSSHAIR', 'MOVE_X', 'MOVE_Y', 'KNIFE', 'TEXT', 'PAINT_BRUSH', 'HAND', 'SCROLL_X', 'SCROLL_Y', 'SCROLL_XY', 'EYEDROPPER']
	**/
	function cursor_set(cursor:bpy.types.window.Window.Enum1):Void;
	/**
		Restore the previous cursor after calling cursor_modal_set
		@param cursor cursor — enum in ['DEFAULT', 'NONE', 'WAIT', 'CROSSHAIR', 'MOVE_X', 'MOVE_Y', 'KNIFE', 'TEXT', 'PAINT_BRUSH', 'HAND', 'SCROLL_X', 'SCROLL_Y', 'SCROLL_XY', 'EYEDROPPER']
	**/
	function cursor_modal_set(cursor:bpy.types.window.Window.Enum2):Void;
	/**
		cursor_modal_restore
	**/
	function cursor_modal_restore():Void;
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