package bpy_extras.mesh_utils;
/**
	bpy_extras submodule (bpy_extras.mesh_utils)
**/
@:pythonImport("bpy_extras.mesh_utils") extern class Module {
	/**
		Splits the mesh into connected polygons, use this for separating cubes from
		other mesh elements within 1 mesh datablock.
		@param mesh the mesh used to group with. — bpy.types.Mesh
		
		@returns list
	**/
	static function mesh_linked_uv_islands(mesh:Dynamic):Dynamic;
	/**
		Splits the mesh into connected triangles, use this for separating cubes from
		other mesh elements within 1 mesh datablock.
		@param mesh the mesh used to group with. — bpy.types.Mesh
		
		@returns list
	**/
	static function mesh_linked_triangles(mesh:Dynamic):Dynamic;
	/**
		
		
		@returns dict
	**/
	static function edge_face_count_dict():Dynamic;
	/**
		
		
		@returns list
	**/
	static function edge_face_count():Dynamic;
	/**
		Edge loops defined by edges
		
		Takes me.edges or a list of edges and returns the edge loops
		
		return a list of vertex indices.
		[ [1, 6, 7, 2], …]
		
		closed loops have matching start and end values.
	**/
	static function edge_loops_from_edges():Void;
	/**
		Takes a polyline of indices (fgon) and returns a list of face
		index lists. Designed to be used for importers that need indices for an
		fgon to create from existing verts.
		@param from_data either a mesh, or a list/tuple of vectors. — list or bpy.types.Mesh
		@param indices a list of indices to use this list
		                                        is the ordered closed polyline
		                                        to fill, and can be a subset of the data given. — list
		@param fix_loops If this is enabled polylines
		                                        that use loops to make multiple
		                                        polylines are delt with correctly. — bool
	**/
	static function ngon_tessellate(from_data:list, indices:Dynamic, fix_loops:Dynamic):Void;
	/**
		Generates a list of random points over mesh loop triangles.
		@param num_points the number of random points to generate on each triangle. — 
		@param loop_triangles list of the triangles to generate points on. — bpy.types.MeshLoopTriangle, sequence
		
		@returns list
	**/
	static function triangle_random_points(num_points:Dynamic, loop_triangles:Dynamic):Dynamic;
}