package bmesh.geometry;
/**
	BMesh Geometry Utilities (bmesh.geometry)
	
	This module provides access to bmesh geometry evaluation functions.
**/
@:pythonImport("bmesh.geometry") extern class Module {
	/**
		Tests if the projection of a point is inside a face (using the face’s normal).
		@param face The face to test. — bmesh.types.BMFace
		@param point The point to test. — float triplet
		
		@returns bool
	**/
	function intersect_face_point(face:Dynamic, point:Float):Dynamic;
}