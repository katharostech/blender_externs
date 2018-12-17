package bpy.types.meshedges;
/**
	Collection of mesh edges
**/
@:native("bpy.types.MeshEdges") extern class MeshEdges {
	/**
		add
		@param count Count, Number of edges to add — int in [0, inf]
	**/
	function add(count:Int):Void;
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