package bpy.types.spaceconsole;
/**
	Interactive python console
**/
@:native("bpy.types.SpaceConsole") extern class SpaceConsole {
	/**
		Font size to use for displaying the text
		
		Type: int in [8, 32], default 0
	**/
	var font_size : Int;
	/**
		Command history
		
		Type: bpy_prop_collection of ConsoleLine, (readonly)
	**/
	var history(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Command line prompt language
		
		Type: string, default “”, (never None)
	**/
	var language : String;
	/**
		Command line prompt
		
		Type: string, default “”, (never None)
	**/
	var prompt : String;
	/**
		Command output
		
		Type: bpy_prop_collection of ConsoleLine, (readonly)
	**/
	var scrollback(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var select_end : Int;
	/**
		
		
		Type: int in [0, inf], default 0
	**/
	var select_start : Int;
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