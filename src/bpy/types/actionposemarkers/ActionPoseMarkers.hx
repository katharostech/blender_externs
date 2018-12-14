package bpy.types.actionposemarkers;
/**
	Collection of timeline markers
**/
@:pythonImport("bpy.types.ActionPoseMarkers") extern class ActionPoseMarkers {
	/**
		Active pose marker for this action
		
		Type: TimelineMarker
	**/
	var active : bpy.types.timelinemarker.TimelineMarker;
	/**
		Index of active pose marker
		
		Type: int in [0, inf], default 0
	**/
	var active_index : Int;
	/**
		Add a pose marker to the action
		@param name New name for the marker (not unique) — string, (never None)
		
		@returns TimelineMarker
	**/
	function new(name:String):bpy.types.timelinemarker.TimelineMarker;
	/**
		Remove a timeline marker
		@param marker Timeline marker to remove — TimelineMarker, (never None)
	**/
	function remove(marker:bpy.types.timelinemarker.TimelineMarker):Void;
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