package bpy.types.spacefilebrowser;
/**
	File browser space data
**/
@:native("bpy.types.SpaceFileBrowser") extern class SpaceFileBrowser {
	/**
		
		
		Type: Operator, (readonly)
	**/
	var active_operator(default, never) : bpy.types.operator.Operator;
	/**
		User’s bookmarks
		
		Type: bpy_prop_collection of FileBrowserFSMenuEntry, (readonly)
	**/
	var bookmarks(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Index of active bookmark (-1 if none)
		
		Type: int in [-32768, 32767], default -1
	**/
	var bookmarks_active : Int;
	/**
		
		
		Type: Operator, (readonly)
	**/
	var operator(default, never) : bpy.types.operator.Operator;
	/**
		Parameters and Settings for the Filebrowser
		
		Type: FileSelectParams, (readonly)
	**/
	var params(default, never) : bpy.types.fileselectparams.FileSelectParams;
	/**
		
		
		Type: bpy_prop_collection of FileBrowserFSMenuEntry, (readonly)
	**/
	var recent_folders(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Index of active recent folder (-1 if none)
		
		Type: int in [-32768, 32767], default -1
	**/
	var recent_folders_active : Int;
	/**
		System’s bookmarks
		
		Type: bpy_prop_collection of FileBrowserFSMenuEntry, (readonly)
	**/
	var system_bookmarks(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Index of active system bookmark (-1 if none)
		
		Type: int in [-32768, 32767], default -1
	**/
	var system_bookmarks_active : Int;
	/**
		System’s folders (usually root, available hard drives, etc)
		
		Type: bpy_prop_collection of FileBrowserFSMenuEntry, (readonly)
	**/
	var system_folders(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Index of active system folder (-1 if none)
		
		Type: int in [-32768, 32767], default -1
	**/
	var system_folders_active : Int;
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
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function draw_handler_add():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function draw_handler_remove():Void;
	/**
		Space data type
		
		Type: enum in [‘EMPTY’, ‘VIEW_3D’, ‘IMAGE_EDITOR’, ‘NODE_EDITOR’, ‘SEQUENCE_EDITOR’, ‘CLIP_EDITOR’, ‘DOPESHEET_EDITOR’, ‘GRAPH_EDITOR’, ‘NLA_EDITOR’, ‘TEXT_EDITOR’, ‘CONSOLE’, ‘INFO’, ‘TOPBAR’, ‘STATUSBAR’, ‘OUTLINER’, ‘PROPERTIES’, ‘FILE_BROWSER’, ‘USER_PREFERENCES’], default ‘EMPTY’, (readonly)
	**/
	var type(default, never) : bpy.types.space.Space.Enum1;
	/**
		
		
		Type: boolean, default False
	**/
	var show_locked_time : Bool;
}