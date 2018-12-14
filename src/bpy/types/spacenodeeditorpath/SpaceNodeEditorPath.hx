package bpy.types.spacenodeeditorpath;
/**
	Get the node tree path as a string
**/
@:pythonImport("bpy.types.SpaceNodeEditorPath") extern class SpaceNodeEditorPath {
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var to_string(default, never) : String;
	/**
		Reset the node tree path
	**/
	function clear():Void;
	/**
		Set the root node tree
		@param node_tree Node Tree — NodeTree
	**/
	function start(node_tree:Dynamic):Void;
	/**
		Append a node group tree to the path
		@param node_tree Node Tree, Node tree to append to the node editor path — NodeTree
		@param node Node, Group node linking to this node tree — Node, (optional)
	**/
	function append(node_tree:Dynamic, node:Dynamic):Void;
	/**
		Remove the last node tree from the path
	**/
	function pop():Void;
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