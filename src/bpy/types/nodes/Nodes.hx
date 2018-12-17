package bpy.types.nodes;
/**
	Collection of Nodes
**/
@:native("bpy.types.Nodes") extern class Nodes {
	/**
		Active node in this tree
		
		Type: Node
	**/
	var active : bpy.types.node.Node;
	/**
		Add a node to this node tree
		@param type Type, Type of node to add (Warning: should be same as node.bl_idname, not node.type!) — string, (never None)
		
		@returns Node
	**/
	function pyNew(type:String):bpy.types.node.Node;
	/**
		Remove a node from this node tree
		@param node The node to remove — Node, (never None)
	**/
	function remove(node:Dynamic):Void;
	/**
		Remove all nodes from this node tree
	**/
	function clear():Void;
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