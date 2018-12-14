package bpy.types.timelinemarker;
/**
	Marker for noting points in the timeline
**/
@:pythonImport("bpy.types.TimelineMarker") extern class TimelineMarker {
	/**
		Camera that becomes active on this frame
		
		Type: Object
	**/
	var camera : bpy.types.object.Object;
	/**
		The frame on which the timeline marker appears
		
		Type: int in [-inf, inf], default 0
	**/
	var frame : Int;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Marker selection state
		
		Type: boolean, default False
	**/
	var select : Bool;
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