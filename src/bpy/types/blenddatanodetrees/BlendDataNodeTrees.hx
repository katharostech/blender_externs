package bpy.types.blenddatanodetrees;
@:enum abstract Enum1(String) from String to String {
	var DUMMY : String = "DUMMY";
}/**
	Collection of node trees
**/
@:pythonImport("bpy.types.BlendDataNodeTrees") extern class BlendDataNodeTrees {
	/**
		Add a new node tree to the main database
		@param name New name for the data-block — string, (never None)
		@param type Type, The type of node_group to add — enum in ['DUMMY']
		
		@returns NodeTree
	**/
	function new(name:String, type:bpy.types.blenddatanodetrees.BlendDataNodeTrees.Enum1):bpy.types.nodetree.NodeTree;
	/**
		Remove a node tree from the current blendfile
		@param tree Node tree to remove — NodeTree, (never None)
		@param do_unlink Unlink all usages of this node tree before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this node tree — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this node tree — boolean, (optional)
	**/
	function remove(tree:bpy.types.nodetree.NodeTree, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Dynamic):Void;
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