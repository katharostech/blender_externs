package bpy.types.nodesocket;
@:enum abstract Enum1(String) from String to String {
	var CIRCLE : String = "CIRCLE";
	var SQUARE : String = "SQUARE";
	var DIAMOND : String = "DIAMOND";
}@:enum abstract Enum2(String) from String to String {
	var CUSTOM : String = "CUSTOM";
	var VALUE : String = "VALUE";
	var INT : String = "INT";
	var BOOLEAN : String = "BOOLEAN";
	var VECTOR : String = "VECTOR";
	var STRING : String = "STRING";
	var RGBA : String = "RGBA";
	var SHADER : String = "SHADER";
}/**
	Input or output socket of a node
**/
@:native("bpy.types.NodeSocket") extern class NodeSocket {
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		Socket shape
		
		Type: enum in [‘CIRCLE’, ‘SQUARE’, ‘DIAMOND’], default ‘CIRCLE’
	**/
	var draw_shape : bpy.types.nodesocket.NodeSocket.Enum1;
	/**
		Enable the socket
		
		Type: boolean, default False
	**/
	var enabled : Bool;
	/**
		Hide the socket
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		Hide the socket input value
		
		Type: boolean, default False
	**/
	var hide_value : Bool;
	/**
		Unique identifier for mapping sockets
		
		Type: string, default “”, (readonly, never None)
	**/
	var identifier(default, never) : String;
	/**
		True if the socket is connected
		
		Type: boolean, default False, (readonly)
	**/
	var is_linked(default, never) : Bool;
	/**
		True if the socket is an output, otherwise input
		
		Type: boolean, default False, (readonly)
	**/
	var is_output(default, never) : Bool;
	/**
		Max number of links allowed for this socket
		
		Type: int in [1, 4095], default 0
	**/
	var link_limit : Int;
	/**
		Socket name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Node owning this socket
		
		Type: Node, (readonly)
	**/
	var node(default, never) : bpy.types.node.Node;
	/**
		Socket links are expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Data type
		
		Type: enum in [‘CUSTOM’, ‘VALUE’, ‘INT’, ‘BOOLEAN’, ‘VECTOR’, ‘STRING’, ‘RGBA’, ‘SHADER’], default ‘VALUE’
	**/
	var type : bpy.types.nodesocket.NodeSocket.Enum2;
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