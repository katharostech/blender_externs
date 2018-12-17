package bpy.types.timelinemarkers;
/**
	Collection of timeline markers
**/
@:native("bpy.types.TimelineMarkers") extern class TimelineMarkers {
	/**
		Add a keyframe to the curve
		@param name New name for the marker (not unique) — string, (never None)
		@param frame The frame for the new marker — int in [-1048574, 1048574], (optional)
		
		@returns TimelineMarker
	**/
	function pyNew(name:String, frame:Int):bpy.types.timelinemarker.TimelineMarker;
	/**
		Remove a timeline marker
		@param marker Timeline marker to remove — TimelineMarker, (never None)
	**/
	function remove(marker:bpy.types.timelinemarker.TimelineMarker):Void;
	/**
		Remove all timeline markers
	**/
	function clear():Void;
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