package bpy.types.spaceoutliner;
@:enum abstract Enum1(String) from String to String {
	var SCENES : String = "SCENES";
	var VIEW_LAYER : String = "VIEW_LAYER";
	var SEQUENCE : String = "SEQUENCE";
	var LIBRARIES : String = "LIBRARIES";
	var DATA_API : String = "DATA_API";
	var ORPHAN_DATA : String = "ORPHAN_DATA";
}@:enum abstract Enum2(String) from String to String {
	var ACTION : String = "ACTION";
	var ARMATURE : String = "ARMATURE";
	var BRUSH : String = "BRUSH";
	var CAMERA : String = "CAMERA";
	var CACHEFILE : String = "CACHEFILE";
	var CURVE : String = "CURVE";
	var FONT : String = "FONT";
	var GREASEPENCIL : String = "GREASEPENCIL";
	var COLLECTION : String = "COLLECTION";
	var IMAGE : String = "IMAGE";
	var KEY : String = "KEY";
	var LIGHT : String = "LIGHT";
	var LIBRARY : String = "LIBRARY";
	var LINESTYLE : String = "LINESTYLE";
	var LATTICE : String = "LATTICE";
	var MASK : String = "MASK";
	var MATERIAL : String = "MATERIAL";
	var META : String = "META";
	var MESH : String = "MESH";
	var MOVIECLIP : String = "MOVIECLIP";
	var NODETREE : String = "NODETREE";
	var OBJECT : String = "OBJECT";
	var PAINTCURVE : String = "PAINTCURVE";
	var PALETTE : String = "PALETTE";
	var PARTICLE : String = "PARTICLE";
	var LIGHT_PROBE : String = "LIGHT_PROBE";
	var SCENE : String = "SCENE";
	var SOUND : String = "SOUND";
	var SPEAKER : String = "SPEAKER";
	var TEXT : String = "TEXT";
	var TEXTURE : String = "TEXTURE";
	var WINDOWMANAGER : String = "WINDOWMANAGER";
	var WORLD : String = "WORLD";
	var WORKSPACE : String = "WORKSPACE";
}@:enum abstract Enum3(String) from String to String {
	var ALL : String = "ALL";
	var VISIBLE : String = "VISIBLE";
	var SELECTED : String = "SELECTED";
	var ACTIVE : String = "ACTIVE";
}/**
	Outliner space data
**/
@:pythonImport("bpy.types.SpaceOutliner") extern class SpaceOutliner {
	/**
		Type of information to display
		
		Type: enum in [‘SCENES’, ‘VIEW_LAYER’, ‘SEQUENCE’, ‘LIBRARIES’, ‘DATA_API’, ‘ORPHAN_DATA’], default ‘SCENES’
	**/
	var display_mode : bpy.types.spaceoutliner.SpaceOutliner.Enum1;
	/**
		Data-block type to show
		
		Type: enum in [‘ACTION’, ‘ARMATURE’, ‘BRUSH’, ‘CAMERA’, ‘CACHEFILE’, ‘CURVE’, ‘FONT’, ‘GREASEPENCIL’, ‘COLLECTION’, ‘IMAGE’, ‘KEY’, ‘LIGHT’, ‘LIBRARY’, ‘LINESTYLE’, ‘LATTICE’, ‘MASK’, ‘MATERIAL’, ‘META’, ‘MESH’, ‘MOVIECLIP’, ‘NODETREE’, ‘OBJECT’, ‘PAINTCURVE’, ‘PALETTE’, ‘PARTICLE’, ‘LIGHT_PROBE’, ‘SCENE’, ‘SOUND’, ‘SPEAKER’, ‘TEXT’, ‘TEXTURE’, ‘WINDOWMANAGER’, ‘WORLD’, ‘WORKSPACE’], default ‘ACTION’
	**/
	var filter_id_type : bpy.types.spaceoutliner.SpaceOutliner.Enum2;
	/**
		
		
		Type: enum in [‘ALL’, ‘VISIBLE’, ‘SELECTED’, ‘ACTIVE’], default ‘ALL’
	**/
	var filter_state : bpy.types.spaceoutliner.SpaceOutliner.Enum3;
	/**
		Live search filtering string
		
		Type: string, default “”, (never None)
	**/
	var filter_text : String;
	/**
		Show column
		
		Type: boolean, default False
	**/
	var show_restrict_columns : Bool;
	/**
		Only use case sensitive matches of search string
		
		Type: boolean, default False
	**/
	var use_filter_case_sensitive : Bool;
	/**
		Show children
		
		Type: boolean, default False
	**/
	var use_filter_children : Bool;
	/**
		Show collections
		
		Type: boolean, default False
	**/
	var use_filter_collection : Bool;
	/**
		Only use complete matches of search string
		
		Type: boolean, default False
	**/
	var use_filter_complete : Bool;
	/**
		Show only data-blocks of one type
		
		Type: boolean, default False
	**/
	var use_filter_id_type : Bool;
	/**
		Show objects
		
		Type: boolean, default False
	**/
	var use_filter_object : Bool;
	/**
		Show armature objects
		
		Type: boolean, default False
	**/
	var use_filter_object_armature : Bool;
	/**
		Show camera objects
		
		Type: boolean, default False
	**/
	var use_filter_object_camera : Bool;
	/**
		Show what is inside the objects elements
		
		Type: boolean, default False
	**/
	var use_filter_object_content : Bool;
	/**
		Show empty objects
		
		Type: boolean, default False
	**/
	var use_filter_object_empty : Bool;
	/**
		Show light objects
		
		Type: boolean, default False
	**/
	var use_filter_object_light : Bool;
	/**
		Show mesh objects
		
		Type: boolean, default False
	**/
	var use_filter_object_mesh : Bool;
	/**
		Show curves, lattices, light probes, fonts, …
		
		Type: boolean, default False
	**/
	var use_filter_object_others : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_sort_alpha : Bool;
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