package bpy.types.movietrackingobjects;
/**
	Collection of movie tracking objects
**/
@:pythonImport("bpy.types.MovieTrackingObjects") extern class MovieTrackingObjects {
	/**
		Active object in this tracking data object
		
		Type: MovieTrackingObject
	**/
	var active : bpy.types.movietrackingobject.MovieTrackingObject;
	/**
		Add tracking object to this movie clip
		@param name Name of new object — string, (never None)
		
		@returns MovieTrackingObject
	**/
	function new(name:String):bpy.types.movietrackingobject.MovieTrackingObject;
	/**
		Remove tracking object from this movie clip
		@param object Motion tracking object to be removed — MovieTrackingObject, (never None)
	**/
	function remove(object:bpy.types.movietrackingobject.MovieTrackingObject):Void;
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