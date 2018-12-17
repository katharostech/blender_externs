package bpy.types.clothsolverresult;
/**
	Result of cloth solver iteration
**/
@:native("bpy.types.ClothSolverResult") extern class ClothSolverResult {
	/**
		Average error during substeps
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var avg_error(default, never) : Float;
	/**
		Average iterations during substeps
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var avg_iterations(default, never) : Float;
	/**
		Maximum error during substeps
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var max_error(default, never) : Float;
	/**
		Maximum iterations during substeps
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var max_iterations(default, never) : Int;
	/**
		Minimum error during substeps
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var min_error(default, never) : Float;
	/**
		Minimum iterations during substeps
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var min_iterations(default, never) : Int;
	/**
		Status of the solver iteration
		
		Type: enum set in {‘SUCCESS’, ‘NUMERICAL_ISSUE’, ‘NO_CONVERGENCE’, ‘INVALID_INPUT’}, default {‘SUCCESS’}, (readonly)
	**/
	var status(default, never) : Dynamic;
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