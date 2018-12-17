package bpy.types.facemaps;
/**
	Collection of face maps
**/
@:native("bpy.types.FaceMaps") extern class FaceMaps {
	/**
		Face maps of the object
		
		Type: FaceMap, (readonly)
	**/
	var active(default, never) : bpy.types.facemap.FaceMap;
	/**
		Active index in face map array
		
		Type: int in [0, 32767], default 0
	**/
	var active_index : Int;
	/**
		Add face map to object
		@param name face map name — string, (optional, never None)
		
		@returns FaceMap
	**/
	function pyNew(name:String):bpy.types.facemap.FaceMap;
	/**
		Delete vertex group from object
		@param group Face map to remove — FaceMap, (never None)
	**/
	function remove(group:bpy.types.facemap.FaceMap):Void;
	/**
		Delete all vertex groups from object
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