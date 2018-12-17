package bpy.types.spacenodeeditor;
@:enum abstract Enum1(String) from String to String {
	var COLOR_ALPHA : String = "COLOR_ALPHA";
	var COLOR : String = "COLOR";
	var ALPHA : String = "ALPHA";
	var RED : String = "RED";
	var GREEN : String = "GREEN";
	var BLUE : String = "BLUE";
}@:enum abstract Enum2(String) from String to String {
	var RIGHT : String = "RIGHT";
	var LEFT : String = "LEFT";
}@:enum abstract Enum3(String) from String to String {
	var OBJECT : String = "OBJECT";
	var WORLD : String = "WORLD";
	var LINESTYLE : String = "LINESTYLE";
}@:enum abstract Enum4(String) from String to String {
	var WORLD : String = "WORLD";
	var BRUSH : String = "BRUSH";
	var LINESTYLE : String = "LINESTYLE";
}@:enum abstract Enum5(String) from String to String {
	var DUMMY : String = "DUMMY";
}/**
	Node editor space data
**/
@:native("bpy.types.SpaceNodeEditor") extern class SpaceNodeEditor {
	/**
		Channels of the image to draw
		
		Type: enum in [‘COLOR_ALPHA’, ‘COLOR’, ‘ALPHA’, ‘RED’, ‘GREEN’, ‘BLUE’], default ‘COLOR’
	**/
	var backdrop_channels : bpy.types.spacenodeeditor.SpaceNodeEditor.Enum1;
	/**
		Backdrop offset
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var backdrop_offset : Array<Float>;
	/**
		Backdrop zoom factor
		
		Type: float in [0.01, inf], default 1.0
	**/
	var backdrop_zoom : Float;
	/**
		Location for adding new nodes
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var cursor_location : Array<Float>;
	/**
		Node tree being displayed and edited
		
		Type: NodeTree, (readonly)
	**/
	var edit_tree(default, never) : bpy.types.nodetree.NodeTree;
	/**
		Data-block whose nodes are being edited
		
		Type: ID, (readonly)
	**/
	var id(default, never) : bpy.types.id.ID;
	/**
		Data-block from which the edited data-block is linked
		
		Type: ID, (readonly)
	**/
	var id_from(default, never) : bpy.types.id.ID;
	/**
		Direction to offset nodes on insertion
		
		Type: enum in [‘RIGHT’, ‘LEFT’], default ‘RIGHT’
	**/
	var insert_offset_direction : bpy.types.spacenodeeditor.SpaceNodeEditor.Enum2;
	/**
		Base node tree from context
		
		Type: NodeTree
	**/
	var node_tree : bpy.types.nodetree.NodeTree;
	/**
		Path from the data-block to the currently edited node tree
		
		Type: SpaceNodeEditorPath bpy_prop_collection of NodeTreePath, (readonly)
	**/
	var path(default, never) : bpy.types.spacenodeeditorpath.SpaceNodeEditorPath;
	/**
		Use the pinned node tree
		
		Type: boolean, default False
	**/
	var pin : Bool;
	/**
		Type of data to take shader from
		
		Type: enum in [‘OBJECT’, ‘WORLD’, ‘LINESTYLE’], default ‘OBJECT’
	**/
	var shader_type : bpy.types.spacenodeeditor.SpaceNodeEditor.Enum3;
	/**
		Show annotations for this view
		
		Type: boolean, default False
	**/
	var show_annotation : Bool;
	/**
		Use active Viewer Node output as backdrop for compositing nodes
		
		Type: boolean, default False
	**/
	var show_backdrop : Bool;
	/**
		Type of data to take texture from
		
		Type: enum in [‘WORLD’, ‘BRUSH’, ‘LINESTYLE’], default ‘WORLD’
	**/
	var texture_type : bpy.types.spacenodeeditor.SpaceNodeEditor.Enum4;
	/**
		Node tree type to display and edit
		
		Type: enum in [‘DUMMY’], default ‘DUMMY’
	**/
	var tree_type : bpy.types.spacenodeeditor.SpaceNodeEditor.Enum5;
	/**
		Re-render and composite changed layers on 3D edits
		
		Type: boolean, default False
	**/
	var use_auto_render : Bool;
	/**
		Automatically offset the following or previous nodes in a chain when inserting a new node
		
		Type: boolean, default False
	**/
	var use_insert_offset : Bool;
	/**
		Set the cursor location using region coordinates
		@param x x, Region x coordinate — int in [-inf, inf]
		@param y y, Region y coordinate — int in [-inf, inf]
	**/
	function cursor_location_from_region(x:Int, y:Int):Void;
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