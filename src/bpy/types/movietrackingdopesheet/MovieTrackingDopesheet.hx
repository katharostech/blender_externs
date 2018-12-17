package bpy.types.movietrackingdopesheet;
@:enum abstract Enum1(String) from String to String {
	var NAME : String = "NAME";
	var LONGEST : String = "LONGEST";
	var TOTAL : String = "TOTAL";
	var AVERAGE_ERROR : String = "AVERAGE_ERROR";
}/**
	Match-moving dopesheet data
**/
@:native("bpy.types.MovieTrackingDopesheet") extern class MovieTrackingDopesheet {
	/**
		Include channels from objects/bone that aren’t visible
		
		Type: boolean, default False
	**/
	var show_hidden : Bool;
	/**
		Only include channels relating to selected objects and data
		
		Type: boolean, default False
	**/
	var show_only_selected : Bool;
	/**
		Method to be used to sort channels in dopesheet view
		
		Type: enum in [‘NAME’, ‘LONGEST’, ‘TOTAL’, ‘AVERAGE_ERROR’], default ‘NAME’
	**/
	var sort_method : bpy.types.movietrackingdopesheet.MovieTrackingDopesheet.Enum1;
	/**
		Invert sort order of dopesheet channels
		
		Type: boolean, default False
	**/
	var use_invert_sort : Bool;
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