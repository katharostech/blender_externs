package bpy.types.greasepencilgrid;
/**
	Settings for grid and canvas in 3D viewport
**/
@:native("bpy.types.GreasePencilGrid") extern class GreasePencilGrid {
	/**
		Color for grid lines
		
		Type: float array of 3 items in [0, 1], default (0.5, 0.5, 0.5)
	**/
	var color : Array<Float>;
	/**
		Number of subdivisions in each side of symmetry line
		
		Type: int in [0, inf], default 4
	**/
	var lines : Int;
	/**
		Offset of the canvas
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var offset : Array<Float>;
	/**
		Grid scale
		
		Type: float array of 2 items in [0.01, inf], default (1.0, 1.0)
	**/
	var scale : Array<Float>;
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