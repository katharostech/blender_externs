package gpu.shader;
/**
	GPU Shader (gpu.shader)
	
	This module provides access to GPUShader internal functions.
**/
@:pythonImport("gpu.shader") extern class Module {
	/**
		Exposes the internal shader code for query.
		@param shader_name One of these builtin shader names: {
		                                    ‘2D_UNIFORM_COLOR’,
		                                    ‘2D_FLAT_COLOR’,
		                                    ‘2D_SMOOTH_COLOR’,
		                                    ‘2D_IMAGE’,
		                                    ‘3D_UNIFORM_COLOR’,
		                                    ‘3D_FLAT_COLOR’,
		                                    ‘3D_SMOOTH_COLOR’} — str
		
		@returns dict
	**/
	static function code_from_builtin(shader_name:Dynamic):Dynamic;
	/**
		Shaders that are embedded in the blender internal code.
		They all read the uniform ‘mat4 ModelViewProjectionMatrix’, which can be edited by the ‘gpu.matrix’ module.
		For more details, you can check the shader code with the function ‘gpu.shader.code_from_builtin’;
		@param shader_name One of these builtin shader names: {
		                                    ‘2D_UNIFORM_COLOR’,
		                                    ‘2D_FLAT_COLOR’,
		                                    ‘2D_SMOOTH_COLOR’,
		                                    ‘2D_IMAGE’,
		                                    ‘3D_UNIFORM_COLOR’,
		                                    ‘3D_FLAT_COLOR’,
		                                    ‘3D_SMOOTH_COLOR’} — str
		
		@returns bpy.types.GPUShader
	**/
	static function from_builtin(shader_name:Dynamic):Dynamic;
	/**
		Unbind the bound shader object.
	**/
	static function unbind():Void;
}