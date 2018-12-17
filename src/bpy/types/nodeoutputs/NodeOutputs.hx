package bpy.types.nodeoutputs;
/**
	Collection of Node Sockets
**/
@:native("bpy.types.NodeOutputs") extern class NodeOutputs {
	/**
		Add a socket to this node
		@param type Type, Data type — string, (never None)
		@param name Name — string, (never None)
		@param identifier Identifier, Unique socket identifier — string, (optional, never None)
		
		@returns NodeSocket
	**/
	function pyNew(type:String, name:String, identifier:String):bpy.types.nodesocket.NodeSocket;
	/**
		Remove a socket from this node
		@param socket The socket to remove — NodeSocket
	**/
	function remove(socket:bpy.types.nodesocket.NodeSocket):Void;
	/**
		Remove all sockets from this node
	**/
	function clear():Void;
	/**
		Move a socket to another position
		@param from_index From Index, Index of the socket to move — int in [0, inf]
		@param to_index To Index, Target index for the socket — int in [0, inf]
	**/
	function move(from_index:Int, to_index:Int):Void;
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