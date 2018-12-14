package gpu.types;
/**
	Reusable container for drawable geometry.
**/
@:pythonImport("gpu.types.GPUBatch") extern class GPUBatch {
	/**
		Run the drawing program with the parameters assigned to the batch.
		@param program Program that performs the drawing operations.
		                                        If None is passed, the last program setted to this batch will run. — gpu.types.GPUShader
	**/
	function draw(program:Dynamic):Void;
	/**
		Assign a shader to this batch that will be used for drawing when not overwritten later.
		Note: This method has to be called in the draw context that the batch will be drawn in.
		This function does not need to be called when you always set the shader when calling batch.draw.
		@param program The program/shader the batch will use in future draw calls. — gpu.types.GPUShader
	**/
	function program_set(program:Dynamic):Void;
	/**
		Add another vertex buffer to the Batch.
		It is not possible to add more vertices to the batch using this method.
		Instead it can be used to add more attributes to the existing vertices.
		A good use case would be when you have a separate vertex buffer for vertex positions and vertex normals.
		Current a batch can have at most 3 vertex buffers.
		@param buf The vertex buffer that will be added to the batch. — gpu.types.GPUVertBuf
	**/
	function vertbuf_add(buf:Dynamic):Void;
}/**
	Contains an index buffer.
**/
@:pythonImport("gpu.types.GPUIndexBuf") extern class GPUIndexBuf {

}/**
	This object gives access to off screen buffers.
**/
@:pythonImport("gpu.types.GPUOffScreen") extern class GPUOffScreen {
	/**
		Bind the offscreen object.
		To make sure that the offscreen gets unbind whether an exception occurs or not, pack it into a with statement.
		@param save Save the current OpenGL state, so that it can be restored when unbinding. — bool
	**/
	function bind(save:Dynamic):Void;
	/**
		Draw the 3d viewport in the offscreen object.
		@param scene Scene to draw. — bpy.types.Scene
		@param view_layer View layer to draw. — bpy.types.ViewLayer
		@param view3d 3D View to get the drawing settings from. — bpy.types.SpaceView3D
		@param region Region of the 3D View (required as temporary draw target). — bpy.types.Region
		@param view_matrix View Matrix (e.g. camera.matrix_world.inverted()). — mathutils.Matrix
		@param projection_matrix Projection Matrix (e.g. camera.calc_matrix_camera(...)). — mathutils.Matrix
	**/
	function draw_view3d(scene:Dynamic, view_layer:Dynamic, view3d:Dynamic, region:Dynamic, view_matrix:Dynamic, projection_matrix:Dynamic):Void;
	/**
		Free the offscreen object.
		The framebuffer, texture and render objects will no longer be accessible.
	**/
	function free():Void;
	/**
		Unbind the offscreen object.
		@param restore Restore the OpenGL state, can only be used when the state has been saved before. — bool
	**/
	function unbind(restore:Dynamic):Void;
	/**
		OpenGL bindcode for the color texture.
		
		Type: int
	**/
	var color_texture : Dynamic;
	/**
		Height of the texture.
		
		Type: int
	**/
	var height : Dynamic;
	/**
		Width of the texture.
		
		Type: int
	**/
	var width : Dynamic;
}/**
	GPUShader combines multiple GLSL shaders into a program used for drawing.
	It must contain a vertex and fragment shaders, with an optional geometry shader.
	
	The GLSL #version directive is automatically included at the top of shaders, and set to 330.
	Some preprocessor directives are automatically added according to the Operating System or availability:
	GPU_ATI, GPU_NVIDIA and GPU_INTEL.
	
	The following extensions are enabled by default if supported by the GPU:
	GL_ARB_texture_gather and GL_ARB_texture_query_lod.
	
	To debug shaders, use the –debug-gpu-shaders command line option   to see full GLSL shader compilation and linking errors.
**/
@:pythonImport("gpu.types.GPUShader") extern class GPUShader {
	/**
		Get attribute location by name.
		@param name The name of the attribute variable whose location is to be queried. — str
		
		@returns int
	**/
	function attr_from_name(name:Dynamic):Dynamic;
	/**
		Bind the shader object. Required to be able to change uniforms of this shader.
	**/
	function bind():Void;
	/**
		Build a new format based on the attributes of the shader.
		
		@returns GPUVertFormat
	**/
	function calc_format():Dynamic;
	/**
		Get uniform block location by name.
		@param name Name of the uniform block variable whose location is to be queried. — str
		
		@returns int
	**/
	function uniform_block_from_name(name:Dynamic):Dynamic;
	/**
		Specify the value of a uniform variable for the current program object.
		@param name Name of the uniform variable whose value is to be changed. — str
		@param seq Value that will be used to update the specified uniform variable. — sequence of bools
	**/
	function uniform_bool(name:Dynamic, seq:Dynamic):Void;
	/**
		Specify the value of a uniform variable for the current program object.
		@param name Name of the uniform variable whose value is to be changed. — str
		@param value Value that will be used to update the specified uniform variable. — single number or sequence of numbers
	**/
	function uniform_float(name:Dynamic, value:Dynamic):Void;
	/**
		Get uniform location by name.
		@param name Name of the uniform variable whose location is to be queried. — str
		
		@returns int
	**/
	function uniform_from_name(name:Dynamic):Dynamic;
	/**
		Specify the value of a uniform variable for the current program object.
		@param name name of the uniform variable whose value is to be changed. — str
		@param seq Value that will be used to update the specified uniform variable. — sequence of numbers
	**/
	function uniform_int(name:Dynamic, seq:Dynamic):Void;
	/**
		Set the buffer to fill the uniform.
		@param location Location of the uniform variable to be modified. — int
		@param buffer The data that should be set. Can support the buffer protocol. — sequence of floats
		@param length Size of the uniform data type:1: float2: vec2 or float[2]3: vec3 or float[3]4: vec4 or float[4]9: mat316: mat4 — int
		@param count Specifies the number of elements, vector or matrices that are to be modified. — int
	**/
	function uniform_vector_float(location:Dynamic, buffer:Dynamic, length:Dynamic, count:Dynamic):Void;
	/**
		See GPUShader.uniform_vector_float(…) description.
	**/
	function uniform_vector_int():Void;
	/**
		The name of the program object for use by the OpenGL API (read-only).
		
		Type: int
	**/
	var program : Dynamic;
}/**
	Contains a VBO.
**/
@:pythonImport("gpu.types.GPUVertBuf") extern class GPUVertBuf {
	/**
		Insert data into the buffer for a single attribute.
		@param id Either the name or the id of the attribute. — int or str
		@param data Sequence of data that should be stored in the buffer — sequence of values or tuples
	**/
	function attr_fill(id:Int, data:Dynamic):Void;
}/**
	This object contains information about the structure of a vertex buffer.
**/
@:pythonImport("gpu.types.GPUVertFormat") extern class GPUVertFormat {
	/**
		Add a new attribute to the format.
		@param id Name the attribute. Often position, normal, … — str
		@param comp_type The data type that will be used store the value in memory.
		                                                Possible values are I8, U8, I16, U16, I32, U32, F32 and I10. — str
		@param len How many individual values the attribute consists of (e.g. 2 for uv coordinates). — int
		@param fetch_mode How values from memory will be converted when used in the shader.
		                                                This is mainly useful for memory optimizations when you want to store values with reduced precision.
		                                                E.g. you can store a float in only 1 byte but it will be converted to a normal 4 byte float when used.
		                                                Possible values are FLOAT, INT, INT_TO_FLOAT_UNIT and INT_TO_FLOAT. — str
	**/
	function attr_add(id:Dynamic, comp_type:Dynamic, len:Dynamic, fetch_mode:Dynamic):Void;
}