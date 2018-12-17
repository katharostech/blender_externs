package gpu.matrix;
/**
	GPU Matrix (gpu.matrix)
	
	This module provides access to the matrix stack.
**/
@:pythonImport("gpu.matrix") extern class Module {
	/**
		Return a copy of the model-view matrix.
		
		@returns mathutils.Matrix
	**/
	static function get_model_view_matrix():mathutils.matrix.Matrix;
	/**
		Return a copy of the normal matrix.
		
		@returns mathutils.Matrix
	**/
	static function get_normal_matrix():mathutils.matrix.Matrix;
	/**
		Return a copy of the projection matrix.
		
		@returns mathutils.Matrix
	**/
	static function get_projection_matrix():mathutils.matrix.Matrix;
	/**
		Empty stack and set to identity.
	**/
	static function load_identity():Void;
	/**
		Load a matrix into the stack.
		@param matrix A 4x4 matrix. — mathutils.Matrix
	**/
	static function load_matrix(matrix:Dynamic):Void;
	/**
		Load a projection matrix into the stack.
		@param matrix A 4x4 matrix. — mathutils.Matrix
	**/
	static function load_projection_matrix(matrix:Dynamic):Void;
	/**
		Multiply the current stack matrix.
		@param matrix A 4x4 matrix. — mathutils.Matrix
	**/
	static function multiply_matrix(matrix:Dynamic):Void;
	/**
		Remove the last model-view matrix from the stack.
	**/
	static function pop():Void;
	/**
		Remove the last projection matrix from the stack.
	**/
	static function pop_projection():Void;
	/**
		Add to the model-view matrix stack.
	**/
	static function push():Void;
	/**
		Context manager to ensure balanced push/pop calls, even in the case of an error.
	**/
	static function push_pop():Void;
	/**
		Context manager to ensure balanced push/pop calls, even in the case of an error.
	**/
	static function push_pop_projection():Void;
	/**
		Add to the projection matrix stack.
	**/
	static function push_projection():Void;
	/**
		Empty stack and set to identity.
	**/
	static function reset():Void;
	/**
		Scale the current stack matrix.
		@param scale Scale the current stack matrix. — sequence of 2 or 3 floats
	**/
	static function scale(scale:Dynamic):Void;
	/**
		
		@param scale Scale the current stack matrix. — float
	**/
	static function scale_uniform(scale:Float):Void;
	/**
		Scale the current stack matrix.
		@param offset Translate the current stack matrix. — sequence of 2 or 3 floats
	**/
	static function translate(offset:Dynamic):Void;
}