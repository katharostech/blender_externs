package bpy.types.meshvertices;
/**
	Collection of mesh vertices
**/
@:pythonImport("bpy.types.MeshVertices") extern class MeshVertices {
	/**
		add
		@param count Count, Number of vertices to add — int in [0, inf]
	**/
	function add(count:Int):Void;
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