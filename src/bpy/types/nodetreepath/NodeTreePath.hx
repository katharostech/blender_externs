package bpy.types.nodetreepath;
/**
	Element of the node space tree path
**/
@:pythonImport("bpy.types.NodeTreePath") extern class NodeTreePath {
	/**
		Base node tree from context
		
		Type: NodeTree, (readonly)
	**/
	var node_tree(default, never) : bpy.types.nodetree.NodeTree;
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