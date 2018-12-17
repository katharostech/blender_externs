package bpy.types.nodesocketinterfacevectorvelocity;
/**
	3D vector socket of a node
**/
@:native("bpy.types.NodeSocketInterfaceVectorVelocity") extern class NodeSocketInterfaceVectorVelocity {
	/**
		Input value used for unconnected socket
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var default_value : Array<Float>;
	/**
		Maximum value
		
		Type: float in [-inf, inf], default 0.0
	**/
	var max_value : Float;
	/**
		Minimum value
		
		Type: float in [-inf, inf], default 0.0
	**/
	var min_value : Float;
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
	/**
		Draw template settings
		@param layout Layout, Layout in the UI — UILayout, (never None)
	**/
	function draw(layout:bpy.types.uilayout.UILayout):Void;
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
		Color of the socket icon
		
		@returns float array of 4 items in [0, 1]
	**/
	function draw_color(context:Dynamic):Array<Float>;
}