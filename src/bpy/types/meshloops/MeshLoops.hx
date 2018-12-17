package bpy.types.meshloops;
/**
	Collection of mesh loops
**/
@:native("bpy.types.MeshLoops") extern class MeshLoops {
	/**
		add
		@param count Count, Number of loops to add — int in [0, inf]
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