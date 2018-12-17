package bpy.types.keyingsets;
/**
	Scene keying sets
**/
@:native("bpy.types.KeyingSets") extern class KeyingSets {
	/**
		Active Keying Set used to insert/delete keyframes
		
		Type: KeyingSet
	**/
	var active : bpy.types.keyingset.KeyingSet;
	/**
		Current Keying Set index (negative for ‘builtin’ and positive for ‘absolute’)
		
		Type: int in [-inf, inf], default 0
	**/
	var active_index : Int;
	/**
		Add a new Keying Set to Scene
		@param idname IDName, Internal identifier of Keying Set — string, (optional, never None)
		@param name Name, User visible name of Keying Set — string, (optional, never None)
		
		@returns KeyingSet
	**/
	function pyNew(idname:String, name:String):bpy.types.keyingset.KeyingSet;
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