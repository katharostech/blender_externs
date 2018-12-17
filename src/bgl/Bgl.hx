package bgl;
/**
	The Buffer object is simply a block of memory that is delineated and initialized by the
	user. Many OpenGL functions return data to a C-style pointer, however, because this
	is not possible in python the Buffer object can be used to this end. Wherever pointer
	notation is used in the OpenGL functions the Buffer object can be used in it’s bgl
	wrapper. In some instances the Buffer object will need to be initialized with the template
	parameter, while in other instances the user will want to create just a blank buffer
	which will be zeroed by default.
**/
@:native("bgl.Buffer") extern class Buffer {
	/**
		The number of dimensions of the Buffer.
	**/
	var dimensions : Dynamic;
	/**
		The contents of the Buffer as a python list.
	**/
	function to_list():Void;
	/**
		This will create a new Buffer object for use with other bgl OpenGL commands.
		Only the type of argument to store in the buffer and the dimensions of the buffer
		are necessary. Buffers are zeroed by default unless a template is supplied, in
		which case the buffer is initialized to the template.
		@param type The format to store data in. The type should be one of
		                                                GL_BYTE, GL_SHORT, GL_INT, or GL_FLOAT. — int
		@param dimensions If the dimensions are specified as an int a linear array will
		                                                be created for the buffer. If a sequence is passed for the dimensions, the buffer
		                                                becomes n-Dimensional, where n is equal to the number of parameters passed in the
		                                                sequence. Example: [256,2] is a two- dimensional buffer while [256,256,4] creates
		                                                a three- dimensional buffer. You can think of each additional dimension as a sub-item
		                                                of the dimension to the left. i.e. [10,2] is a 10 element array each with 2 sub-items.
		                                                [(0,0), (0,1), (1,0), (1,1), (2,0), …] etc. — An int or sequence object specifying the dimensions of the buffer.
		@param template A sequence of matching dimensions which will be used to initialize
		                                                the Buffer. If a template is not passed in all fields will be initialized to 0. — A python sequence object (optional)
		
		@returns Buffer object
	**/
	function __init__(type,dimensions,template=None):(type:Int, dimensions:Dynamic, template:Dynamic):Dynamic;
}