package bpy.types.nodetreeinputs;
/**
	Collection of Node Tree Sockets
**/
@:native("bpy.types.NodeTreeInputs") extern class NodeTreeInputs {
	/**
		Add a socket to this node tree
		@param type Type, Data type — string, (never None)
		@param name Name — string, (never None)
		
		@returns NodeSocketInterface
	**/
	function pyNew(type:String, name:String):bpy.types.nodesocketinterface.NodeSocketInterface;
	/**
		Remove a socket from this node tree
		@param socket The socket to remove — NodeSocketInterface
	**/
	function remove(socket:bpy.types.nodesocketinterface.NodeSocketInterface):Void;
	/**
		Remove all sockets from this node tree
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