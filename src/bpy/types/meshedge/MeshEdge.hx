package bpy.types.meshedge;
/**
	Edge in a Mesh data-block
**/
@:pythonImport("bpy.types.MeshEdge") extern class MeshEdge {
	/**
		Weight used by the Bevel modifier
		
		Type: float in [-inf, inf], default 0.0
	**/
	var bevel_weight : Float;
	/**
		Weight used by the Subdivision Surface modifier for creasing
		
		Type: float in [0, 1], default 0.0
	**/
	var crease : Float;
	/**
		
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		Index of this edge
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var index(default, never) : Int;
	/**
		Loose edge
		
		Type: boolean, default False
	**/
	var is_loose : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Sharp edge for the Edge Split modifier
		
		Type: boolean, default False
	**/
	var use_edge_sharp : Bool;
	/**
		Edge mark for Freestyle line rendering
		
		Type: boolean, default False
	**/
	var use_freestyle_mark : Bool;
	/**
		Seam edge for UV unwrapping
		
		Type: boolean, default False
	**/
	var use_seam : Bool;
	/**
		Vertex indices
		
		Type: int array of 2 items in [0, inf], default (0, 0)
	**/
	var vertices : Array<Int>;
	/**
		(readonly)
	**/
	var key(default, never) : Dynamic;
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