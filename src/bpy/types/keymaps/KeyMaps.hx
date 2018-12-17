package bpy.types.keymaps;
@:enum abstract Enum1(String) from String to String {
	var EMPTY : String = "EMPTY";
	var pyVIEW_3D : String = "VIEW_3D";
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
	var WINDOW : String = "WINDOW";
	var HEADER : String = "HEADER";
	var CHANNELS : String = "CHANNELS";
	var TEMPORARY : String = "TEMPORARY";
	var UI : String = "UI";
	var TOOLS : String = "TOOLS";
	var TOOL_PROPS : String = "TOOL_PROPS";
	var PREVIEW : String = "PREVIEW";
	var NAVIGATION_BAR : String = "NAVIGATION_BAR";
}@:enum abstract Enum3(String) from String to String {
	var EMPTY : String = "EMPTY";
	var pyVIEW_3D : String = "VIEW_3D";
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
}@:enum abstract Enum4(String) from String to String {
	var WINDOW : String = "WINDOW";
	var HEADER : String = "HEADER";
	var CHANNELS : String = "CHANNELS";
	var TEMPORARY : String = "TEMPORARY";
	var UI : String = "UI";
	var TOOLS : String = "TOOLS";
	var TOOL_PROPS : String = "TOOL_PROPS";
	var PREVIEW : String = "PREVIEW";
	var NAVIGATION_BAR : String = "NAVIGATION_BAR";
}/**
	Collection of keymaps
**/
@:native("bpy.types.KeyMaps") extern class KeyMaps {
	/**
		new
		@param name Name — string, (never None)
		@param space_type Space TypeEMPTY Empty.VIEW_3D 3D Viewport, Manipulate objects in a 3D environment.IMAGE_EDITOR UV/Image Editor, View and edit images and UV Maps.NODE_EDITOR Node Editor, Editor for node-based shading and compositing tools.SEQUENCE_EDITOR Video Sequencer, Video editing tools.CLIP_EDITOR Movie Clip Editor, Motion tracking tools.DOPESHEET_EDITOR Dope Sheet, Adjust timing of keyframes.GRAPH_EDITOR Graph Editor, Edit drivers and keyframe interpolation.NLA_EDITOR Nonlinear Animation, Combine and layer Actions.TEXT_EDITOR Text Editor, Edit scripts and in-file documentation.CONSOLE Python Console, Interactive programmatic console for advanced editing and script development.INFO Info, Main menu bar and list of error messages (drag down to expand and display).TOPBAR Top Bar, Global bar at the top of the screen for global per-window settings.STATUSBAR Status Bar, Global bar at the bottom of the screen for general status information.OUTLINER Outliner, Overview of scene graph and all available data-blocks.PROPERTIES Properties, Edit properties of active object and related data-blocks.FILE_BROWSER File Browser, Browse for files and assets.USER_PREFERENCES User Preferences, Edit persistent configuration settings. — enum in ['EMPTY', 'VIEW_3D', 'IMAGE_EDITOR', 'NODE_EDITOR', 'SEQUENCE_EDITOR', 'CLIP_EDITOR', 'DOPESHEET_EDITOR', 'GRAPH_EDITOR', 'NLA_EDITOR', 'TEXT_EDITOR', 'CONSOLE', 'INFO', 'TOPBAR', 'STATUSBAR', 'OUTLINER', 'PROPERTIES', 'FILE_BROWSER', 'USER_PREFERENCES'], (optional)
		@param region_type Region Type — enum in ['WINDOW', 'HEADER', 'CHANNELS', 'TEMPORARY', 'UI', 'TOOLS', 'TOOL_PROPS', 'PREVIEW', 'NAVIGATION_BAR'], (optional)
		@param modal Modal, Keymap for modal operators — boolean, (optional)
		@param tool Tool, Keymap for active tools — boolean, (optional)
		
		@returns KeyMap
	**/
	function pyNew(name:String, space_type:bpy.types.keymaps.KeyMaps.Enum1, region_type:bpy.types.keymaps.KeyMaps.Enum2, modal:Bool, tool:Bool):bpy.types.keymap.KeyMap;
	/**
		remove
		@param keymap Key Map, Removed key map — KeyMap, (never None)
	**/
	function remove(keymap:bpy.types.keymap.KeyMap):Void;
	/**
		find
		@param name Name — string, (never None)
		@param space_type Space TypeEMPTY Empty.VIEW_3D 3D Viewport, Manipulate objects in a 3D environment.IMAGE_EDITOR UV/Image Editor, View and edit images and UV Maps.NODE_EDITOR Node Editor, Editor for node-based shading and compositing tools.SEQUENCE_EDITOR Video Sequencer, Video editing tools.CLIP_EDITOR Movie Clip Editor, Motion tracking tools.DOPESHEET_EDITOR Dope Sheet, Adjust timing of keyframes.GRAPH_EDITOR Graph Editor, Edit drivers and keyframe interpolation.NLA_EDITOR Nonlinear Animation, Combine and layer Actions.TEXT_EDITOR Text Editor, Edit scripts and in-file documentation.CONSOLE Python Console, Interactive programmatic console for advanced editing and script development.INFO Info, Main menu bar and list of error messages (drag down to expand and display).TOPBAR Top Bar, Global bar at the top of the screen for global per-window settings.STATUSBAR Status Bar, Global bar at the bottom of the screen for general status information.OUTLINER Outliner, Overview of scene graph and all available data-blocks.PROPERTIES Properties, Edit properties of active object and related data-blocks.FILE_BROWSER File Browser, Browse for files and assets.USER_PREFERENCES User Preferences, Edit persistent configuration settings. — enum in ['EMPTY', 'VIEW_3D', 'IMAGE_EDITOR', 'NODE_EDITOR', 'SEQUENCE_EDITOR', 'CLIP_EDITOR', 'DOPESHEET_EDITOR', 'GRAPH_EDITOR', 'NLA_EDITOR', 'TEXT_EDITOR', 'CONSOLE', 'INFO', 'TOPBAR', 'STATUSBAR', 'OUTLINER', 'PROPERTIES', 'FILE_BROWSER', 'USER_PREFERENCES'], (optional)
		@param region_type Region Type — enum in ['WINDOW', 'HEADER', 'CHANNELS', 'TEMPORARY', 'UI', 'TOOLS', 'TOOL_PROPS', 'PREVIEW', 'NAVIGATION_BAR'], (optional)
		
		@returns KeyMap
	**/
	function find(name:String, space_type:bpy.types.keymaps.KeyMaps.Enum3, region_type:bpy.types.keymaps.KeyMaps.Enum4):bpy.types.keymap.KeyMap;
	/**
		find_modal
		@param name Operator Name — string, (never None)
		
		@returns KeyMap
	**/
	function find_modal(name:String):bpy.types.keymap.KeyMap;
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