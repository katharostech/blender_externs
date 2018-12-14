package gpu_extras.batch;
/**
	gpu_extras submodule (gpu_extras.batch)
**/
@:pythonImport("gpu_extras.batch") extern class Module {
	/**
		Return a batch already configured and compatible with the shader.
		@param shader shader for which a compatible format will be computed. — gpu.types.GPUShader
		@param type “‘POINTS’, ‘LINES’, ‘TRIS’ or ‘LINES_ADJ’”. — str
		@param content Maps the name of the shader attribute with the data to fill the vertex buffer. — dict
		
		@returns gpu.types.Batch
	**/
	static function batch_for_shader(shader:Dynamic, type:Dynamic, content:Dynamic):Dynamic;
}