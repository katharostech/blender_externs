package bpy.types.meshlooptriangle;
/**
	Tessellated triangle in a Mesh data-block
**/
@:pythonImport("bpy.types.MeshLoopTriangle") extern class MeshLoopTriangle {
	/**
		Area of this triangle
		
		Type: float in [0, inf], default 0.0, (readonly)
	**/
	var area(default, never) : Float;
	/**
		Index of this loop triangle
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var index(default, never) : Int;
	/**
		Indices of mesh loops that make up the triangle
		
		Type: int array of 3 items in [0, inf], default (0, 0, 0), (readonly)
	**/
	var loops(default, never) : Array<Int>;
	/**
		
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var material_index(default, never) : Int;
	/**
		Local space unit length normal vector for this triangle
		
		Type: float array of 3 items in [-1, 1], default (0.0, 0.0, 0.0), (readonly)
	**/
	var normal(default, never) : Array<Float>;
	/**
		Index of mesh polygon that the triangle is a part of
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var polygon_index(default, never) : Int;
	/**
		Local space unit length split normals vectors of the vertices of this triangle (must be computed beforehand using calc_normals_split or calc_tangents)
		
		Type: float multi-dimensional array of 3 * 3 items in [-1, 1], default ((0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0)), (readonly)
	**/
	var split_normals(default, never) : Array<Float>;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var use_smooth(default, never) : Bool;
	/**
		Indices of triangle vertices
		
		Type: int array of 3 items in [0, inf], default (0, 0, 0), (readonly)
	**/
	var vertices(default, never) : Array<Int>;
	/**
		The midpoint of the face.
		(readonly)
	**/
	var center(default, never) : Dynamic;
	/**
		(readonly)
	**/
	var edge_keys(default, never) : Dynamic;
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