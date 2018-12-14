package bpy.ops.marker;
/**
	Marker Operators
**/
@:pythonImport("bpy.ops.marker") extern class Module {
	/**
		Add a new time marker
	**/
	static function add():Void;
	/**
		Bind the selected camera to a marker on the current frame
	**/
	static function camera_bind():Void;
	/**
		Delete selected time marker(s)
	**/
	static function delete():Void;
	/**
		Duplicate selected time marker(s)
		@param frames Frames — int in [-inf, inf], (optional)
	**/
	static function duplicate(frames:Int):Void;
	/**
		Copy selected markers to another scene
		@param scene Scene — enum in [], (optional)
	**/
	static function make_links_scene(scene:bpy.ops.marker.Marker.Enum1):Void;
	/**
		Move selected time marker(s)
		@param frames Frames — int in [-inf, inf], (optional)
	**/
	static function move(frames:Int):Void;
	/**
		Rename first selected time marker
		@param name Name, New name for marker — string, (optional, never None)
	**/
	static function rename(name:String):Void;
	/**
		Select time marker(s)
		@param extend Extend, Extend the selection — boolean, (optional)
		@param camera Camera, Select the camera — boolean, (optional)
	**/
	static function select(extend:Bool, camera:Bool):Void;
	/**
		Change selection of all time markers
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.marker.Marker.Enum2):Void;
	/**
		Select all time markers using box selection
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool):Void;
}