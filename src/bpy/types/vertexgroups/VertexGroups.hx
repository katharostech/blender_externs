package bpy.types.vertexgroups;
/**
	Collection of vertex groups
**/
@:pythonImport("bpy.types.VertexGroups") extern class VertexGroups {
	/**
		Vertex groups of the object
		
		Type: VertexGroup, (readonly)
	**/
	var active(default, never) : bpy.types.vertexgroup.VertexGroup;
	/**
		Active index in vertex group array
		
		Type: int in [0, 32767], default 0
	**/
	var active_index : Int;
	/**
		Add vertex group to object
		@param name Vertex group name — string, (optional, never None)
		
		@returns VertexGroup
	**/
	function new(name:String):bpy.types.vertexgroup.VertexGroup;
	/**
		Delete vertex group from object
		@param group Vertex group to remove — VertexGroup, (never None)
	**/
	function remove(group:bpy.types.vertexgroup.VertexGroup):Void;
	/**
		Delete all vertex groups from object
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