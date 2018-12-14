package bpy.types.meshvertex;
/**
	Vertex in a Mesh data-block
**/
@:pythonImport("bpy.types.MeshVertex") extern class MeshVertex {
	/**
		Weight used by the Bevel modifier ‘Only Vertices’ option
		
		Type: float in [-inf, inf], default 0.0
	**/
	var bevel_weight : Float;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var co : Array<Float>;
	/**
		Weights for the vertex groups this vertex is member of
		
		Type: bpy_prop_collection of VertexGroupElement, (readonly)
	**/
	var groups(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		Index of this vertex
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var index(default, never) : Int;
	/**
		Vertex Normal
		
		Type: float array of 3 items in [-1, 1], default (0.0, 0.0, 0.0)
	**/
	var normal : Array<Float>;
	/**
		
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		For meshes with modifiers applied, the coordinate of the vertex with no deforming modifiers applied, as used for generated texture coordinates
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0), (readonly)
	**/
	var undeformed_co(default, never) : Array<Float>;
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