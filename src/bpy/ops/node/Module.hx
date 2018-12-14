package bpy.ops.node;
/**
	Node Operators
**/
@:pythonImport("bpy.ops.node") extern class Module {
	/**
		Add a node to the active tree and link to an existing socket
		@param type Node Type, Node type — string, (optional, never None)
		@param use_transform Use Transform, Start transform operator after inserting the node — boolean, (optional)
		@param settings Settings, Settings to be applied on the newly created node — bpy_prop_collection of NodeSetting, (optional)
		@param link_socket_index Link Socket Index, Index of the socket to link — int in [-inf, inf], (optional)
	**/
	static function add_and_link_node(type:String, use_transform:Bool, settings:Dynamic, link_socket_index:Int):Void;
	/**
		Add a file node to the current node editor
		@param filepath File Path, Path to file — string, (optional, never None)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param show_multiview Enable Multi-View — boolean, (optional)
		@param use_multiview Use Multi-View — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param name Name, Data-block name to assign — string, (optional, never None)
	**/
	static function add_file(filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.node.Node.Enum1, sort_method:bpy.ops.node.Node.Enum2, name:String):Void;
	/**
		Add a mask node to the current node editor
		@param name Name, Data-block name to assign — string, (optional, never None)
	**/
	static function add_mask(name:String):Void;
	/**
		Add a node to the active tree
		@param type Node Type, Node type — string, (optional, never None)
		@param use_transform Use Transform, Start transform operator after inserting the node — boolean, (optional)
		@param settings Settings, Settings to be applied on the newly created node — bpy_prop_collection of NodeSetting, (optional)
	**/
	static function add_node(type:String, use_transform:Bool, settings:Dynamic):Void;
	/**
		Add a reroute node
		@param path Path — bpy_prop_collection of OperatorMousePath, (optional)
		@param cursor Cursor — int in [0, inf], (optional)
	**/
	static function add_reroute(path:Dynamic, cursor:Int):Void;
	/**
		Add a node to the active tree
		@param type Node Type, Node type — string, (optional, never None)
		@param use_transform Use Transform, Start transform operator after inserting the node — boolean, (optional)
		@param settings Settings, Settings to be applied on the newly created node — bpy_prop_collection of NodeSetting, (optional)
		@param node_item Node Type, Node type — enum in [], (optional)
	**/
	static function add_search(type:String, use_transform:Bool, settings:Dynamic, node_item:bpy.ops.node.Node.Enum3):Void;
	/**
		Attach active node to a frame
	**/
	static function attach():Void;
	/**
		Fit the background image to the view
	**/
	static function backimage_fit():Void;
	/**
		Move Node backdrop
	**/
	static function backimage_move():Void;
	/**
		Use mouse to sample background image
	**/
	static function backimage_sample():Void;
	/**
		Zoom in/out the background image
		@param factor Factor — float in [0, 10], (optional)
	**/
	static function backimage_zoom(factor:Float):Void;
	/**
		Clear the boundaries for viewer operations
	**/
	static function clear_viewer_border():Void;
	/**
		Copies selected nodes to the clipboard
	**/
	static function clipboard_copy():Void;
	/**
		Pastes nodes from the clipboard to the active node tree
	**/
	static function clipboard_paste():Void;
	/**
		Toggle collapsed nodes and hide unused sockets
	**/
	static function collapse_hide_unused_toggle():Void;
	/**
		Add a new input layer to a Cryptomatte node
	**/
	static function cryptomatte_layer_add():Void;
	/**
		Remove layer from a Crytpomatte node
	**/
	static function cryptomatte_layer_remove():Void;
	/**
		Delete selected nodes
	**/
	static function delete():Void;
	/**
		Delete nodes; will reconnect nodes as if deletion was muted
	**/
	static function delete_reconnect():Void;
	/**
		Detach selected nodes from parents
	**/
	static function detach():Void;
	/**
		Detach nodes, move and attach to frame
		@param NODE_OT_detach Detach Nodes, Detach selected nodes from parents — NODE_OT_detach, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
		@param NODE_OT_attach Attach Nodes, Attach active node to a frame — NODE_OT_attach, (optional)
	**/
	static function detach_translate_attach(NODE_OT_detach:Dynamic, TRANSFORM_OT_translate:Dynamic, NODE_OT_attach:Dynamic):Void;
	/**
		Duplicate selected nodes
		@param keep_inputs Keep Inputs, Keep the input links to duplicated nodes — boolean, (optional)
	**/
	static function duplicate(keep_inputs:Bool):Void;
	/**
		Duplicate selected nodes and move them
		@param NODE_OT_duplicate Duplicate Nodes, Duplicate selected nodes — NODE_OT_duplicate, (optional)
		@param NODE_OT_translate_attach Move and Attach, Move nodes and attach to frame — NODE_OT_translate_attach, (optional)
	**/
	static function duplicate_move(NODE_OT_duplicate:Dynamic, NODE_OT_translate_attach:Dynamic):Void;
	/**
		Duplicate selected nodes keeping input links and move them
		@param NODE_OT_duplicate Duplicate Nodes, Duplicate selected nodes — NODE_OT_duplicate, (optional)
		@param NODE_OT_translate_attach Move and Attach, Move nodes and attach to frame — NODE_OT_translate_attach, (optional)
	**/
	static function duplicate_move_keep_inputs(NODE_OT_duplicate:Dynamic, NODE_OT_translate_attach:Dynamic):Void;
	/**
		Search for named node and allow to select and activate it
		@param prev Previous — boolean, (optional)
	**/
	static function find_node(prev:Bool):Void;
	/**
		Edit node group
		@param exit Exit — boolean, (optional)
	**/
	static function group_edit(exit:Bool):Void;
	/**
		Insert selected nodes into a node group
	**/
	static function group_insert():Void;
	/**
		Make group from selected nodes
	**/
	static function group_make():Void;
	/**
		Separate selected nodes from the node group
		@param type TypeCOPY Copy, Copy to parent node tree, keep group intact.MOVE Move, Move to parent node tree, remove from group. — enum in ['COPY', 'MOVE'], (optional)
	**/
	static function group_separate(type:bpy.ops.node.Node.Enum4):Void;
	/**
		Ungroup selected nodes
	**/
	static function group_ungroup():Void;
	/**
		Toggle unused node socket display
	**/
	static function hide_socket_toggle():Void;
	/**
		Toggle hiding of selected nodes
	**/
	static function hide_toggle():Void;
	/**
		Automatically offset nodes on insertion
	**/
	static function insert_offset():Void;
	/**
		Attach selected nodes to a new common frame
	**/
	static function join():Void;
	/**
		Use the mouse to create a link between two nodes
		@param detach Detach, Detach and redirect existing links — boolean, (optional)
	**/
	static function link(detach:Bool):Void;
	/**
		Makes a link between selected output in input sockets
		@param replace Replace, Replace socket connections with the new links — boolean, (optional)
	**/
	static function link_make(replace:Bool):Void;
	/**
		Link to viewer node
	**/
	static function link_viewer():Void;
	/**
		Use the mouse to cut (remove) some links
		@param path Path — bpy_prop_collection of OperatorMousePath, (optional)
		@param cursor Cursor — int in [0, inf], (optional)
	**/
	static function links_cut(path:Dynamic, cursor:Int):Void;
	/**
		Remove all links to selected nodes, and try to connect neighbor nodes together
	**/
	static function links_detach():Void;
	/**
		Move a node to detach links
		@param NODE_OT_links_detach Detach Links, Remove all links to selected nodes, and try to connect neighbor nodes together — NODE_OT_links_detach, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
		@param NODE_OT_insert_offset Insert Offset, Automatically offset nodes on insertion — NODE_OT_insert_offset, (optional)
	**/
	static function move_detach_links(NODE_OT_links_detach:Dynamic, TRANSFORM_OT_translate:Dynamic, NODE_OT_insert_offset:Dynamic):Void;
	/**
		Move a node to detach links
		@param NODE_OT_links_detach Detach Links, Remove all links to selected nodes, and try to connect neighbor nodes together — NODE_OT_links_detach, (optional)
		@param NODE_OT_translate_attach Move and Attach, Move nodes and attach to frame — NODE_OT_translate_attach, (optional)
	**/
	static function move_detach_links_release(NODE_OT_links_detach:Dynamic, NODE_OT_translate_attach:Dynamic):Void;
	/**
		Toggle muting of the nodes
	**/
	static function mute_toggle():Void;
	/**
		Create a new node tree
		@param type Tree Type — enum in [], (optional)
		@param name Name — string, (optional, never None)
	**/
	static function new_node_tree(type:bpy.ops.node.Node.Enum5, name:String):Void;
	/**
		Add or remove a Node Color Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function node_color_preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
	/**
		Copy color to all selected nodes
	**/
	static function node_copy_color():Void;
	/**
		Toggle option buttons display for selected nodes
	**/
	static function options_toggle():Void;
	/**
		Add a new input to a file output node
		@param file_path File Path, Sub-path of the output file — string, (optional, never None)
	**/
	static function output_file_add_socket(file_path:String):Void;
	/**
		Move the active input of a file output node up or down the list
		@param direction Direction — enum in ['UP', 'DOWN'], (optional)
	**/
	static function output_file_move_active_socket(direction:bpy.ops.node.Node.Enum6):Void;
	/**
		Remove active input from a file output node
	**/
	static function output_file_remove_active_socket():Void;
	/**
		Attach selected nodes
	**/
	static function parent_set():Void;
	/**
		Toggle preview display for selected nodes
	**/
	static function preview_toggle():Void;
	/**
		Toggle the properties region visibility
	**/
	static function properties():Void;
	/**
		Read all render layers of all used scenes
	**/
	static function read_viewlayers():Void;
	/**
		Render current scene, when input node’s layer has been changed
	**/
	static function render_changed():Void;
	/**
		Resize a node
	**/
	static function resize():Void;
	/**
		Select the node under the cursor
		@param mouse_x Mouse X — int in [-inf, inf], (optional)
		@param mouse_y Mouse Y — int in [-inf, inf], (optional)
		@param extend Extend — boolean, (optional)
	**/
	static function select(mouse_x:Int, mouse_y:Int, extend:Bool):Void;
	/**
		(De)select all nodes
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.node.Node.Enum7):Void;
	/**
		Use box selection to select nodes
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param tweak Tweak, Only activate when mouse is not over a node - useful for tweak gesture — boolean, (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool, tweak:Bool):Void;
	/**
		Use circle selection to select nodes
		@param x X — int in [-inf, inf], (optional)
		@param y Y — int in [-inf, inf], (optional)
		@param radius Radius — int in [1, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
	**/
	static function select_circle(x:Int, y:Int, radius:Int, deselect:Bool):Void;
	/**
		Select nodes with similar properties
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param type Type — enum in ['TYPE', 'COLOR', 'PREFIX', 'SUFFIX'], (optional)
	**/
	static function select_grouped(extend:Bool, type:bpy.ops.node.Node.Enum8):Void;
	/**
		Select nodes using lasso selection
		@param path Path — bpy_prop_collection of OperatorMousePath, (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_lasso(path:Dynamic, deselect:Bool, extend:Bool):Void;
	/**
		Select node and link it to a viewer node
		@param NODE_OT_select Select, Select the node under the cursor — NODE_OT_select, (optional)
		@param NODE_OT_link_viewer Link to Viewer Node, Link to viewer node — NODE_OT_link_viewer, (optional)
	**/
	static function select_link_viewer(NODE_OT_select:Dynamic, NODE_OT_link_viewer:Dynamic):Void;
	/**
		Select nodes linked from the selected ones
	**/
	static function select_linked_from():Void;
	/**
		Select nodes linked to the selected ones
	**/
	static function select_linked_to():Void;
	/**
		Activate and view same node type, step by step
		@param prev Previous — boolean, (optional)
	**/
	static function select_same_type_step(prev:Bool):Void;
	/**
		Update shader script node with new sockets and options from the script
	**/
	static function shader_script_update():Void;
	/**
		Update views of selected node
	**/
	static function switch_view_update():Void;
	/**
		Toggles tool shelf display
	**/
	static function toolbar():Void;
	/**
		Move nodes and attach to frame
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
		@param NODE_OT_attach Attach Nodes, Attach active node to a frame — NODE_OT_attach, (optional)
		@param NODE_OT_insert_offset Insert Offset, Automatically offset nodes on insertion — NODE_OT_insert_offset, (optional)
	**/
	static function translate_attach(TRANSFORM_OT_translate:Dynamic, NODE_OT_attach:Dynamic, NODE_OT_insert_offset:Dynamic):Void;
	/**
		Move nodes and attach to frame
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
		@param NODE_OT_attach Attach Nodes, Attach active node to a frame — NODE_OT_attach, (optional)
		@param NODE_OT_insert_offset Insert Offset, Automatically offset nodes on insertion — NODE_OT_insert_offset, (optional)
	**/
	static function translate_attach_remove_on_cancel(TRANSFORM_OT_translate:Dynamic, NODE_OT_attach:Dynamic, NODE_OT_insert_offset:Dynamic):Void;
	/**
		Go to parent node tree
	**/
	static function tree_path_parent():Void;
	/**
		Add an input or output socket to the current node tree
		@param in_out Socket Type — enum in ['IN', 'OUT'], (optional)
	**/
	static function tree_socket_add(in_out:bpy.ops.node.Node.Enum9):Void;
	/**
		Move a socket up or down in the current node tree’s sockets stack
		@param direction Direction — enum in ['UP', 'DOWN'], (optional)
	**/
	static function tree_socket_move(direction:bpy.ops.node.Node.Enum10):Void;
	/**
		Remove an input or output socket to the current node tree
	**/
	static function tree_socket_remove():Void;
	/**
		Resize view so you can see all nodes
	**/
	static function view_all():Void;
	/**
		Resize view so you can see selected nodes
	**/
	static function view_selected():Void;
	/**
		Set the boundaries for viewer operations
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function viewer_border(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool):Void;
}