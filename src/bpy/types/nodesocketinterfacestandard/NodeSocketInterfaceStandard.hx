package bpy.types.nodesocketinterfacestandard;
@:enum abstract Enum1(String) from String to String {
	var CUSTOM : String = "CUSTOM";
	var VALUE : String = "VALUE";
	var INT : String = "INT";
	var BOOLEAN : String = "BOOLEAN";
	var VECTOR : String = "VECTOR";
	var STRING : String = "STRING";
	var RGBA : String = "RGBA";
	var SHADER : String = "SHADER";
}@:native("bpy.types.NodeSocketInterfaceStandard") extern class NodeSocketInterfaceStandard {
	/**
		Data type
		
		Type: enum in [‘CUSTOM’, ‘VALUE’, ‘INT’, ‘BOOLEAN’, ‘VECTOR’, ‘STRING’, ‘RGBA’, ‘SHADER’], default ‘VALUE’, (readonly)
	**/
	var type(default, never) : bpy.types.nodesocketinterfacestandard.NodeSocketInterfaceStandard.Enum1;
	/**
		Draw template settings
		@param layout Layout, Layout in the UI — UILayout, (never None)
	**/
	function draw(layout:bpy.types.uilayout.UILayout):Void;
	/**
		Color of the socket icon
		
		@returns float array of 4 items in [0, 1]
	**/
	function draw_color(context:Dynamic):Array<Float>;
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
		
		
		Type: string, default “”, (never None)
	**/
	var bl_socket_idname : String;
	/**
		Draw template settings
		@param layout Layout, Layout in the UI — UILayout, (never None)
	**/
	function draw(layout:bpy.types.uilayout.UILayout):Void;
	/**
		Color of the socket icon
		
		@returns float array of 4 items in [0, 1]
	**/
	function draw_color(context:Dynamic):Array<Float>;
	/**
		Define RNA properties of a socket
		@param data_rna_type Data RNA Type, RNA type for special socket properties — Struct
	**/
	function register_properties(data_rna_type:bpy.types.struct.Struct):Void;
	/**
		Initialize a node socket instance
		@param node Node, Node of the socket to initialize — Node, (never None)
		@param socket Socket, Socket to initialize — NodeSocket, (never None)
		@param data_path Data Path, Path to specialized socket data — string, (never None)
	**/
	function init_socket(node:Dynamic, socket:bpy.types.nodesocket.NodeSocket, data_path:String):Void;
	/**
		Setup template parameters from an existing socket
		@param node Node, Node of the original socket — Node, (never None)
		@param socket Socket, Original socket — NodeSocket, (never None)
	**/
	function from_socket(node:Dynamic, socket:bpy.types.nodesocket.NodeSocket):Void;
}