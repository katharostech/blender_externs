package bpy.types.filebrowserfsmenuentry;
/**
	File Select Parameters
**/
@:native("bpy.types.FileBrowserFSMenuEntry") extern class FileBrowserFSMenuEntry {
	/**
		Whether this path is currently reachable
		
		Type: boolean, default False, (readonly)
	**/
	var is_valid(default, never) : Bool;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var path : String;
	/**
		Whether this path is saved in bookmarks, or generated from OS
		
		Type: boolean, default False, (readonly)
	**/
	var use_save(default, never) : Bool;
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