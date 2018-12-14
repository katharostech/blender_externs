package bpy.ops.info;
/**
	Info Operators
**/
@:pythonImport("bpy.ops.info") extern class Module {
	/**
		Copy selected reports to Clipboard
	**/
	static function report_copy():Void;
	/**
		Delete selected reports
	**/
	static function report_delete():Void;
	/**
		Replay selected reports
	**/
	static function report_replay():Void;
	/**
		Update the display of reports in Blender UI (internal use)
	**/
	static function reports_display_update():Void;
	/**
		Select or deselect all reports
	**/
	static function select_all_toggle():Void;
	/**
		Toggle box selection
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool):Void;
	/**
		Select reports by index
		@param report_index Report, Index of the report — int in [0, inf], (optional)
	**/
	static function select_pick(report_index:Int):Void;
}