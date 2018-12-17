package bpy.types.meshpolygons;
/**
	Collection of mesh polygons
**/
@:native("bpy.types.MeshPolygons") extern class MeshPolygons {
	/**
		The active polygon for this mesh
		
		Type: int in [-inf, inf], default 0
	**/
	var active : Int;
	/**
		add
		@param count Count, Number of polygons to add — int in [0, inf]
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