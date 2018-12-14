package bmesh.utils;
/**
	BMesh Utilities (bmesh.utils)
	
	This module provides access to blenders bmesh data structures.
**/
@:pythonImport("bmesh.utils") extern class Module {
	/**
		Rotate the edge and return the newly created edge.
		If rotating the edge fails, None will be returned.
		@param edge The edge to rotate. — bmesh.types.BMEdge
		@param ccw When True the edge will be rotated counter clockwise. — boolean
		
		@returns bmesh.types.BMEdge
	**/
	function edge_rotate(edge:Dynamic, ccw:Dynamic):bmesh.types.bmedge.BMEdge;
	/**
		Split an edge, return the newly created data.
		@param edge The edge to split. — bmesh.types.BMEdge
		@param vert One of the verts on the edge, defines the split direction. — bmesh.types.BMVert
		@param fac The point on the edge where the new vert will be created [0 - 1]. — float
		
		@returns tuple
	**/
	function edge_split(edge:Dynamic, vert:Dynamic, fac:Dynamic):Dynamic;
	/**
		Flip the faces direction.
		@param face Face to flip. — bmesh.types.BMFace
	**/
	function face_flip(face:Dynamic):Void;
	/**
		Joins a sequence of faces.
		@param faces Sequence of faces. — bmesh.types.BMFace
		@param remove Remove the edges and vertices between the faces. — boolean
		
		@returns bmesh.types.BMFace
	**/
	function face_join(faces:Dynamic, remove:Dynamic):bmesh.types.bmface.BMFace;
	/**
		Face split with optional intermediate points.
		@param face The face to cut. — bmesh.types.BMFace
		@param vert_a First vertex to cut in the face (face must contain the vert). — bmesh.types.BMVert
		@param vert_b Second vertex to cut in the face (face must contain the vert). — bmesh.types.BMVert
		@param coords Optional argument to define points in between vert_a and vert_b. — sequence of float triplets
		@param use_exist .Use an existing edge if it exists (Only used when coords argument is empty or omitted) — boolean
		@param example Newly created edge will copy settings from this one. — bmesh.types.BMEdge
		
		@returns (bmesh.types.BMFace, bmesh.types.BMLoop) pair
	**/
	function face_split(face:Dynamic, vert_a:Dynamic, vert_b:Dynamic, coords:Dynamic, use_exist:Dynamic, example:Dynamic):bmesh.types.bmface.BMFace;
	/**
		Splits a face into any number of regions defined by an edgenet.
		@param face The face to split. — bmesh.types.BMFace
		@param face The face to split. — 
		@param edgenet Sequence of edges. — bmesh.types.BMEdge
		
		@returns tuple of (bmesh.types.BMFace)
	**/
	function face_split_edgenet(face:Dynamic, face:Dynamic, edgenet:Dynamic):Dynamic;
	/**
		Rip a vertex in a face away and add a new vertex.
		@param face The face to separate. — bmesh.types.BMFace
		@param vert A vertex in the face to separate. — bmesh.types.BMVert
	**/
	function face_vert_separate(face:Dynamic, vert:Dynamic):Void;
	/**
		Rip a vertex in a face away and add a new vertex.
		@param loop The loop to separate. — bmesh.types.BMLoop
	**/
	function loop_separate(loop:Dynamic):Void;
	/**
		Collapse a vertex into an edge.
		@param vert The vert that will be collapsed. — bmesh.types.BMVert
		@param edge The edge to collapse into. — bmesh.types.BMEdge
		
		@returns bmesh.types.BMEdge
	**/
	function vert_collapse_edge(vert:Dynamic, edge:Dynamic):bmesh.types.bmedge.BMEdge;
	/**
		Collapses a vertex that has only two manifold edges onto a vertex it shares an edge with.
		@param vert The vert that will be collapsed. — bmesh.types.BMVert
		@param edge The edge to collapse into. — bmesh.types.BMEdge
		@param fac The factor to use when merging customdata [0 - 1]. — float
		
		@returns bmesh.types.BMEdge
	**/
	function vert_collapse_faces(vert:Dynamic, edge:Dynamic, fac:Dynamic):bmesh.types.bmedge.BMEdge;
	/**
		Dissolve this vertex (will be removed).
		@param vert The vert to be dissolved. — bmesh.types.BMVert
		
		@returns boolean
	**/
	function vert_dissolve(vert:Dynamic):Dynamic;
	/**
		Separate this vertex at every edge.
		@param vert The vert to be separated. — bmesh.types.BMVert
		@param edges The edges to separated. — bmesh.types.BMEdge
		
		@returns tuple of bmesh.types.BMVert
	**/
	function vert_separate(vert:Dynamic, edges:Dynamic):Dynamic;
	/**
		Splice vert into vert_target.
		@param vert The vertex to be removed. — bmesh.types.BMVert
		@param vert_target The vertex to use. — bmesh.types.BMVert
	**/
	function vert_splice(vert:Dynamic, vert_target:Dynamic):Void;
}