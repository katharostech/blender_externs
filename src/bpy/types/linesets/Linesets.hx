package bpy.types.linesets;
/**
	Line sets for associating lines and style parameters
**/
@:pythonImport("bpy.types.Linesets") extern class Linesets {
	/**
		Active line set being displayed
		
		Type: FreestyleLineSet, (readonly)
	**/
	var active(default, never) : bpy.types.freestylelineset.FreestyleLineSet;
	/**
		Index of active line set slot
		
		Type: int in [0, inf], default 0
	**/
	var active_index : Int;
	/**
		Add a line set to scene render layer Freestyle settings
		@param name New name for the line set (not unique) — string, (never None)
		
		@returns FreestyleLineSet
	**/
	function new(name:String):bpy.types.freestylelineset.FreestyleLineSet;
	/**
		Remove a line set from scene render layer Freestyle settings
		@param lineset Line set to remove — FreestyleLineSet, (never None)
	**/
	function remove(lineset:bpy.types.freestylelineset.FreestyleLineSet):Void;
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