package bpy.types.meshloop;
/**
	Loop in a Mesh data-block
**/
@:pythonImport("bpy.types.MeshLoop") extern class MeshLoop {
	/**
		Bitangent vector of this vertex for this polygon (must be computed beforehand using calc_tangents, use it only if really needed, slower access than bitangent_sign)
		
		Type: float array of 3 items in [-1, 1], default (0.0, 0.0, 0.0), (readonly)
	**/
	var bitangent(default, never) : Array<Float>;
	/**
		Sign of the bitangent vector of this vertex for this polygon (must be computed beforehand using calc_tangents, bitangent = bitangent_sign * cross(normal, tangent))
		
		Type: float in [-1, 1], default 0.0, (readonly)
	**/
	var bitangent_sign(default, never) : Float;
	/**
		Edge index
		
		Type: int in [0, inf], default 0
	**/
	var edge_index : Int;
	/**
		Index of this loop
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var index(default, never) : Int;
	/**
		Local space unit length split normal vector of this vertex for this polygon (must be computed beforehand using calc_normals_split or calc_tangents)
		
		Type: float array of 3 items in [-1, 1], default (0.0, 0.0, 0.0)
	**/
	var normal : Array<Float>;
	/**
		Local space unit length tangent vector of this vertex for this polygon (must be computed beforehand using calc_tangents)
		
		Type: float array of 3 items in [-1, 1], default (0.0, 0.0, 0.0), (readonly)
	**/
	var tangent(default, never) : Array<Float>;
	/**
		Vertex index
		
		Type: int in [0, inf], default 0
	**/
	var vertex_index : Int;
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