package bpy.types.gpencilvertexgroupelement;
/**
	Weight value of a vertex in a vertex group
**/
@:pythonImport("bpy.types.GpencilVertexGroupElement") extern class GpencilVertexGroupElement {
	/**
		
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var group(default, never) : Int;
	/**
		Vertex Weight
		
		Type: float in [0, 1], default 0.0
	**/
	var weight : Float;
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