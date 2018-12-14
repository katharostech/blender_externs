package bpy.types.meshpolygon;
/**
	Polygon in a Mesh data-block
**/
@:pythonImport("bpy.types.MeshPolygon") extern class MeshPolygon {
	/**
		Read only area of this polygon
		
		Type: float in [0, inf], default 0.0, (readonly)
	**/
	var area(default, never) : Float;
	/**
		Center of this polygon
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0), (readonly)
	**/
	var center(default, never) : Array<Float>;
	/**
		
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		Index of this polygon
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var index(default, never) : Int;
	/**
		Index of the first loop of this polygon
		
		Type: int in [0, inf], default 0
	**/
	var loop_start : Int;
	/**
		Number of loops used by this polygon
		
		Type: int in [0, inf], default 0
	**/
	var loop_total : Int;
	/**
		
		
		Type: int in [0, 32767], default 0
	**/
	var material_index : Int;
	/**
		Local space unit length normal vector for this polygon
		
		Type: float array of 3 items in [-1, 1], default (0.0, 0.0, 0.0), (readonly)
	**/
	var normal(default, never) : Array<Float>;
	/**
		
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Face mark for Freestyle line rendering
		
		Type: boolean, default False
	**/
	var use_freestyle_mark : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_smooth : Bool;
	/**
		Vertex indices
		
		Type: int array of 3 items in [0, inf], default (0, 0, 0)
	**/
	var vertices : Array<Int>;
	/**
		(readonly)
	**/
	var edge_keys(default, never) : Dynamic;
	/**
		(readonly)
	**/
	var loop_indices(default, never) : Dynamic;
	/**
		Invert winding of this polygon (flip its normal)
	**/
	function flip():Void;
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