package bpy.types.nodelink;
/**
	Link is valid
**/
@:native("bpy.types.NodeLink") extern class NodeLink {
	/**
		
		
		Type: Node, (readonly)
	**/
	var from_node(default, never) : bpy.types.node.Node;
	/**
		
		
		Type: NodeSocket, (readonly)
	**/
	var from_socket(default, never) : bpy.types.nodesocket.NodeSocket;
	/**
		Link is hidden due to invisible sockets
		
		Type: boolean, default False, (readonly)
	**/
	var is_hidden(default, never) : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var is_valid : Bool;
	/**
		
		
		Type: Node, (readonly)
	**/
	var to_node(default, never) : bpy.types.node.Node;
	/**
		
		
		Type: NodeSocket, (readonly)
	**/
	var to_socket(default, never) : bpy.types.nodesocket.NodeSocket;
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