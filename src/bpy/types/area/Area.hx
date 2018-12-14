package bpy.types.area;
@:enum abstract Enum1(String) from String to String {
	var EMPTY : String = "EMPTY";
	var VIEW_3D : String = "VIEW_3D";
	var IMAGE_EDITOR : String = "IMAGE_EDITOR";
	var NODE_EDITOR : String = "NODE_EDITOR";
	var SEQUENCE_EDITOR : String = "SEQUENCE_EDITOR";
	var CLIP_EDITOR : String = "CLIP_EDITOR";
	var DOPESHEET_EDITOR : String = "DOPESHEET_EDITOR";
	var GRAPH_EDITOR : String = "GRAPH_EDITOR";
	var NLA_EDITOR : String = "NLA_EDITOR";
	var TEXT_EDITOR : String = "TEXT_EDITOR";
	var CONSOLE : String = "CONSOLE";
	var INFO : String = "INFO";
	var TOPBAR : String = "TOPBAR";
	var STATUSBAR : String = "STATUSBAR";
	var OUTLINER : String = "OUTLINER";
	var PROPERTIES : String = "PROPERTIES";
	var FILE_BROWSER : String = "FILE_BROWSER";
	var USER_PREFERENCES : String = "USER_PREFERENCES";
}@:enum abstract Enum2(String) from String to String {
	var DEFAULT : String = "DEFAULT";
}/**
	Area in a subdivided screen, containing an editor
**/
@:pythonImport("bpy.types.Area") extern class Area {
	/**
		Area height
		
		Type: int in [0, 32767], default 0, (readonly)
	**/
	var height(default, never) : Int;
	/**
		Regions this area is subdivided in
		
		Type: bpy_prop_collection of Region, (readonly)
	**/
	var regions(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Show menus in the header
		
		Type: boolean, default False
	**/
	var show_menus : Bool;
	/**
		Spaces contained in this area, the first being the active space (NOTE: Useful for example to restore a previously used 3D view space in a certain area to get the old view orientation)
		
		Type: AreaSpaces bpy_prop_collection of Space, (readonly)
	**/
	var spaces(default, never) : bpy.types.areaspaces.AreaSpaces;
	/**
		Current editor type for this area
		
		Type: enum in [‘EMPTY’, ‘VIEW_3D’, ‘IMAGE_EDITOR’, ‘NODE_EDITOR’, ‘SEQUENCE_EDITOR’, ‘CLIP_EDITOR’, ‘DOPESHEET_EDITOR’, ‘GRAPH_EDITOR’, ‘NLA_EDITOR’, ‘TEXT_EDITOR’, ‘CONSOLE’, ‘INFO’, ‘TOPBAR’, ‘STATUSBAR’, ‘OUTLINER’, ‘PROPERTIES’, ‘FILE_BROWSER’, ‘USER_PREFERENCES’], default ‘VIEW_3D’
	**/
	var type : bpy.types.area.Area.Enum1;
	/**
		Current editor type for this area
		
		Type: enum in [‘DEFAULT’], default ‘DEFAULT’
	**/
	var ui_type : bpy.types.area.Area.Enum2;
	/**
		Area width
		
		Type: int in [0, 32767], default 0, (readonly)
	**/
	var width(default, never) : Int;
	/**
		The window relative vertical location of the area
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var x(default, never) : Int;
	/**
		The window relative horizontal location of the area
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var y(default, never) : Int;
	/**
		tag_redraw
	**/
	function tag_redraw():Void;
	/**
		Set the header status text
		@param text Text, New string for the header, None clears the text — string
	**/
	function header_text_set(text:Dynamic):Void;
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