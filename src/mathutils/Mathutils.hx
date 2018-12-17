package mathutils;
/**
	This object gives access to Colors in Blender.
**/
@:native("mathutils.Color") extern class Color {
	/**
		Returns a copy of this color.
		
		@returns Color
	**/
	static function copy():mathutils.color.Color;
	/**
		Make this object immutable.
		
		After this the object can be hashed, used in dictionaries &amp; sets.
	**/
	static function freeze():Void;
	/**
		Blue color channel.
		
		Type: float
	**/
	var b : Float;
	/**
		Green color channel.
		
		Type: float
	**/
	var g : Float;
	/**
		HSV Hue component in [0, 1].
		
		Type: float
	**/
	var h : Float;
	/**
		HSV Values in [0, 1].
		
		Type: float triplet
	**/
	var hsv : Float;
	/**
		True when this object has been frozen (read-only).
		
		Type: boolean
	**/
	var is_frozen : Bool;
	/**
		True when this object wraps external data (read-only).
		
		Type: boolean
	**/
	var is_wrapped : Bool;
	/**
		The item this is wrapping or None  (read-only).
	**/
	var owner : Dynamic;
	/**
		Red color channel.
		
		Type: float
	**/
	var r : Float;
	/**
		HSV Saturation component in [0, 1].
		
		Type: float
	**/
	var s : Float;
	/**
		HSV Value component in [0, 1].
		
		Type: float
	**/
	var v : Float;
}/**
	This object gives access to Eulers in Blender.
**/
@:native("mathutils.Euler") extern class Euler {
	/**
		Returns a copy of this euler.
		
		@returns Euler
	**/
	static function copy():mathutils.euler.Euler;
	/**
		Make this object immutable.
		
		After this the object can be hashed, used in dictionaries &amp; sets.
	**/
	static function freeze():Void;
	/**
		Make this euler compatible with another,
		so interpolating between them works as intended.
	**/
	function make_compatible(other:Dynamic):Void;
	/**
		Rotates the euler by another mathutils value.
		@param other rotation component of mathutils value — Euler, Quaternion or Matrix
	**/
	function rotate(other:Dynamic):Void;
	/**
		Rotates the euler a certain amount and returning a unique euler rotation
		(no 720 degree pitches).
		@param axis single character in [‘X, ‘Y’, ‘Z’]. — string
		@param angle angle in radians. — float
	**/
	function rotate_axis(axis:String, angle:Float):Void;
	/**
		Return a matrix representation of the euler.
		
		@returns Matrix
	**/
	function to_matrix():mathutils.matrix.Matrix;
	/**
		Return a quaternion representation of the euler.
		
		@returns Quaternion
	**/
	function to_quaternion():mathutils.quaternion.Quaternion;
	/**
		Set all values to zero.
	**/
	function zero():Void;
	/**
		True when this object has been frozen (read-only).
		
		Type: boolean
	**/
	var is_frozen : Bool;
	/**
		True when this object wraps external data (read-only).
		
		Type: boolean
	**/
	var is_wrapped : Bool;
	/**
		Euler rotation order.
		
		Type: string in [‘XYZ’, ‘XZY’, ‘YXZ’, ‘YZX’, ‘ZXY’, ‘ZYX’]
	**/
	var order : String;
	/**
		The item this is wrapping or None  (read-only).
	**/
	var owner : Dynamic;
	/**
		Euler axis angle in radians.
		
		Type: float
	**/
	var x : Float;
	/**
		Euler axis angle in radians.
		
		Type: float
	**/
	var y : Float;
	/**
		Euler axis angle in radians.
		
		Type: float
	**/
	var z : Float;
}/**
	This object gives access to Matrices in Blender, supporting square and rectangular
	matrices from 2x2 up to 4x4.
**/
@:native("mathutils.Matrix") extern class Matrix {
	/**
		Create an identity matrix.
		@param size The size of the identity matrix to construct [2, 4]. — int
		
		@returns Matrix
	**/
	static function Identity(size:Int):mathutils.matrix.Matrix;
	/**
		Create a matrix to represent an orthographic projection.
		@param axis Can be any of the following: [‘X’, ‘Y’, ‘XY’, ‘XZ’, ‘YZ’],
		                                                where a single axis is for a 2D matrix.
		                                                Or a vector for an arbitrary axis — string or Vector
		@param size The size of the projection matrix to construct [2, 4]. — int
		
		@returns Matrix
	**/
	static function OrthoProjection(axis:String, size:Int):mathutils.matrix.Matrix;
	/**
		Create a matrix representing a rotation.
		@param angle The angle of rotation desired, in radians. — float
		@param size The size of the rotation matrix to construct [2, 4]. — int
		@param axis a string in [‘X’, ‘Y’, ‘Z’] or a 3D Vector Object
		                                                (optional when size is 2). — string or Vector
		
		@returns Matrix
	**/
	static function Rotation(angle:Float, size:Int, axis:String):mathutils.matrix.Matrix;
	/**
		Create a matrix representing a scaling.
		@param factor The factor of scaling to apply. — float
		@param size The size of the scale matrix to construct [2, 4]. — int
		@param axis Direction to influence scale. (optional). — Vector
		
		@returns Matrix
	**/
	static function Scale(factor:Float, size:Int, axis:Dynamic):mathutils.matrix.Matrix;
	/**
		Create a matrix to represent an shear transformation.
		@param plane Can be any of the following: [‘X’, ‘Y’, ‘XY’, ‘XZ’, ‘YZ’],
		                                                where a single axis is for a 2D matrix only. — string
		@param size The size of the shear matrix to construct [2, 4]. — int
		@param factor The factor of shear to apply. For a 3 or 4 size matrix
		                                                pass a pair of floats corresponding with the plane axis. — float or float pair
		
		@returns Matrix
	**/
	static function Shear(plane:String, size:Int, factor:Float):mathutils.matrix.Matrix;
	/**
		Create a matrix representing a translation.
		@param vector The translation vector. — Vector
		
		@returns Matrix
	**/
	static function Translation(vector:Dynamic):mathutils.matrix.Matrix;
	/**
		Set the matrix to its adjugate.
	**/
	function adjugate():Void;
	/**
		Return an adjugated copy of the matrix.
		
		@returns Matrix
	**/
	function adjugated():mathutils.matrix.Matrix;
	/**
		Returns a copy of this matrix.
		
		@returns Matrix
	**/
	function copy():mathutils.matrix.Matrix;
	/**
		Return the translation, rotation, and scale components of this matrix.
		
		@returns (Vector, Quaternion, Vector)
	**/
	function decompose():mathutils.vector.Vector;
	/**
		Return the determinant of a matrix.
		
		@returns float
	**/
	function determinant():Float;
	/**
		Make this object immutable.
		
		After this the object can be hashed, used in dictionaries &amp; sets.
	**/
	static function freeze():Void;
	/**
		Set the matrix to the identity matrix.
	**/
	function identity():Void;
	/**
		Set the matrix to its inverse.
		@param fallback Set the matrix to this value when the inverse cannot be calculated
		                                        (instead of raising a ValueError exception). — Matrix
	**/
	function invert(fallback:gpu.matrix.Matrix):Void;
	/**
		Set the matrix to its inverse, will never error.
		If degenerated (e.g. zero scale on an axis), add some epsilon to its diagonal, to get an invertible one.
		If tweaked matrix is still degenerated, set to the identity matrix instead.
	**/
	function invert_safe():Void;
	/**
		Return an inverted copy of the matrix.
		@param fallback return this when the inverse can’t be calculated
		                                        (instead of raising a ValueError). — any
		
		@returns Matrix
	**/
	function inverted(fallback:Dynamic):mathutils.matrix.Matrix;
	/**
		Return an inverted copy of the matrix, will never error.
		If degenerated (e.g. zero scale on an axis), add some epsilon to its diagonal, to get an invertible one.
		If tweaked matrix is still degenerated, return the identity matrix instead.
		
		@returns Matrix
	**/
	function inverted_safe():mathutils.matrix.Matrix;
	/**
		Returns the interpolation of two matrices. Uses polar decomposition, see   “Matrix Animation and Polar Decomposition”, Shoemake and Duff, 1992.
		@param other value to interpolate with. — Matrix
		@param factor The interpolation value in [0.0, 1.0]. — float
		
		@returns Matrix
	**/
	static function lerp(other:gpu.matrix.Matrix, factor:Float):mathutils.matrix.Matrix;
	/**
		Normalize each of the matrix columns.
	**/
	function normalize():Void;
	/**
		Return a column normalized matrix
		
		@returns Matrix
	**/
	function normalized():mathutils.matrix.Matrix;
	/**
		Resize the matrix to 4x4.
	**/
	function pyresize_4x4():Void;
	/**
		Rotates the matrix by another mathutils value.
		@param other rotation component of mathutils value — Euler, Quaternion or Matrix
	**/
	function rotate(other:Dynamic):Void;
	/**
		Return a 3x3 copy of this matrix.
		
		@returns Matrix
	**/
	function pyto_3x3():mathutils.matrix.Matrix;
	/**
		Return a 4x4 copy of this matrix.
		
		@returns Matrix
	**/
	function pyto_4x4():mathutils.matrix.Matrix;
	/**
		Return an Euler representation of the rotation matrix
		(3x3 or 4x4 matrix only).
		@param order Optional rotation order argument in
		                                                [‘XYZ’, ‘XZY’, ‘YXZ’, ‘YZX’, ‘ZXY’, ‘ZYX’]. — string
		@param euler_compat Optional euler argument the new euler will be made
		                                                compatible with (no axis flipping between them).
		                                                Useful for converting a series of matrices to animation curves. — Euler
		
		@returns Euler
	**/
	function to_euler(order:String, euler_compat:Dynamic):mathutils.euler.Euler;
	/**
		Return a quaternion representation of the rotation matrix.
		
		@returns Quaternion
	**/
	function to_quaternion():mathutils.quaternion.Quaternion;
	/**
		Return the scale part of a 3x3 or 4x4 matrix.
		
		@returns Vector
	**/
	function to_scale():mathutils.vector.Vector;
	/**
		Return the translation part of a 4 row matrix.
		
		@returns Vector
	**/
	function to_translation():mathutils.vector.Vector;
	/**
		Set the matrix to its transpose.
	**/
	function transpose():Void;
	/**
		Return a new, transposed matrix.
		
		@returns Matrix
	**/
	function transposed():mathutils.matrix.Matrix;
	/**
		Set all the matrix values to zero.
		
		@returns Matrix
	**/
	function zero():mathutils.matrix.Matrix;
	/**
		Access the matrix by columns, 3x3 and 4x4 only, (read-only).
		
		Type: Matrix Access
	**/
	var col : gpu.matrix.Matrix;
	/**
		True when this object has been frozen (read-only).
		
		Type: boolean
	**/
	var is_frozen : Bool;
	/**
		True if this matrix results in a negative scale, 3x3 and 4x4 only, (read-only).
		
		Type: bool
	**/
	var is_negative : Dynamic;
	/**
		True if this matrix is orthogonal, 3x3 and 4x4 only, (read-only).
		
		Type: bool
	**/
	var is_orthogonal : Dynamic;
	/**
		True if this matrix has got orthogonal axis vectors, 3x3 and 4x4 only, (read-only).
		
		Type: bool
	**/
	var is_orthogonal_axis_vectors : Dynamic;
	/**
		True when this object wraps external data (read-only).
		
		Type: boolean
	**/
	var is_wrapped : Bool;
	/**
		The average scale applied to each axis (read-only).
		
		Type: float
	**/
	var median_scale : Float;
	/**
		The item this is wrapping or None  (read-only).
	**/
	var owner : Dynamic;
	/**
		Access the matrix by rows (default), (read-only).
		
		Type: Matrix Access
	**/
	var row : gpu.matrix.Matrix;
	/**
		The translation component of the matrix.
		
		Type: Vector
	**/
	var translation : Dynamic;
}/**
	This object gives access to Quaternions in Blender.
	
	The constructor takes arguments in various forms:
**/
@:native("mathutils.Quaternion") extern class Quaternion {
	/**
		Set the quaternion to its conjugate (negate x, y, z).
	**/
	static function conjugate():Void;
	/**
		Return a new conjugated quaternion.
		
		@returns Quaternion
	**/
	static function conjugated():mathutils.quaternion.Quaternion;
	/**
		Returns a copy of this quaternion.
		
		@returns Quaternion
	**/
	static function copy():mathutils.quaternion.Quaternion;
	/**
		Return the cross product of this quaternion and another.
		@param other The other quaternion to perform the cross product with. — Quaternion
		
		@returns Quaternion
	**/
	function cross(other:Dynamic):mathutils.quaternion.Quaternion;
	/**
		Return the dot product of this quaternion and another.
		@param other The other quaternion to perform the dot product with. — Quaternion
		
		@returns Quaternion
	**/
	function dot(other:Dynamic):mathutils.quaternion.Quaternion;
	/**
		Make this object immutable.
		
		After this the object can be hashed, used in dictionaries &amp; sets.
	**/
	static function freeze():Void;
	/**
		Set the quaternion to an identity quaternion.
		
		@returns Quaternion
	**/
	static function identity():mathutils.quaternion.Quaternion;
	/**
		Set the quaternion to its inverse.
	**/
	static function invert():Void;
	/**
		Return a new, inverted quaternion.
		
		@returns Quaternion
	**/
	static function inverted():mathutils.quaternion.Quaternion;
	/**
		Set the quaternion to its negative.
		
		@returns Quaternion
	**/
	static function negate():mathutils.quaternion.Quaternion;
	/**
		Normalize the quaternion.
	**/
	static function normalize():Void;
	/**
		Return a new normalized quaternion.
		
		@returns Quaternion
	**/
	static function normalized():mathutils.quaternion.Quaternion;
	/**
		Rotates the quaternion by another mathutils value.
		@param other rotation component of mathutils value — Euler, Quaternion or Matrix
	**/
	function rotate(other:Dynamic):Void;
	/**
		Returns a quaternion representing the rotational difference.
		@param other second quaternion. — Quaternion
		
		@returns Quaternion
	**/
	static function rotation_difference(other:Dynamic):mathutils.quaternion.Quaternion;
	/**
		Returns the interpolation of two quaternions.
		@param other value to interpolate with. — Quaternion
		@param factor The interpolation value in [0.0, 1.0]. — float
		
		@returns Quaternion
	**/
	static function slerp(other:Dynamic, factor:Float):mathutils.quaternion.Quaternion;
	/**
		Return the axis, angle representation of the quaternion.
		
		@returns (Vector, float) pair
	**/
	function to_axis_angle():mathutils.vector.Vector;
	/**
		Return Euler representation of the quaternion.
		@param order Optional rotation order argument in
		                                                [‘XYZ’, ‘XZY’, ‘YXZ’, ‘YZX’, ‘ZXY’, ‘ZYX’]. — string
		@param euler_compat Optional euler argument the new euler will be made
		                                                compatible with (no axis flipping between them).
		                                                Useful for converting a series of matrices to animation curves. — Euler
		
		@returns Euler
	**/
	function to_euler(order:String, euler_compat:Dynamic):mathutils.euler.Euler;
	/**
		Return the exponential map representation of the quaternion.
		
		This representation consist of the rotation axis multiplied by the rotation angle.   Such a representation is useful for interpolation between multiple orientations.
		
		To convert back to a quaternion, pass it to the Quaternion constructor.
		
		@returns Vector of size 3
	**/
	function to_exponential_map():mathutils.vector.Vector;
	/**
		Return a matrix representation of the quaternion.
		
		@returns Matrix
	**/
	function to_matrix():mathutils.matrix.Matrix;
	/**
		Angle of the quaternion.
		
		Type: float
	**/
	var angle : Float;
	/**
		Quaternion axis as a vector.
		
		Type: Vector
	**/
	var axis : mathutils.vector.Vector;
	/**
		True when this object has been frozen (read-only).
		
		Type: boolean
	**/
	var is_frozen : Bool;
	/**
		True when this object wraps external data (read-only).
		
		Type: boolean
	**/
	var is_wrapped : Bool;
	/**
		Size of the quaternion (read-only).
		
		Type: float
	**/
	var magnitude : Float;
	/**
		The item this is wrapping or None  (read-only).
	**/
	var owner : Dynamic;
	/**
		Quaternion axis value.
		
		Type: float
	**/
	var w : Float;
	/**
		Quaternion axis value.
		
		Type: float
	**/
	var x : Float;
	/**
		Quaternion axis value.
		
		Type: float
	**/
	var y : Float;
	/**
		Quaternion axis value.
		
		Type: float
	**/
	var z : Float;
}/**
	This object gives access to Vectors in Blender.
**/
@:native("mathutils.Vector") extern class Vector {
	/**
		Create a vector of length size with all values set to fill.
		@param size The length of the vector to be created. — int
		@param fill The value used to fill the vector. — float
	**/
	static function Fill(size:Int, fill:Float):Void;
	/**
		Create a vector of the specified size which is filled with linearly spaced values between start and stop values.
		@param start The start of the range used to fill the vector. — int
		@param stop The end of the range used to fill the vector. — int
		@param size The size of the vector to be created. — int
	**/
	static function Linspace(start:Int, stop:Int, size:Int):Void;
	/**
		Create a filled with a range of values.
		@param start The start of the range used to fill the vector. — int
		@param stop The end of the range used to fill the vector. — int
		@param step The step between successive values in the vector. — int
	**/
	static function Range(start:Int, stop:Int, step:Int):Void;
	/**
		Create a vector by repeating the values in vector until the required size is reached.
		@param tuple The vector to draw values from. — mathutils.Vector
		@param size The size of the vector to be created. — int
	**/
	static function Repeat(tuple:Dynamic, size:Int):Void;
	/**
		Return the angle between two vectors.
		@param other another vector to compare the angle with — Vector
		@param fallback return this when the angle can’t be calculated (zero length vector),
		                                                (instead of raising a ValueError). — any
		
		@returns float
	**/
	static function angle(other:Dynamic, fallback:Dynamic):Float;
	/**
		Return the signed angle between two 2D vectors (clockwise is positive).
		@param other another vector to compare the angle with — Vector
		@param fallback return this when the angle can’t be calculated (zero length vector),
		                                                (instead of raising a ValueError). — any
		
		@returns float
	**/
	static function angle_signed(other:Dynamic, fallback:Dynamic):Float;
	/**
		Returns a copy of this vector.
		
		@returns Vector
	**/
	static function copy():mathutils.vector.Vector;
	/**
		Return the cross product of this vector and another.
		@param other The other vector to perform the cross product with. — Vector
		
		@returns Vector or float when 2D vectors are used
	**/
	function cross(other:Dynamic):mathutils.vector.Vector;
	/**
		Return the dot product of this vector and another.
		@param other The other vector to perform the dot product with. — Vector
		
		@returns Vector
	**/
	function dot(other:Dynamic):mathutils.vector.Vector;
	/**
		Make this object immutable.
		
		After this the object can be hashed, used in dictionaries &amp; sets.
	**/
	static function freeze():Void;
	/**
		Returns the interpolation of two vectors.
		@param other value to interpolate with. — Vector
		@param factor The interpolation value in [0.0, 1.0]. — float
		
		@returns Vector
	**/
	static function lerp(other:Dynamic, factor:Float):mathutils.vector.Vector;
	/**
		Set all values to their negative.
	**/
	function negate():Void;
	/**
		Normalize the vector, making the length of the vector always 1.0.
	**/
	function normalize():Void;
	/**
		Return a new, normalized vector.
		
		@returns Vector
	**/
	function normalized():mathutils.vector.Vector;
	/**
		Return a perpendicular vector.
		
		@returns Vector
	**/
	function orthogonal():mathutils.vector.Vector;
	/**
		Return the projection of this vector onto the other.
		@param other second vector. — Vector
		
		@returns Vector
	**/
	static function project(other:Dynamic):mathutils.vector.Vector;
	/**
		Return the reflection vector from the mirror argument.
		@param mirror This vector could be a normal from the reflecting surface. — Vector
		
		@returns Vector
	**/
	function reflect(mirror:Dynamic):mathutils.vector.Vector;
	/**
		Resize the vector to have size number of elements.
	**/
	function resize(size:Dynamic):Void;
	/**
		Resize the vector to 2D  (x, y).
	**/
	function pyresize_2d():Void;
	/**
		Resize the vector to 3D  (x, y, z).
	**/
	function pyresize_3d():Void;
	/**
		Resize the vector to 4D (x, y, z, w).
	**/
	function pyresize_4d():Void;
	/**
		Return a resized copy of the vector with size number of elements.
		
		@returns Vector
	**/
	function resized(size:Dynamic):mathutils.vector.Vector;
	/**
		Rotate the vector by a rotation value.
		@param other rotation component of mathutils value — Euler, Quaternion or Matrix
	**/
	static function rotate(other:Dynamic):Void;
	/**
		Returns a quaternion representing the rotational difference between this
		vector and another.
		@param other second vector. — Vector
		
		@returns Quaternion
	**/
	static function rotation_difference(other:Dynamic):mathutils.quaternion.Quaternion;
	/**
		Returns the interpolation of two non-zero vectors (spherical coordinates).
		@param other value to interpolate with. — Vector
		@param factor The interpolation value typically in [0.0, 1.0]. — float
		@param fallback return this when the vector can’t be calculated (zero length vector or direct opposites),
		                                                (instead of raising a ValueError). — any
		
		@returns Vector
	**/
	static function slerp(other:Dynamic, factor:Float, fallback:Dynamic):mathutils.vector.Vector;
	/**
		Return a 2d copy of the vector.
		
		@returns Vector
	**/
	function pyto_2d():mathutils.vector.Vector;
	/**
		Return a 3d copy of the vector.
		
		@returns Vector
	**/
	function pyto_3d():mathutils.vector.Vector;
	/**
		Return a 4d copy of the vector.
		
		@returns Vector
	**/
	function pyto_4d():mathutils.vector.Vector;
	/**
		Return a quaternion rotation from the vector and the track and up axis.
		@param track Track axis in [‘X’, ‘Y’, ‘Z’, ‘-X’, ‘-Y’, ‘-Z’]. — string
		@param up Up axis in [‘X’, ‘Y’, ‘Z’]. — string
		
		@returns Quaternion
	**/
	function to_track_quat(track:String, up:String):mathutils.quaternion.Quaternion;
	/**
		Return this vector as a tuple with.
		@param precision The number to round the value to in [-1, 21]. — int
		
		@returns tuple
	**/
	function to_tuple(precision:Int):Dynamic;
	/**
		Set all values to zero.
	**/
	function zero():Void;
	/**
		True when this object has been frozen (read-only).
		
		Type: boolean
	**/
	var is_frozen : Bool;
	/**
		True when this object wraps external data (read-only).
		
		Type: boolean
	**/
	var is_wrapped : Bool;
	/**
		Vector Length.
		
		Type: float
	**/
	var length : Float;
	/**
		Vector length squared (v.dot(v)).
		
		Type: float
	**/
	var length_squared : Float;
	/**
		Vector Length.
		
		Type: float
	**/
	var magnitude : Float;
	/**
		The item this is wrapping or None  (read-only).
	**/
	var owner : Dynamic;
	/**
		Vector W axis (4D Vectors only).
		
		Type: float
	**/
	var w : Float;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var www : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wwzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wxzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wywx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wywy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wywz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wyzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var wzzz : Dynamic;
	/**
		Vector X axis.
		
		Type: float
	**/
	var x : Float;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xwzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xxzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xywx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xywy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xywz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xyzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var xzzz : Dynamic;
	/**
		Vector Y axis.
		
		Type: float
	**/
	var y : Float;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var ywzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yxzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yywx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yywy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yywz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yyzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var yzzz : Dynamic;
	/**
		Vector Z axis (3D Vectors only).
		
		Type: float
	**/
	var z : Float;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zwzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zxzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zywx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zywy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zywz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zyzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzww : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzwx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzwy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzwz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzxw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzxx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzxy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzxz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzyw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzyx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzyy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzyz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzz : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzzw : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzzx : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzzy : Dynamic;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	var zzzz : Dynamic;
}