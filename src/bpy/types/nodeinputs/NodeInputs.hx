package bpy.types.nodeinputs;
/**
	Collection of Node Sockets
**/
@:pythonImport("bpy.types.NodeInputs") extern class NodeInputs {
	/**
		Add a socket to this node
		@param type Type, Data type — string, (never None)
		@param name Name — string, (never None)
		@param identifier Identifier, Unique socket identifier — string, (optional, never None)
		
		@returns NodeSocket
	**/
	function new(type:String, name:String, identifier:String):bpy.types.nodesocket.NodeSocket;
	/**
		Remove a socket from this node
		@param socket The socket to remove — NodeSocket
	**/
	function remove(socket:Dynamic):Void;
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
	static function bl_rna_get_subclass(id:Dynamic):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:Dynamic):Dynamic;
}