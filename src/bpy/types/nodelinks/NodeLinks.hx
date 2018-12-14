package bpy.types.nodelinks;
/**
	Collection of Node Links
**/
@:pythonImport("bpy.types.NodeLinks") extern class NodeLinks {
	/**
		Add a node link to this node tree
		@param input The input socket — NodeSocket, (never None)
		@param output The output socket — NodeSocket, (never None)
		@param verify_limits Verify Limits, Remove existing links if connection limit is exceeded — boolean, (optional)
		
		@returns NodeLink
	**/
	function new(input:bpy.types.nodesocket.NodeSocket, output:bpy.types.nodesocket.NodeSocket, verify_limits:Bool):bpy.types.nodelink.NodeLink;
	/**
		remove a node link from the node tree
		@param link The node link to remove — NodeLink, (never None)
	**/
	function remove(link:bpy.types.nodelink.NodeLink):Void;
	/**
		remove all node links from the node tree
	**/
	function clear():Void;
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