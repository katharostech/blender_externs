package bgl;
/**
	OpenGL Wrapper (bgl)
	
	This module wraps OpenGL constants and functions, making them available from
	            within Blender Python.
	
	The complete list can be retrieved from the module itself, by listing its
	            contents: dir(bgl).  A simple search on the web can point to more
	            than enough material to teach OpenGL programming, from books to many
	            collections of tutorials.
	
	Here is a comprehensive <reference name="list of books" refuri="https://www.khronos.org/developers/books/">list of books</reference> (non free).
	            The <reference name="arcsynthesis tutorials" refuri="https://web.archive.org/web/20150225192611/http://www.arcsynthesis.org/gltut/index.html">arcsynthesis tutorials</reference>
	            is one of the best resources to learn modern OpenGL and
	            <reference name="g-truc" refuri="http://www.g-truc.net/post-opengl-samples.html#menu">g-truc</reference>
	            offers a set of extensive examples, including advanced features.
**/
@:pythonImport("bgl") extern class Module {
	/**
		Operate on the accumulation buffer.
		@param op The accumulation buffer operation. — Enumerated constant
		@param value a value used in the accumulation buffer operation. — float
	**/
	static function glAccum(op, value):(op:Dynamic, value:Dynamic):Void;
	/**
		Specify the alpha test function.
		@param func Specifies the alpha comparison function. — Enumerated constant
		@param ref The reference value that incoming alpha values are compared to.
		                                        Clamped between 0 and 1. — float
	**/
	static function glAlphaFunc(func, ref):(func:Dynamic, ref:Dynamic):Void;
	/**
		Determine if textures are loaded in texture memory
		@param n Specifies the number of textures to be queried. — int
		@param textures Specifies an array containing the names of the textures to be queried — bgl.Buffer object I{type GL_INT}
		@param residences An array in which the texture residence status in returned.
		                                        The residence status of a texture named by an element of textures is
		                                        returned in the corresponding element of residences. — bgl.Buffer object I{type GL_INT}(boolean)
	**/
	static function glAreTexturesResident(n, textures, residences):(n:Dynamic, textures:Dynamic, residences:Dynamic):Void;
	/**
		Delimit the vertices of a primitive or a group of like primitives
		@param mode Specifies the primitive that will be create from vertices between
		                                glBegin and glEnd. — Enumerated constant
	**/
	static function glBegin(mode):(mode:Dynamic):Void;
	/**
		Bind a named texture to a texturing target
		@param target Specifies the target to which the texture is bound. — Enumerated constant
		@param texture Specifies the name of a texture. — unsigned int
	**/
	static function glBindTexture(target, texture):(target:Dynamic, texture:Dynamic):Void;
	/**
		Draw a bitmap
		@param height Specify the pixel width and height of the bitmap image. — width,
		@param yorig Specify the location of the origin in the bitmap image. The origin is measured
		                                        from the lower left corner of the bitmap, with right and up being the positive axes. — xorig,
		@param ymove Specify the x and y offsets to be added to the current raster position after
		                                        the bitmap is drawn. — xmove,
		@param bitmap Specifies the address of the bitmap image. — bgl.Buffer object I{type GL_BYTE}
	**/
	static function glBitmap(width, height, xorig, yorig, xmove, ymove, bitmap):(height:Dynamic, yorig:Dynamic, ymove:Dynamic, bitmap:Dynamic):Void;
	/**
		Specify pixel arithmetic
		@param sfactor Specifies how the red, green, blue, and alpha source blending factors are
		                                        computed. — Enumerated constant
		@param dfactor Specifies how the red, green, blue, and alpha destination
		                                        blending factors are computed. — Enumerated constant
	**/
	static function glBlendFunc(sfactor, dfactor):(sfactor:Dynamic, dfactor:Dynamic):Void;
	/**
		Execute a display list
		@param list Specifies the integer name of the display list to be executed. — unsigned int
	**/
	static function glCallList(list):(list:Dynamic):Void;
	/**
		Execute a list of display lists
		@param n Specifies the number of display lists to be executed. — int
		@param type Specifies the type of values in lists. — Enumerated constant
		@param lists Specifies the address of an array of name offsets in the display list.
		                                        The pointer type is void because the offsets can be bytes, shorts, ints, or floats,
		                                        depending on the value of type. — bgl.Buffer object
	**/
	static function glCallLists(n, type, lists):(n:Dynamic, type:Dynamic, lists:Dynamic):Void;
	/**
		Clear buffers to preset values
		@param mask Bitwise OR of masks that indicate the buffers to be cleared. — Enumerated constant(s)
	**/
	static function glClear(mask):(mask:Dynamic):Void;
	/**
		Specify clear values for the accumulation buffer
		@param green, Specify the red, green, blue, and alpha values used when the
		                                accumulation buffer is cleared. The initial values are all 0. — red,
	**/
	static function glClearAccum(red, green, blue, alpha):(green,:Dynamic):Void;
	/**
		Specify clear values for the color buffers
		@param green, Specify the red, green, blue, and alpha values used when the
		                                color buffers are cleared. The initial values are all 0. — red,
	**/
	static function glClearColor(red, green, blue, alpha):(green,:Dynamic):Void;
	/**
		Specify the clear value for the depth buffer
		@param depth Specifies the depth value used when the depth buffer is cleared.
		                                The initial value is 1. — int
	**/
	static function glClearDepth(depth):(depth:Dynamic):Void;
	/**
		Specify the clear value for the color index buffers
		@param c Specifies the index used when the color index buffers are cleared.
		                                The initial value is 0. — float
	**/
	static function glClearIndex(c):(c:Dynamic):Void;
	/**
		Specify the clear value for the stencil buffer
		@param s Specifies the index used when the stencil buffer is cleared. The initial value is 0. — int
	**/
	static function glClearStencil(s):(s:Dynamic):Void;
	/**
		Specify a plane against which all geometry is clipped
		@param plane Specifies which clipping plane is being positioned. — Enumerated constant
		@param equation Specifies the address of an array of four double- precision
		                                        floating-point values. These values are interpreted as a plane equation. — bgl.Buffer object I{type GL_FLOAT}(double)
	**/
	static function glClipPlane (plane, equation):(plane:Dynamic, equation:Dynamic):Void;
	/**
		B{glColor3b, glColor3d, glColor3f, glColor3i, glColor3s, glColor3ub, glColor3ui, glColor3us,
		glColor4b, glColor4d, glColor4f, glColor4i, glColor4s, glColor4ub, glColor4ui, glColor4us,
		glColor3bv, glColor3dv, glColor3fv, glColor3iv, glColor3sv, glColor3ubv, glColor3uiv,
		glColor3usv, glColor4bv, glColor4dv, glColor4fv, glColor4iv, glColor4sv, glColor4ubv,
		glColor4uiv, glColor4usv}
		
		Set a new color.
		@param green, Specify new red, green, and blue values for the current color. — red,
		@param alpha Specifies a new alpha value for the current color. Included only in the
		                                        four-argument glColor4 commands. (With ‘4’ colors only) — With ‘4’ colors only
	**/
	static function glColor (red, green, blue, alpha):(green,:Dynamic, alpha:Dynamic):Void;
	/**
		Enable and disable writing of frame buffer color components
		@param green, Specify whether red, green, blue, and alpha can or cannot be
		                                written into the frame buffer. The initial values are all GL_TRUE, indicating that the
		                                color components can be written. — red,
	**/
	static function glColorMask(red, green, blue, alpha):(green,:Dynamic):Void;
	/**
		Cause a material color to track the current color
		@param face Specifies whether front, back, or both front and back material parameters should
		                                        track the current color. — Enumerated constant
		@param mode Specifies which of several material parameters track the current color. — Enumerated constant
	**/
	static function glColorMaterial(face, mode):(face:Dynamic, mode:Dynamic):Void;
	/**
		Copy pixels in the frame buffer
		
		def glCopyTexImage2D(target, level, internalformat, x, y, width, height, border):
		
		Copy pixels into a 2D texture image
		@param y Specify the window coordinates of the lower left corner of the rectangular
		                                        region of pixels to be copied. — x,
		@param width,height Specify the dimensions of the rectangular region of pixels to be copied.
		                                        Both must be non-negative. — 
		@param type Specifies whether color values, depth values, or stencil values are to be copied. — Enumerated constant
	**/
	static function glCopyPixels(x, y, width, height, type):(y:Dynamic, width,height:Dynamic, type:Dynamic):Void;
	/**
		Specify whether front- or back-facing facets can be culled
		@param mode Specifies whether front- or back-facing facets are candidates for culling. — Enumerated constant
	**/
	static function glCullFace(mode):(mode:Dynamic):Void;
	/**
		Delete a contiguous group of display lists
		@param list Specifies the integer name of the first display list to delete — unsigned int
		@param range Specifies the number of display lists to delete — int
	**/
	static function glDeleteLists(list, range):(list:Dynamic, range:Dynamic):Void;
	/**
		Delete named textures
		@param n Specifies the number of textures to be deleted — int
		@param textures Specifies an array of textures to be deleted — bgl.Buffer I{GL_INT}
	**/
	static function glDeleteTextures(n, textures):(n:Dynamic, textures:Dynamic):Void;
	/**
		Specify the value used for depth buffer comparisons
		@param func Specifies the depth comparison function. — Enumerated constant
	**/
	static function glDepthFunc(func):(func:Dynamic):Void;
	/**
		Enable or disable writing into the depth buffer
		@param flag Specifies whether the depth buffer is enabled for writing. If flag is GL_FALSE,
		                                depth buffer writing is disabled. Otherwise, it is enabled. Initially, depth buffer
		                                writing is enabled. — int (boolean)
	**/
	static function glDepthMask(flag):(flag:Int):Void;
	/**
		Specify mapping of depth values from normalized device coordinates to window coordinates
		@param zNear Specifies the mapping of the near clipping plane to window coordinates.
		                                        The initial value is 0. — int
		@param zFar Specifies the mapping of the far clipping plane to window coordinates.
		                                        The initial value is 1. — int
	**/
	static function glDepthRange(zNear, zFar):(zNear:Dynamic, zFar:Dynamic):Void;
	/**
		Disable server-side GL capabilities
		@param cap Specifies a symbolic constant indicating a GL capability. — Enumerated constant
	**/
	static function glDisable(cap):(cap:Dynamic):Void;
	/**
		Specify which color buffers are to be drawn into
		@param mode Specifies up to four color buffers to be drawn into. — Enumerated constant
	**/
	static function glDrawBuffer(mode):(mode:Dynamic):Void;
	/**
		Write a block of pixels to the frame buffer
		@param height Specify the dimensions of the pixel rectangle to be
		                                        written into the frame buffer. — width,
		@param format Specifies the format of the pixel data. — Enumerated constant
		@param type Specifies the data type for pixels. — Enumerated constant
		@param pixels Specifies a pointer to the pixel data. — bgl.Buffer object
	**/
	static function glDrawPixels(width, height, format, type, pixels):(height:Dynamic, format:Dynamic, type:Dynamic, pixels:Dynamic):Void;
	/**
		B{glEdgeFlag, glEdgeFlagv}
		
		Flag edges as either boundary or non-boundary
		@param flag Specifies the current edge flag value.The initial value is GL_TRUE. — Depends of function prototype
	**/
	static function glEdgeFlag (flag):(flag:Dynamic):Void;
	/**
		Enable server-side GL capabilities
		@param cap Specifies a symbolic constant indicating a GL capability. — Enumerated constant
	**/
	static function glEnable(cap):(cap:Dynamic):Void;
	/**
		Delimit the vertices of a primitive or group of like primitives
	**/
	static function glEnd():():Void;
	/**
		Create or replace a display list
	**/
	static function glEndList():():Void;
	/**
		B{glEvalCoord1d, glEvalCoord1f, glEvalCoord2d, glEvalCoord2f, glEvalCoord1dv, glEvalCoord1fv,
		glEvalCoord2dv, glEvalCoord2fv}
		
		Evaluate enabled one- and two-dimensional maps
		@param u Specifies a value that is the domain coordinate u to the basis function defined
		                                        in a previous glMap1 or glMap2 command. If the function prototype ends in ‘v’ then
		                                        u specifies a pointer to an array containing either one or two domain coordinates. The first
		                                        coordinate is u. The second coordinate is v, which is present only in glEvalCoord2 versions. — Depends on function prototype.
		@param v Specifies a value that is the domain coordinate v to the basis function defined
		                                        in a previous glMap2 command. This argument is not present in a glEvalCoord1 command. — Depends on function prototype. (only with '2' prototypes)
	**/
	static function glEvalCoord (u,v):(u:Dynamic, v:Dynamic):Void;
	/**
		B{glEvalMesh1 or glEvalMesh2}
		
		Compute a one- or two-dimensional grid of points or lines
		@param mode In glEvalMesh1, specifies whether to compute a one-dimensional
		                                        mesh of points or lines. — Enumerated constant
		@param i2 Specify the first and last integer values for the grid domain variable i. — i1,
	**/
	static function glEvalMesh (mode, i1, i2):(mode:Dynamic, i2:Dynamic):Void;
	/**
		B{glEvalPoint1 and glEvalPoint2}
		
		Generate and evaluate a single point in a mesh
		@param i Specifies the integer value for grid domain variable i. — int
		@param j Specifies the integer value for grid domain variable j (glEvalPoint2 only). — int (only with '2' prototypes)
	**/
	static function glEvalPoint (i, j):(i:Dynamic, j:Int):Void;
	/**
		Controls feedback mode
		@param size Specifies the maximum number of values that can be written into buffer. — int
		@param type Specifies a symbolic constant that describes the information that
		                                        will be returned for each vertex. — Enumerated constant
		@param buffer Returns the feedback data. — bgl.Buffer object I{GL_FLOAT}
	**/
	static function glFeedbackBuffer (size, type, buffer):(size:Dynamic, type:Dynamic, buffer:Dynamic):Void;
	/**
		Block until all GL execution is complete
	**/
	static function glFinish():():Void;
	/**
		Force Execution of GL commands in finite time
	**/
	static function glFlush():():Void;
	/**
		B{glFogf, glFogi, glFogfv, glFogiv}
		
		Specify fog parameters
		@param pname Specifies a single-valued fog parameter. If the function prototype
		                                        ends in ‘v’ specifies a fog parameter. — Enumerated constant
		@param param Specifies the value or values to be assigned to pname. GL_FOG_COLOR
		                                        requires an array of four values. All other parameters accept an array containing
		                                        only a single value. — Depends on function prototype.
	**/
	static function glFog (pname, param):(pname:Dynamic, param:Dynamic):Void;
	/**
		Define front- and back-facing polygons
		@param mode Specifies the orientation of front-facing polygons. — Enumerated constant
	**/
	static function glFrontFace(mode):(mode:Dynamic):Void;
	/**
		Multiply the current matrix by a perspective matrix
		@param right Specify the coordinates for the left and right vertical
		                                        clipping planes. — left,
		@param bottom Specify the coordinates for the bottom and top horizontal
		                                        clipping planes. — top,
		@param zFar Specify the distances to the near and far depth clipping planes.
		                                        Both distances must be positive. — zNear,
	**/
	static function glFrustum(left, right, bottom, top, zNear, zFar):(right:Dynamic, bottom:Dynamic, zFar:Dynamic):Void;
	/**
		Generate a contiguous set of empty display lists
		@param range Specifies the number of contiguous empty display lists to be generated. — int
	**/
	static function glGenLists(range):(range:Dynamic):Void;
	/**
		Generate texture names
		@param n Specifies the number of textures name to be generated. — int
		@param textures Specifies an array in which the generated textures names are stored. — bgl.Buffer object I{type GL_INT}
	**/
	static function glGenTextures(n, textures):(n:Dynamic, textures:Dynamic):Void;
	/**
		B{glGetBooleanv, glGetfloatv, glGetFloatv, glGetIntegerv}
		
		Return the value or values of a selected parameter
		@param pname Specifies the parameter value to be returned. — Enumerated constant
		@param param Returns the value or values of the specified parameter. — Depends on function prototype.
	**/
	static function glGet (pname, param):(pname:Dynamic, param:Dynamic):Void;
	/**
		Return the coefficients of the specified clipping plane
		@param plane Specifies a clipping plane. The number of clipping planes depends on the
		                                        implementation, but at least six clipping planes are supported. They are identified by
		                                        symbolic names of the form GL_CLIP_PLANEi where 0 &lt; i &lt; GL_MAX_CLIP_PLANES. — Enumerated constant
		@param equation Returns four float (double)-precision values that are the coefficients of the
		                                        plane equation of plane in eye coordinates. The initial value is (0, 0, 0, 0). — bgl.Buffer object I{type GL_FLOAT}
	**/
	static function glGetClipPlane(plane, equation):(plane:Dynamic, equation:Dynamic):Void;
	/**
		Return error information
	**/
	static function glGetError():():Void;
	/**
		B{glGetLightfv and glGetLightiv}
		
		Return light source parameter values
		@param light Specifies a light source. The number of possible lights depends on the
		                                        implementation, but at least eight lights are supported. They are identified by symbolic
		                                        names of the form GL_LIGHTi where 0 &lt; i &lt; GL_MAX_LIGHTS. — Enumerated constant
		@param pname Specifies a light source parameter for light. — Enumerated constant
		@param params Returns the requested data. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glGetLight (light, pname, params):(light:Dynamic, pname:Dynamic, params:Dynamic):Void;
	/**
		B{glGetMapdv, glGetMapfv, glGetMapiv}
		
		Return evaluator parameters
		@param target Specifies the symbolic name of a map. — Enumerated constant
		@param query Specifies which parameter to return. — Enumerated constant
		@param v Returns the requested data. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glGetMap (target, query, v):(target:Dynamic, query:Dynamic, v:Dynamic):Void;
	/**
		B{glGetMaterialfv, glGetMaterialiv}
		
		Return material parameters
		@param face Specifies which of the two materials is being queried.
		                                        representing the front and back materials, respectively. — Enumerated constant
		@param pname Specifies the material parameter to return. — Enumerated constant
		@param params Returns the requested data. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glGetMaterial (face, pname, params):(face:Dynamic, pname:Dynamic, params:Dynamic):Void;
	/**
		B{glGetPixelMapfv, glGetPixelMapuiv, glGetPixelMapusv}
		
		Return the specified pixel map
		@param map Specifies the name of the pixel map to return. — Enumerated constant
		@param values Returns the pixel map contents. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glGetPixelMap (map, values):(map:Dynamic, values:Dynamic):Void;
	/**
		Return the polygon stipple pattern
		@param mask Returns the stipple pattern. The initial value is all 1’s. — bgl.Buffer object I{type GL_BYTE}
	**/
	static function glGetPolygonStipple(mask):(mask:Dynamic):Void;
	/**
		Return a string describing the current GL connection
		@param name Specifies a symbolic constant. — Enumerated constant
	**/
	static function glGetString(name):(name:Dynamic):Void;
	/**
		B{glGetTexEnvfv, glGetTexEnviv}
		
		Return texture environment parameters
		@param target Specifies a texture environment. Must be GL_TEXTURE_ENV. — Enumerated constant
		@param pname Specifies the symbolic name of a texture environment parameter. — Enumerated constant
		@param params Returns the requested data. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glGetTexEnv (target, pname, params):(target:Dynamic, pname:Dynamic, params:Dynamic):Void;
	/**
		B{glGetTexGendv, glGetTexGenfv, glGetTexGeniv}
		
		Return texture coordinate generation parameters
		@param coord Specifies a texture coordinate. — Enumerated constant
		@param pname Specifies the symbolic name of the value(s) to be returned. — Enumerated constant
		@param params Returns the requested data. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glGetTexGen (coord, pname, params):(coord:Dynamic, pname:Dynamic, params:Dynamic):Void;
	/**
		Return a texture image
		@param target Specifies which texture is to be obtained. — Enumerated constant
		@param level Specifies the level-of-detail number of the desired image.
		                                        Level 0 is the base image level. Level n is the nth mipmap reduction image. — int
		@param format Specifies a pixel format for the returned data. — Enumerated constant
		@param type Specifies a pixel type for the returned data. — Enumerated constant
		@param pixels Returns the texture image. Should be a pointer to an array of the
		                                        type specified by type — bgl.Buffer object.
	**/
	static function glGetTexImage(target, level, format, type, pixels):(target:Dynamic, level:Dynamic, format:Dynamic, type:Dynamic, pixels:Dynamic):Void;
	/**
		B{glGetTexLevelParameterfv, glGetTexLevelParameteriv}
		
		return texture parameter values for a specific level of detail
		@param target Specifies the symbolic name of the target texture. — Enumerated constant
		@param level Specifies the level-of-detail number of the desired image.
		                                        Level 0 is the base image level. Level n is the nth mipmap reduction image. — int
		@param pname Specifies the symbolic name of a texture parameter. — Enumerated constant
		@param params Returns the requested data. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glGetTexLevelParameter (target, level, pname, params):(target:Dynamic, level:Dynamic, pname:Dynamic, params:Dynamic):Void;
	/**
		B{glGetTexParameterfv, glGetTexParameteriv}
		
		Return texture parameter values
		@param target Specifies the symbolic name of the target texture. — Enumerated constant
		@param pname Specifies the symbolic name the target texture. — Enumerated constant
		@param params Returns the texture parameters. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glGetTexParameter (target, pname, params):(target:Dynamic, pname:Dynamic, params:Dynamic):Void;
	/**
		Specify implementation-specific hints
		@param target Specifies a symbolic constant indicating the behavior to be
		                                        controlled. — Enumerated constant
		@param mode Specifies a symbolic constant indicating the desired behavior. — Enumerated constant
	**/
	static function glHint(target, mode):(target:Dynamic, mode:Dynamic):Void;
	/**
		B{glIndexd, glIndexf, glIndexi, glIndexs,  glIndexdv, glIndexfv, glIndexiv, glIndexsv}
		
		Set the current color index
		@param c Specifies a pointer to a one element array that contains the new value for
		                                the current color index. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glIndex(c):(c:Dynamic):Void;
	/**
		Control the writing of individual bits in the color index buffers
		@param mask Specifies a bit mask to enable and disable the writing of individual bits
		                                in the color index buffers.
		                                Initially, the mask is all 1’s. — int
	**/
	static function glIndexMask(mask):(mask:Dynamic):Void;
	/**
		Initialize the name stack
	**/
	static function glInitNames():():Void;
	/**
		Test whether a capability is enabled
		@param cap Specifies a constant representing a GL capability. — Enumerated constant
	**/
	static function glIsEnabled(cap):(cap:Dynamic):Void;
	/**
		Determine if a name corresponds to a display-list
		@param list Specifies a potential display-list name. — unsigned int
	**/
	static function glIsList(list):(list:Dynamic):Void;
	/**
		Determine if a name corresponds to a texture
		@param texture Specifies a value that may be the name of a texture. — unsigned int
	**/
	static function glIsTexture(texture):(texture:Dynamic):Void;
	/**
		B{glLightf,glLighti, glLightfv, glLightiv}
		
		Set the light source parameters
		@param light Specifies a light. The number of lights depends on the implementation,
		                                        but at least eight lights are supported. They are identified by symbolic names of the
		                                        form GL_LIGHTi where 0 &lt; i &lt; GL_MAX_LIGHTS. — Enumerated constant
		@param pname Specifies a single-valued light source parameter for light. — Enumerated constant
		@param param Specifies the value that parameter pname of light source light will be set to.
		                                        If function prototype ends in ‘v’ specifies a pointer to the value or values that
		                                        parameter pname of light source light will be set to. — Depends on function prototype.
	**/
	static function glLight (light, pname, param):(light:Dynamic, pname:Dynamic, param:Dynamic):Void;
	/**
		B{glLightModelf, glLightModeli, glLightModelfv, glLightModeliv}
		
		Set the lighting model parameters
		@param pname Specifies a single-value light model parameter. — Enumerated constant
		@param param Specifies the value that param will be set to. If function prototype ends in ‘v’
		                                        specifies a pointer to the value or values that param will be set to. — Depends on function prototype.
	**/
	static function glLightModel (pname, param):(pname:Dynamic, param:Dynamic):Void;
	/**
		Specify the line stipple pattern
		@param factor Specifies a multiplier for each bit in the line stipple pattern.
		                                        If factor is 3, for example, each bit in the pattern is used three times before
		                                        the next bit in the pattern is used. factor is clamped to the range [1, 256] and
		                                        defaults to 1. — int
		@param pattern Specifies a 16-bit integer whose bit pattern determines which fragments
		                                        of a line will be drawn when the line is rasterized. Bit zero is used first; the default
		                                        pattern is all 1’s. — unsigned short int
	**/
	static function glLineStipple(factor, pattern):(factor:Dynamic, pattern:Dynamic):Void;
	/**
		Specify the width of rasterized lines.
		@param width Specifies the width of rasterized lines. The initial value is 1. — float
	**/
	static function glLineWidth(width):(width:Dynamic):Void;
	/**
		Set the display-list base for glCallLists
		@param base Specifies an integer offset that will be added to glCallLists
		                                offsets to generate display-list names. The initial value is 0. — unsigned int
	**/
	static function glListBase(base):(base:Dynamic):Void;
	/**
		Replace the current matrix with the identity matrix
	**/
	static function glLoadIdentity():():Void;
	/**
		B{glLoadMatrixd, glLoadMatixf}
		
		Replace the current matrix with the specified matrix
		@param m Specifies a pointer to 16 consecutive values, which are used as the elements
		                                of a 4x4 column-major matrix. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glLoadMatrix (m):(m:Dynamic):Void;
	/**
		Load a name onto the name stack.
		@param name Specifies a name that will replace the top value on the name stack. — unsigned int
	**/
	static function glLoadName(name):(name:Dynamic):Void;
	/**
		Specify a logical pixel operation for color index rendering
		@param opcode Specifies a symbolic constant that selects a logical operation. — Enumerated constant
	**/
	static function glLogicOp(opcode):(opcode:Dynamic):Void;
	/**
		B{glMap1d, glMap1f}
		
		Define a one-dimensional evaluator
		@param target Specifies the kind of values that are generated by the evaluator. — Enumerated constant
		@param u1,u2 Specify a linear mapping of u, as presented to glEvalCoord1, to ^, t
		                                        he variable that is evaluated by the equations specified by this command. — 
		@param stride Specifies the number of floats or float (double)s between the beginning
		                                        of one control point and the beginning of the next one in the data structure
		                                        referenced in points. This allows control points to be embedded in arbitrary data
		                                        structures. The only constraint is that the values for a particular control point must
		                                        occupy contiguous memory locations. — int
		@param order Specifies the number of control points. Must be positive. — int
		@param points Specifies a pointer to the array of control points. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glMap1 (target, u1, u2, stride, order, points):(target:Dynamic, u1,u2:Dynamic, stride:Dynamic, order:Dynamic, points:Dynamic):Void;
	/**
		B{glMap2d, glMap2f}
		
		Define a two-dimensional evaluator
		@param target Specifies the kind of values that are generated by the evaluator. — Enumerated constant
		@param u1,u2 Specify a linear mapping of u, as presented to glEvalCoord2, to ^, t
		                                        he variable that is evaluated by the equations specified by this command. Initially
		                                        u1 is 0 and u2 is 1. — 
		@param ustride Specifies the number of floats or float (double)s between the beginning
		                                        of control point R and the beginning of control point R ij, where i and j are the u
		                                        and v control point indices, respectively. This allows control points to be embedded
		                                        in arbitrary data structures. The only constraint is that the values for a particular
		                                        control point must occupy contiguous memory locations. The initial value of ustride is 0. — int
		@param uorder Specifies the dimension of the control point array in the u axis.
		                                        Must be positive. The initial value is 1. — int
		@param v2 Specify a linear mapping of v, as presented to glEvalCoord2,
		                                        to ^, one of the two variables that are evaluated by the equations
		                                        specified by this command. Initially, v1 is 0 and v2 is 1. — v1,
		@param vstride Specifies the number of floats or float (double)s between the
		                                        beginning of control point R and the beginning of control point R ij,
		                                        where i and j are the u and v control point(indices, respectively.
		                                        This allows control points to be embedded in arbitrary data structures.
		                                        The only constraint is that the values for a particular control point must
		                                        occupy contiguous memory locations. The initial value of vstride is 0. — int
		@param vorder Specifies the dimension of the control point array in the v axis.
		                                        Must be positive. The initial value is 1. — int
		@param points Specifies a pointer to the array of control points. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glMap2 (target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points):(target:Dynamic, u1,u2:Dynamic, ustride:Dynamic, uorder:Dynamic, v2:Dynamic, vstride:Dynamic, vorder:Dynamic, points:Dynamic):Void;
	/**
		B{glMapGrid1d, glMapGrid1f, glMapGrid2d, glMapGrid2f}
		
		Define a one- or two-dimensional mesh
		@param un Specifies the number of partitions in the grid range interval
		                                        [u1, u2]. Must be positive. — int
		@param u2 Specify the mappings for integer grid domain values i=0 and i=un. — u1,
		@param vn Specifies the number of partitions in the grid range interval
		                                        [v1, v2] (glMapGrid2 only). — int
		@param v2 Specify the mappings for integer grid domain values j=0 and j=vn
		                                        (glMapGrid2 only). — v1,
	**/
	static function glMapGrid (un, u1,u2 ,vn, v1, v2):(un:Dynamic, u2:Dynamic, vn:Dynamic, v2:Dynamic):Void;
	/**
		Specify material parameters for the lighting model.
		@param face Specifies which face or faces are being updated. Must be one of: — Enumerated constant
		@param pname Specifies the single-valued material parameter of the face
		                                        or faces that is being updated. Must be GL_SHININESS. — Enumerated constant
		@param params Specifies the value that parameter GL_SHININESS will be set to.
		                                        If function prototype ends in ‘v’ specifies a pointer to the value or values that
		                                        pname will be set to. — int
	**/
	static function glMaterial (face, pname, params):(face:Dynamic, pname:Dynamic, params:Dynamic):Void;
	/**
		Specify which matrix is the current matrix.
		@param mode Specifies which matrix stack is the target for subsequent matrix operations. — Enumerated constant
	**/
	static function glMatrixMode(mode):(mode:Dynamic):Void;
	/**
		B{glMultMatrixd, glMultMatrixf}
		
		Multiply the current matrix with the specified matrix
		@param m Points to 16 consecutive values that are used as the elements of a 4x4 column
		                                major matrix. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glMultMatrix (m):(m:Dynamic):Void;
	/**
		Create or replace a display list
		@param list Specifies the display list name — unsigned int
		@param mode Specifies the compilation mode. — Enumerated constant
	**/
	static function glNewList(list, mode):(list:Dynamic, mode:Dynamic):Void;
	/**
		B{Normal3b, Normal3bv, Normal3d, Normal3dv, Normal3f, Normal3fv, Normal3i, Normal3iv,
		Normal3s, Normal3sv}
		
		Set the current normal vector
		@param ny, Specify the x, y, and z coordinates of the new current normal.
		                                        The initial value of the current normal is the unit vector, (0, 0, 1). — nx,
		@param v Specifies a pointer to an array of three elements: the x, y, and z coordinates
		                                        of the new current normal. — bgl.Buffer object. Depends on function prototype. (‘v’ prototypes)
	**/
	static function glNormal3 (nx, ny, nz, v):(ny,:Dynamic, v:Dynamic):Void;
	/**
		Multiply the current matrix with an orthographic matrix
		@param right Specify the coordinates for the left and
		                                        right vertical clipping planes. — left,
		@param top Specify the coordinates for the bottom and top
		                                        horizontal clipping planes. — bottom,
		@param zFar Specify the distances to the nearer and farther
		                                        depth clipping planes. These values are negative if the plane is to be behind the viewer. — zNear,
	**/
	static function glOrtho(left, right, bottom, top, zNear, zFar):(right:Dynamic, top:Dynamic, zFar:Dynamic):Void;
	/**
		Place a marker in the feedback buffer
		@param token Specifies a marker value to be placed in the feedback
		                                buffer following a GL_PASS_THROUGH_TOKEN. — float
	**/
	static function glPassThrough(token):(token:Dynamic):Void;
	/**
		B{glPixelMapfv, glPixelMapuiv, glPixelMapusv}
		
		Set up pixel transfer maps
		@param map Specifies a symbolic map name. — Enumerated constant
		@param mapsize Specifies the size of the map being defined. — int
		@param values Specifies an array of mapsize values. — bgl.Buffer object. Depends on function prototype.
	**/
	static function glPixelMap (map, mapsize, values):(map:Dynamic, mapsize:Dynamic, values:Dynamic):Void;
	/**
		B{glPixelStoref, glPixelStorei}
		
		Set pixel storage modes
		@param pname Specifies the symbolic name of the parameter to be set.
		                                        Six values affect the packing of pixel data into memory.
		                                        Six more affect the unpacking of pixel data from memory. — Enumerated constant
		@param param Specifies the value that pname is set to. — Depends on function prototype.
	**/
	static function glPixelStore (pname, param):(pname:Dynamic, param:Dynamic):Void;
	/**
		B{glPixelTransferf, glPixelTransferi}
		
		Set pixel transfer modes
		@param pname Specifies the symbolic name of the pixel transfer parameter to be set. — Enumerated constant
		@param param Specifies the value that pname is set to. — Depends on function prototype.
	**/
	static function glPixelTransfer (pname, param):(pname:Dynamic, param:Dynamic):Void;
	/**
		Specify the pixel zoom factors
		@param yfactor Specify the x and y zoom factors for pixel write operations. — xfactor,
	**/
	static function glPixelZoom(xfactor, yfactor):(yfactor:Dynamic):Void;
	/**
		Specify the diameter of rasterized points
		@param size Specifies the diameter of rasterized points. The initial value is 1. — float
	**/
	static function glPointSize(size):(size:Dynamic):Void;
	/**
		Select a polygon rasterization mode
		@param face Specifies the polygons that mode applies to.
		                                        Must be GL_FRONT for front-facing polygons, GL_BACK for back- facing
		                                        polygons, or GL_FRONT_AND_BACK for front- and back-facing polygons. — Enumerated constant
		@param mode Specifies how polygons will be rasterized.
		                                        The initial value is GL_FILL for both front- and back- facing polygons. — Enumerated constant
	**/
	static function glPolygonMode(face, mode):(face:Dynamic, mode:Dynamic):Void;
	/**
		Set the scale and units used to calculate depth values
		@param factor Specifies a scale factor that is used to create a variable depth
		                                        offset for each polygon. The initial value is 0. — float
		@param units Is multiplied by an implementation-specific value to create a
		                                        constant depth offset. The initial value is 0. — float
	**/
	static function glPolygonOffset(factor, units):(factor:Dynamic, units:Dynamic):Void;
	/**
		Set the polygon stippling pattern
		@param mask Specifies a pointer to a 32x32 stipple pattern that will be unpacked
		                                from memory in the same way that glDrawPixels unpacks pixels. — bgl.Buffer object I{type GL_BYTE}
	**/
	static function glPolygonStipple(mask):(mask:Dynamic):Void;
	/**
		Pop the server attribute stack
	**/
	static function glPopAttrib():():Void;
	/**
		Pop the client attribute stack
	**/
	static function glPopClientAttrib():():Void;
	/**
		Pop the current matrix stack
	**/
	static function glPopMatrix():():Void;
	/**
		Pop the name stack
	**/
	static function glPopName():():Void;
	/**
		Set texture residence priority
		@param n Specifies the number of textures to be prioritized. — int
		@param textures Specifies an array containing the names of the textures to be prioritized. — bgl.Buffer I{type GL_INT}
		@param priorities Specifies an array containing the texture priorities.
		                                        A priority given in an element of priorities applies to the texture named
		                                        by the corresponding element of textures. — bgl.Buffer I{type GL_FLOAT}
	**/
	static function glPrioritizeTextures(n, textures, priorities):(n:Dynamic, textures:Dynamic, priorities:Dynamic):Void;
	/**
		Push the server attribute stack
		@param mask Specifies a mask that indicates which attributes to save. — Enumerated constant(s)
	**/
	static function glPushAttrib(mask):(mask:Dynamic):Void;
	/**
		Push the client attribute stack
		@param mask Specifies a mask that indicates which attributes to save. — Enumerated constant(s)
	**/
	static function glPushClientAttrib(mask):(mask:Dynamic):Void;
	/**
		Push the current matrix stack
	**/
	static function glPushMatrix():():Void;
	/**
		Push the name stack
		@param name Specifies a name that will be pushed onto the name stack. — unsigned int
	**/
	static function glPushName(name):(name:Dynamic):Void;
	/**
		B{glRasterPos2d, glRasterPos2f, glRasterPos2i, glRasterPos2s, glRasterPos3d,
		glRasterPos3f, glRasterPos3i, glRasterPos3s, glRasterPos4d, glRasterPos4f,
		glRasterPos4i, glRasterPos4s, glRasterPos2dv, glRasterPos2fv, glRasterPos2iv,
		glRasterPos2sv, glRasterPos3dv, glRasterPos3fv, glRasterPos3iv, glRasterPos3sv,
		glRasterPos4dv, glRasterPos4fv, glRasterPos4iv, glRasterPos4sv}
		
		Specify the raster position for pixel operations
		@param y, Specify the x,y,z, and w object coordinates (if present) for the
		                                raster position.  If function prototype ends in ‘v’ specifies a pointer to an array of two,
		                                three, or four elements, specifying x, y, z, and w coordinates, respectively. — x,
	**/
	static function glRasterPos (x,y,z,w):(y,:Dynamic):Void;
	/**
		Select a color buffer source for pixels.
		@param mode Specifies a color buffer. — Enumerated constant
	**/
	static function glReadBuffer(mode):(mode:Dynamic):Void;
	/**
		Read a block of pixels from the frame buffer
		@param y Specify the window coordinates of the first pixel that is read
		                                        from the frame buffer. This location is the lower left corner of a rectangular
		                                        block of pixels. — x,
		@param height Specify the dimensions of the pixel rectangle. width and
		                                        height of one correspond to a single pixel. — width,
		@param format Specifies the format of the pixel data. — Enumerated constant
		@param type Specifies the data type of the pixel data. — Enumerated constant
		@param pixels Returns the pixel data. — bgl.Buffer object
	**/
	static function glReadPixels(x, y, width, height, format, type, pixels):(y:Dynamic, height:Dynamic, format:Dynamic, type:Dynamic, pixels:Dynamic):Void;
	/**
		B{glRectd, glRectf, glRecti, glRects, glRectdv, glRectfv, glRectiv, glRectsv}
		
		Draw a rectangle
		@param y1 Specify one vertex of a rectangle — x1,
		@param y2 Specify the opposite vertex of the rectangle — x2,
		@param v2 Specifies a pointer to one vertex of a rectangle and the pointer
		                                        to the opposite vertex of the rectangle — v1,
	**/
	static function glRect (x1,y1,x2,y2,v1,v2):(y1:Dynamic, y2:Dynamic, v2:Dynamic):Void;
	/**
		Set rasterization mode
		@param mode Specifies the rasterization mode. — Enumerated constant
	**/
	static function glRenderMode(mode):(mode:Dynamic):Void;
	/**
		B{glRotated, glRotatef}
		
		Multiply the current matrix by a rotation matrix
		@param angle Specifies the angle of rotation in degrees. — Depends on function prototype.
		@param y, Specify the x, y, and z coordinates of a vector respectively. — x,
	**/
	static function glRotate (angle, x, y, z):(angle:Dynamic, y,:Dynamic):Void;
	/**
		B{glScaled, glScalef}
		
		Multiply the current matrix by a general scaling matrix
		@param y, Specify scale factors along the x, y, and z axes, respectively. — x,
	**/
	static function glScale (x,y,z):(y,:Dynamic):Void;
	/**
		Define the scissor box
		@param y Specify the lower left corner of the scissor box. Initially (0, 0). — x,
		@param height Specify the width and height of the scissor box. When a
		                                        GL context is first attached to a window, width and height are set to the
		                                        dimensions of that window. — width
	**/
	static function glScissor(x,y,width,height):(y:Dynamic, height:Dynamic):Void;
	/**
		Establish a buffer for selection mode values
		@param size Specifies the size of buffer — int
		@param buffer Returns the selection data — bgl.Buffer I{type GL_INT}
	**/
	static function glSelectBuffer(size, buffer):(size:Dynamic, buffer:Dynamic):Void;
	/**
		Select flat or smooth shading
		@param mode Specifies a symbolic value representing a shading technique. — Enumerated constant
	**/
	static function glShadeModel(mode):(mode:Dynamic):Void;
	/**
		Set function and reference value for stencil testing
		@param func Specifies the test function. — Enumerated constant
		@param ref Specifies the reference value for the stencil test. ref is clamped
		                                        to the range [0,2n-1], where n is the number of bitplanes in the stencil
		                                        buffer. The initial value is 0. — int
		@param mask Specifies a mask that is ANDed with both the reference value and
		                                        the stored stencil value when the test is done. The initial value is all 1’s. — unsigned int
	**/
	static function glStencilFunc(func, ref, mask):(func:Dynamic, ref:Dynamic, mask:Dynamic):Void;
	/**
		Control the writing of individual bits in the stencil planes
		@param mask Specifies a bit mask to enable and disable writing of individual bits
		                                in the stencil planes. Initially, the mask is all 1’s. — unsigned int
	**/
	static function glStencilMask(mask):(mask:Dynamic):Void;
	/**
		Set stencil test actions
		@param fail Specifies the action to take when the stencil test fails.
		                                        The initial value is GL_KEEP. — Enumerated constant
		@param zfail Specifies the stencil action when the stencil test passes, but the
		                                        depth test fails. zfail accepts the same symbolic constants as fail.
		                                        The initial value is GL_KEEP. — Enumerated constant
		@param zpass Specifies the stencil action when both the stencil test and the
		                                        depth test pass, or when the stencil test passes and either there is no
		                                        depth buffer or depth testing is not enabled. zpass accepts the same
		                                        symbolic constants
		                                        as fail. The initial value is GL_KEEP. — Enumerated constant
	**/
	static function glStencilOp(fail, zfail, zpass):(fail:Dynamic, zfail:Dynamic, zpass:Dynamic):Void;
	/**
		B{glTexCoord1d, glTexCoord1f, glTexCoord1i, glTexCoord1s, glTexCoord2d, glTexCoord2f,
		glTexCoord2i, glTexCoord2s, glTexCoord3d, glTexCoord3f, glTexCoord3i, glTexCoord3s,
		glTexCoord4d, glTexCoord4f, glTexCoord4i, glTexCoord4s, glTexCoord1dv, glTexCoord1fv,
		glTexCoord1iv, glTexCoord1sv, glTexCoord2dv, glTexCoord2fv, glTexCoord2iv,
		glTexCoord2sv, glTexCoord3dv, glTexCoord3fv, glTexCoord3iv, glTexCoord3sv,
		glTexCoord4dv, glTexCoord4fv, glTexCoord4iv, glTexCoord4sv}
		
		Set the current texture coordinates
		@param t, Specify s, t, r, and q texture coordinates. Not all parameters are
		                                        present in all forms of the command. — s,
		@param v Specifies a pointer to an array of one, two, three, or four elements,
		                                        which in turn specify the s, t, r, and q texture coordinates. — bgl.Buffer object. Depends on function prototype. (for ‘v’ prototypes only)
	**/
	static function glTexCoord (s,t,r,q,v):(t,:Dynamic, v:Dynamic):Void;
	/**
		B{glTextEnvf, glTextEnvi, glTextEnvfv, glTextEnviv}
		
		Set texture environment parameters
		@param target Specifies a texture environment. Must be GL_TEXTURE_ENV. — Enumerated constant
		@param pname Specifies the symbolic name of a single-valued texture environment
		                                        parameter. Must be GL_TEXTURE_ENV_MODE. — Enumerated constant
		@param param Specifies a single symbolic constant. If function prototype ends in ‘v’
		                                        specifies a pointer to a parameter array that contains either a single
		                                        symbolic constant or an RGBA color — Depends on function prototype.
	**/
	static function glTexEnv  (target, pname, param):(target:Dynamic, pname:Dynamic, param:Dynamic):Void;
	/**
		B{glTexGend, glTexGenf, glTexGeni, glTexGendv, glTexGenfv, glTexGeniv}
		
		Control the generation of texture coordinates
		@param coord Specifies a texture coordinate. — Enumerated constant
		@param pname Specifies the symbolic name of the texture- coordinate generation function. — Enumerated constant
		@param param Specifies a single-valued texture generation parameter.
		                                        If function prototype ends in ‘v’ specifies a pointer to an array of texture
		                                        generation parameters. If pname is GL_TEXTURE_GEN_MODE, then the array must
		                                        contain a single symbolic constant. Otherwise, params holds the coefficients
		                                        for the texture-coordinate generation function specified by pname. — Depends on function prototype.
	**/
	static function glTexGen (coord, pname, param):(coord:Dynamic, pname:Dynamic, param:Dynamic):Void;
	/**
		Specify a one-dimensional texture image
		@param target Specifies the target texture. — Enumerated constant
		@param level Specifies the level-of-detail number. Level 0 is the base image level.
		                                        Level n is the nth mipmap reduction image. — int
		@param internalformat Specifies the number of color components in the texture. — int
		@param width Specifies the width of the texture image. Must be 2n+2(border)
		                                        for some integer n. All implementations support texture images that are
		                                        at least 64 texels wide. The height of the 1D texture image is 1. — int
		@param border Specifies the width of the border. Must be either 0 or 1. — int
		@param format Specifies the format of the pixel data. — Enumerated constant
		@param type Specifies the data type of the pixel data. — Enumerated constant
		@param pixels Specifies a pointer to the image data in memory. — bgl.Buffer object.
	**/
	static function glTexImage1D(target, level, internalformat, width, border, format, type, pixels):(target:Dynamic, level:Dynamic, internalformat:Dynamic, width:Dynamic, border:Dynamic, format:Dynamic, type:Dynamic, pixels:Dynamic):Void;
	/**
		Specify a two-dimensional texture image
		@param target Specifies the target texture. — Enumerated constant
		@param level Specifies the level-of-detail number. Level 0 is the base image level.
		                                        Level n is the nth mipmap reduction image. — int
		@param internalformat Specifies the number of color components in the texture. — int
		@param width Specifies the width of the texture image. Must be 2n+2(border)
		                                        for some integer n. All implementations support texture images that are at
		                                        least 64 texels wide. — int
		@param height Specifies the height of the texture image. Must be 2m+2(border) for
		                                        some integer m. All implementations support texture images that are at
		                                        least 64 texels high. — int
		@param border Specifies the width of the border. Must be either 0 or 1. — int
		@param format Specifies the format of the pixel data. — Enumerated constant
		@param type Specifies the data type of the pixel data. — Enumerated constant
		@param pixels Specifies a pointer to the image data in memory. — bgl.Buffer object.
	**/
	static function glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels):(target:Dynamic, level:Dynamic, internalformat:Dynamic, width:Dynamic, height:Dynamic, border:Dynamic, format:Dynamic, type:Dynamic, pixels:Dynamic):Void;
	/**
		B{glTexParameterf, glTexParameteri, glTexParameterfv, glTexParameteriv}
		
		Set texture parameters
		@param target Specifies the target texture. — Enumerated constant
		@param pname Specifies the symbolic name of a single-valued texture parameter. — Enumerated constant
		@param param Specifies the value of pname. If function prototype ends in ‘v’ specifies
		                                        a pointer to an array where the value or values of pname are stored. — Depends on function prototype.
	**/
	static function glTexParameter (target, pname, param):(target:Dynamic, pname:Dynamic, param:Dynamic):Void;
	/**
		B{glTranslatef, glTranslated}
		
		Multiply the current matrix by a translation matrix
		@param y, Specify the x, y, and z coordinates of a translation vector. — x,
	**/
	static function glTranslate (x, y, z):(y,:Dynamic):Void;
	/**
		B{glVertex2d, glVertex2f, glVertex2i, glVertex2s, glVertex3d, glVertex3f, glVertex3i,
		glVertex3s, glVertex4d, glVertex4f, glVertex4i, glVertex4s, glVertex2dv, glVertex2fv,
		glVertex2iv, glVertex2sv, glVertex3dv, glVertex3fv, glVertex3iv, glVertex3sv, glVertex4dv,
		glVertex4fv, glVertex4iv, glVertex4sv}
		
		Specify a vertex
		@param y, Specify x, y, z, and w coordinates of a vertex. Not all parameters
		                                        are present in all forms of the command. — x,
		@param v Specifies a pointer to an array of two, three, or four elements. The
		                                        elements of a two-element array are x and y; of a three-element array,
		                                        x, y, and z; and of a four-element array, x, y, z, and w. — bgl.Buffer object. Depends of function prototype (for ‘v’
		                                        prototypes only)
	**/
	static function glVertex (x,y,z,w,v):(y,:Dynamic, v:Dynamic):Void;
	/**
		Set the viewport
		@param y Specify the lower left corner of the viewport rectangle,
		                                        in pixels. The initial value is (0,0). — x,
		@param height Specify the width and height of the viewport. When a GL
		                                        context is first attached to a window, width and height are set to the
		                                        dimensions of that window. — width,
	**/
	static function glViewport(x,y,width,height):(y:Dynamic, height:Dynamic):Void;
	/**
		Set up a perspective projection matrix.
		@param fovY Specifies the field of view angle, in degrees, in the y direction. — double
		@param aspect Specifies the aspect ratio that determines the field of view in the x direction.
		                                        The aspect ratio is the ratio of x (width) to y (height). — double
		@param zNear Specifies the distance from the viewer to the near clipping plane (always positive). — double
		@param zFar Specifies the distance from the viewer to the far clipping plane (always positive). — double
	**/
	static function gluPerspective(fovY, aspect, zNear, zFar):(fovY:Dynamic, aspect:Dynamic, zNear:Dynamic, zFar:Dynamic):Void;
	/**
		Define a viewing transformation.
		@param eyey, Specifies the position of the eye point. — eyex,
		@param centery, Specifies the position of the reference point. — centerx,
		@param upy, Specifies the direction of the up vector. — upx,
	**/
	static function gluLookAt(eyex, eyey, eyez, centerx, centery, centerz, upx, upy, upz):(eyey,:Dynamic, centery,:Dynamic, upy,:Dynamic):Void;
	/**
		Define a 2-D orthographic projection matrix.
		@param right Specify the coordinates for the left and right vertical clipping planes. — left,
		@param top Specify the coordinates for the bottom and top horizontal clipping planes. — bottom,
	**/
	static function gluOrtho2D(left, right, bottom, top):(right:Dynamic, top:Dynamic):Void;
	/**
		Define a picking region.
		@param y Specify the center of a picking region in window coordinates. — x,
		@param height Specify the width and height, respectively, of the picking region in window coordinates. — width,
		@param viewport Specifies the current viewport. — bgl.Buffer object. [int]
	**/
	static function gluPickMatrix(x, y, width, height, viewport):(y:Dynamic, height:Dynamic, viewport:Dynamic):Void;
	/**
		Map object coordinates to window coordinates.
		@param objy, Specify the object coordinates. — objx,
		@param modelMatrix Specifies the current modelview matrix (as from a glGetDoublev call). — bgl.Buffer object. [double]
		@param projMatrix Specifies the current projection matrix (as from a glGetDoublev call). — bgl.Buffer object. [double]
		@param viewport Specifies the current viewport (as from a glGetIntegerv call). — bgl.Buffer object. [int]
		@param winy, Return the computed window coordinates. — winx,
	**/
	static function gluProject(objx, objy, objz, modelMatrix, projMatrix, viewport, winx, winy, winz):(objy,:Dynamic, modelMatrix:Dynamic, projMatrix:Dynamic, viewport:Dynamic, winy,:Dynamic):Void;
	/**
		Map object coordinates to window coordinates.
		@param winy, Specify the window coordinates to be mapped. — winx,
		@param modelMatrix Specifies the current modelview matrix (as from a glGetDoublev call). — bgl.Buffer object. [double]
		@param projMatrix Specifies the current projection matrix (as from a glGetDoublev call). — bgl.Buffer object. [double]
		@param viewport Specifies the current viewport (as from a glGetIntegerv call). — bgl.Buffer object. [int]
		@param objy, Return the computed object coordinates. — objx,
	**/
	static function gluUnProject(winx, winy, winz, modelMatrix, projMatrix, viewport, objx, objy, objz):(winy,:Dynamic, modelMatrix:Dynamic, projMatrix:Dynamic, viewport:Dynamic, objy,:Dynamic):Void;
	/**
		Installs a program object as part of current rendering state
		@param program Specifies the handle of the program object whose executables are to be used as part of current rendering state. — int
	**/
	static function glUseProgram(program):(program:Dynamic):Void;
	/**
		Validates a program object
		@param program Specifies the handle of the program object to be validated. — int
	**/
	static function glValidateProgram(program):(program:Dynamic):Void;
	/**
		Links a program object.
		@param program Specifies the handle of the program object to be linked. — int
	**/
	static function glLinkProgram(program):(program:Dynamic):Void;
	/**
		Select active texture unit.
		@param texture Constant in GL_TEXTURE0 0 - 8 — int
	**/
	static function glActiveTexture(texture):(texture:Dynamic):Void;
	/**
		Attaches a shader object to a program object.
		@param program Specifies the program object to which a shader object will be attached. — int
		@param shader Specifies the shader object that is to be attached. — int
	**/
	static function glAttachShader(program, shader):(program:Dynamic, shader:Dynamic):Void;
	/**
		Compiles a shader object.
		@param shader Specifies the shader object to be compiled. — int
	**/
	static function glCompileShader(shader):(shader:Dynamic):Void;
	/**
		Creates a program object
		
		@returns int
	**/
	static function glCreateProgram():():Dynamic;
	/**
		Creates a shader object.
		@param shaderType  — Specifies the type of shader to be created.
		                                Must be one of GL_VERTEX_SHADER,
		                                GL_TESS_CONTROL_SHADER,
		                                GL_TESS_EVALUATION_SHADER,
		                                GL_GEOMETRY_SHADER,
		                                or GL_FRAGMENT_SHADER.
		
		@returns int
	**/
	static function glCreateShader(shaderType):(shaderType:Dynamic):Dynamic;
	/**
		Deletes a program object.
		@param program Specifies the program object to be deleted. — int
	**/
	static function glDeleteProgram(program):(program:Dynamic):Void;
	/**
		Deletes a shader object.
		@param shader Specifies the shader object to be deleted. — int
	**/
	static function glDeleteShader(shader):(shader:Dynamic):Void;
	/**
		Detaches a shader object from a program object to which it is attached.
		@param program Specifies the program object from which to detach the shader object. — int
		@param shader pecifies the program object from which to detach the shader object. — int
	**/
	static function glDetachShader(program, shader):(program:Dynamic, shader:Dynamic):Void;
	/**
		Returns the handles of the shader objects attached to a program object.
		@param program Specifies the program object to be queried. — int
		@param maxCount Specifies the size of the array for storing the returned object names. — int
		@param count Returns the number of names actually returned in objects. — bgl.Buffer int buffer.
		@param shaders Specifies an array that is used to return the names of attached shader objects. — bgl.Buffer int buffer.
	**/
	static function glGetAttachedShaders(program, maxCount, count, shaders):(program:Dynamic, maxCount:Dynamic, count:Dynamic, shaders:Dynamic):Void;
	/**
		Returns the information log for a program object.
		@param program Specifies the program object whose information log is to be queried. — int
		@param maxLength Specifies the size of the character buffer for storing the returned information log. — int
		@param length Returns the length of the string returned in infoLog (excluding the null terminator). — bgl.Buffer int buffer.
		@param infoLog Specifies an array of characters that is used to return the information log. — bgl.Buffer char buffer.
	**/
	static function glGetProgramInfoLog(program, maxLength, length, infoLog):(program:Dynamic, maxLength:Dynamic, length:Dynamic, infoLog:Dynamic):Void;
	/**
		Returns the information log for a shader object.
		@param shader Specifies the shader object whose information log is to be queried. — int
		@param maxLength Specifies the size of the character buffer for storing the returned information log. — int
		@param length Returns the length of the string returned in infoLog (excluding the null terminator). — bgl.Buffer int buffer.
		@param infoLog Specifies an array of characters that is used to return the information log. — bgl.Buffer char buffer.
	**/
	static function glGetShaderInfoLog(program, maxLength, length, infoLog):(shader:Dynamic, maxLength:Dynamic, length:Dynamic, infoLog:Dynamic):Void;
	/**
		Returns a parameter from a program object.
		@param program Specifies the program object to be queried. — int
		@param pname Specifies the object parameter. — int
		@param params Returns the requested object parameter. — bgl.Buffer int buffer.
	**/
	static function glGetProgramiv(program, pname, params):(program:Dynamic, pname:Dynamic, params:Dynamic):Void;
	/**
		Determines if a name corresponds to a shader object.
		@param shader Specifies a potential shader object. — int
	**/
	static function glIsShader(shader):(shader:Dynamic):Void;
	/**
		Determines if a name corresponds to a program object
		@param program Specifies a potential program object. — int
	**/
	static function glIsProgram(program):(program:Dynamic):Void;
	/**
		Returns the source code string from a shader object
		@param shader Specifies the shader object to be queried. — int
		@param bufSize Specifies the size of the character buffer for storing the returned source code string. — int
		@param length Returns the length of the string returned in source (excluding the null terminator). — bgl.Buffer int buffer.
		@param source Specifies an array of characters that is used to return the source code string. — bgl.Buffer char.
	**/
	static function glGetShaderSource(shader, bufSize, length, source):(shader:Dynamic, bufSize:Dynamic, length:Dynamic, source:Dynamic):Void;
	/**
		Replaces the source code in a shader object.
		@param shader Specifies the handle of the shader object whose source code is to be replaced. — int
		@param shader_string The shader string. — string
	**/
	static function glShaderSource(shader, shader_string):(shader:Dynamic, shader_string:Dynamic):Void;
}