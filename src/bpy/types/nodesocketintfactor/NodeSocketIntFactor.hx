package bpy.types.nodesocketintfactor;
/**
	Integer number socket of a node
**/
@:pythonImport("bpy.types.NodeSocketIntFactor") extern class NodeSocketIntFactor {
	/**
		Input value used for unconnected socket
		
		Type: int in [0, inf], default 1
	**/
	var default_value : Int;
	/**
		List of node links from or to this socket. Warning: takes O(len(nodetree.links)) time.
		(readonly)
	**/
	var links(default, never) : Dynamic;
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
		Socket name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Unique identifier for mapping sockets
		
		Type: string, default “”, (readonly, never None)
	**/
	var identifier(default, never) : String;
	/**
		True if the socket is an output, otherwise input
		
		Type: boolean, default False, (readonly)
	**/
	var is_output(default, never) : Bool;
	/**
		Hide the socket
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		Enable the socket
		
		Type: boolean, default False
	**/
	var enabled : Bool;
	/**
		Max number of links allowed for this socket
		
		Type: int in [1, 4095], default 0
	**/
	var link_limit : Int;
	/**
		True if the socket is connected
		
		Type: boolean, default False, (readonly)
	**/
	var is_linked(default, never) : Bool;
	/**
		Socket links are expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Hide the socket input value
		
		Type: boolean, default False
	**/
	var hide_value : Bool;
	/**
		Node owning this socket
		
		Type: Node, (readonly)
	**/
	var node(default, never) : bpy.types.node.Node;
	/**
		Data type
		
		Type: enum in [‘CUSTOM’, ‘VALUE’, ‘INT’, ‘BOOLEAN’, ‘VECTOR’, ‘STRING’, ‘RGBA’, ‘SHADER’], default ‘VALUE’
	**/
	var type : bpy.types.nodesocket.NodeSocket.Enum2;
	/**
		Socket shape
		
		Type: enum in [‘CIRCLE’, ‘SQUARE’, ‘DIAMOND’], default ‘CIRCLE’
	**/
	var draw_shape : bpy.types.nodesocket.NodeSocket.Enum1;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		List of node links from or to this socket. Warning: takes O(len(nodetree.links)) time.
		(readonly)
	**/
	var links(default, never) : Dynamic;
	/**
		List of node links from or to this socket. Warning: takes O(len(nodetree.links)) time.
		(readonly)
	**/
	var links(default, never) : Dynamic;
	/**
		List of node links from or to this socket. Warning: takes O(len(nodetree.links)) time.
		(readonly)
	**/
	var links(default, never) : Dynamic;
	/**
		List of node links from or to this socket. Warning: takes O(len(nodetree.links)) time.
		(readonly)
	**/
	var links(default, never) : Dynamic;
	/**
		List of node links from or to this socket. Warning: takes O(len(nodetree.links)) time.
		(readonly)
	**/
	var links(default, never) : Dynamic;
	/**
		List of node links from or to this socket. Warning: takes O(len(nodetree.links)) time.
		(readonly)
	**/
	var links(default, never) : Dynamic;
	/**
		List of node links from or to this socket. Warning: takes O(len(nodetree.links)) time.
		(readonly)
	**/
	var links(default, never) : Dynamic;
	/**
		List of node links from or to this socket. Warning: takes O(len(nodetree.links)) time.
		(readonly)
	**/
	var links(default, never) : Dynamic;
	/**
		Draw socket
		@param layout Layout, Layout in the UI — UILayout, (never None)
		@param node Node, Node the socket belongs to — Node, (never None)
		@param text Text, Text label to draw alongside properties — string, (never None)
	**/
	function draw(layout:bpy.types.uilayout.UILayout, node:Dynamic, text:String):Void;
	/**
		Color of the socket icon
		@param node Node, Node the socket belongs to — Node, (never None)
		
		@returns float array of 4 items in [0, 1]
	**/
	function draw_color(node:Dynamic):Array<Float>;
	/**
		Draw socket
		@param layout Layout, Layout in the UI — UILayout, (never None)
		@param node Node, Node the socket belongs to — Node, (never None)
		@param text Text, Text label to draw alongside properties — string, (never None)
	**/
	function draw(layout:bpy.types.uilayout.UILayout, node:Dynamic, text:String):Void;
	/**
		Draw socket
		@param layout Layout, Layout in the UI — UILayout, (never None)
		@param node Node, Node the socket belongs to — Node, (never None)
		@param text Text, Text label to draw alongside properties — string, (never None)
	**/
	function draw(layout:bpy.types.uilayout.UILayout, node:Dynamic, text:String):Void;
	/**
		Color of the socket icon
		@param node Node, Node the socket belongs to — Node, (never None)
		
		@returns float array of 4 items in [0, 1]
	**/
	function draw_color(node:Dynamic):Array<Float>;
	/**
		Color of the socket icon
		@param node Node, Node the socket belongs to — Node, (never None)
		
		@returns float array of 4 items in [0, 1]
	**/
	function draw_color(node:Dynamic):Array<Float>;
}