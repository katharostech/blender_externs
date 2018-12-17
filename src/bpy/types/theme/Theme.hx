package bpy.types.theme;
@:enum abstract Enum1(String) from String to String {
	var USER_INTERFACE : String = "USER_INTERFACE";
	var STYLE : String = "STYLE";
	var BONE_COLOR_SETS : String = "BONE_COLOR_SETS";
	var pyVIEW_3D : String = "VIEW_3D";
	var GRAPH_EDITOR : String = "GRAPH_EDITOR";
	var DOPESHEET_EDITOR : String = "DOPESHEET_EDITOR";
	var NLA_EDITOR : String = "NLA_EDITOR";
	var IMAGE_EDITOR : String = "IMAGE_EDITOR";
	var SEQUENCE_EDITOR : String = "SEQUENCE_EDITOR";
	var TEXT_EDITOR : String = "TEXT_EDITOR";
	var NODE_EDITOR : String = "NODE_EDITOR";
	var PROPERTIES : String = "PROPERTIES";
	var OUTLINER : String = "OUTLINER";
	var USER_PREFERENCES : String = "USER_PREFERENCES";
	var INFO : String = "INFO";
	var FILE_BROWSER : String = "FILE_BROWSER";
	var CONSOLE : String = "CONSOLE";
	var CLIP_EDITOR : String = "CLIP_EDITOR";
	var TOPBAR : String = "TOPBAR";
	var STATUSBAR : String = "STATUSBAR";
}/**
	Theme settings defining draw style and colors in the user interface
**/
@:native("bpy.types.Theme") extern class Theme {
	/**
		
		
		Type: bpy_prop_collection of ThemeBoneColorSet, (readonly, never None)
	**/
	var bone_color_sets(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: ThemeClipEditor, (readonly, never None)
	**/
	var clip_editor(default, never) : bpy.types.themeclipeditor.ThemeClipEditor;
	/**
		
		
		Type: ThemeConsole, (readonly, never None)
	**/
	var console(default, never) : bpy.types.themeconsole.ThemeConsole;
	/**
		
		
		Type: ThemeDopeSheet, (readonly, never None)
	**/
	var dopesheet_editor(default, never) : bpy.types.themedopesheet.ThemeDopeSheet;
	/**
		
		
		Type: ThemeFileBrowser, (readonly, never None)
	**/
	var file_browser(default, never) : bpy.types.themefilebrowser.ThemeFileBrowser;
	/**
		
		
		Type: ThemeGraphEditor, (readonly, never None)
	**/
	var graph_editor(default, never) : bpy.types.themegrapheditor.ThemeGraphEditor;
	/**
		
		
		Type: ThemeImageEditor, (readonly, never None)
	**/
	var image_editor(default, never) : bpy.types.themeimageeditor.ThemeImageEditor;
	/**
		
		
		Type: ThemeInfo, (readonly, never None)
	**/
	var info(default, never) : bpy.types.themeinfo.ThemeInfo;
	/**
		Name of the theme
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: ThemeNLAEditor, (readonly, never None)
	**/
	var nla_editor(default, never) : bpy.types.themenlaeditor.ThemeNLAEditor;
	/**
		
		
		Type: ThemeNodeEditor, (readonly, never None)
	**/
	var node_editor(default, never) : bpy.types.themenodeeditor.ThemeNodeEditor;
	/**
		
		
		Type: ThemeOutliner, (readonly, never None)
	**/
	var outliner(default, never) : bpy.types.themeoutliner.ThemeOutliner;
	/**
		
		
		Type: ThemeProperties, (readonly, never None)
	**/
	var properties(default, never) : bpy.types.themeproperties.ThemeProperties;
	/**
		
		
		Type: ThemeSequenceEditor, (readonly, never None)
	**/
	var sequence_editor(default, never) : bpy.types.themesequenceeditor.ThemeSequenceEditor;
	/**
		
		
		Type: ThemeStatusBar, (readonly, never None)
	**/
	var statusbar(default, never) : bpy.types.themestatusbar.ThemeStatusBar;
	/**
		
		
		Type: ThemeTextEditor, (readonly, never None)
	**/
	var text_editor(default, never) : bpy.types.themetexteditor.ThemeTextEditor;
	/**
		
		
		Type: enum in [‘USER_INTERFACE’, ‘STYLE’, ‘BONE_COLOR_SETS’, ‘VIEW_3D’, ‘GRAPH_EDITOR’, ‘DOPESHEET_EDITOR’, ‘NLA_EDITOR’, ‘IMAGE_EDITOR’, ‘SEQUENCE_EDITOR’, ‘TEXT_EDITOR’, ‘NODE_EDITOR’, ‘PROPERTIES’, ‘OUTLINER’, ‘USER_PREFERENCES’, ‘INFO’, ‘FILE_BROWSER’, ‘CONSOLE’, ‘CLIP_EDITOR’, ‘TOPBAR’, ‘STATUSBAR’], default ‘USER_INTERFACE’
	**/
	var theme_area : bpy.types.theme.Theme.Enum1;
	/**
		
		
		Type: ThemeTopBar, (readonly, never None)
	**/
	var topbar(default, never) : bpy.types.themetopbar.ThemeTopBar;
	/**
		
		
		Type: ThemeUserInterface, (readonly, never None)
	**/
	var user_interface(default, never) : bpy.types.themeuserinterface.ThemeUserInterface;
	/**
		
		
		Type: ThemeUserPreferences, (readonly, never None)
	**/
	var user_preferences(default, never) : bpy.types.themeuserpreferences.ThemeUserPreferences;
	/**
		
		
		Type: ThemeView3D, (readonly, never None)
	**/
	var pyview_3d(default, never) : bpy.types.themeview3d.ThemeView3D;
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