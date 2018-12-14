package bpy.types.compositornodeoutputfilelayerslots;
/**
	Collection of File Output node slots
**/
@:pythonImport("bpy.types.CompositorNodeOutputFileLayerSlots") extern class CompositorNodeOutputFileLayerSlots {
	/**
		Add a file slot to this node
		@param name Name — string, (never None)
		
		@returns NodeSocket
	**/
	function new(name:String):bpy.types.nodesocket.NodeSocket;
	/**
		Remove a file slot from this node
		@param socket The socket to remove — NodeSocket
	**/
	function remove(socket:Dynamic):Void;
	/**
		Remove all file slots from this node
	**/
	function clear():Void;
	/**
		Move a file slot to another position
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