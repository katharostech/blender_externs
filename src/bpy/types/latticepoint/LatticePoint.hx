package bpy.types.latticepoint;
/**
	Point in the lattice grid
**/
@:pythonImport("bpy.types.LatticePoint") extern class LatticePoint {
	/**
		Original undeformed location used to calculate the strength of the deform effect (edit/animate the Deformed Location instead)
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0), (readonly)
	**/
	var co(default, never) : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var co_deform : Array<Float>;
	/**
		Weights for the vertex groups this point is member of
		
		Type: bpy_prop_collection of VertexGroupElement, (readonly)
	**/
	var groups(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Selection status
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Softbody goal weight
		
		Type: float in [0.01, 100], default 0.0
	**/
	var weight_softbody : Float;
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