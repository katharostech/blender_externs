package mathutils.bvhtree;
@:pythonImport("mathutils.bvhtree.BVHTree") extern class BVHTree {
	/**
		BVH tree based on BMesh data.
		@param bmesh BMesh data. — BMesh
		@param epsilon Increase the threshold for detecting overlap and raycast hits. — float
	**/
	static function FromBMesh(bmesh:Dynamic, epsilon:Dynamic):Void;
	/**
		BVH tree based on Object data.
		@param object Object data. — Object
		@param scene Scene data to use for evaluating the mesh. — Scene
		@param deform Use mesh with deformations. — bool
		@param render Use render settings. — bool
		@param cage Use render settings. — bool
		@param epsilon Increase the threshold for detecting overlap and raycast hits. — float
	**/
	static function FromObject(object:Dynamic, scene:Dynamic, deform:Dynamic, render:Dynamic, cage:Dynamic, epsilon:Dynamic):Void;
	/**
		BVH tree constructed geometry passed in as arguments.
		@param vertices float triplets each representing (x, y, z) — float triplet sequence
		@param polygons Sequence of polyugons, each containing indices to the vertices argument. — Sequence of sequences containing ints
		@param all_triangles Use when all polygons are triangles for more efficient conversion. — bool
		@param epsilon Increase the threshold for detecting overlap and raycast hits. — float
	**/
	static function FromPolygons(vertices:Float, polygons:bpy.types.sequence.Sequence, all_triangles:Dynamic, epsilon:Dynamic):Void;
	/**
		Find the nearest element (typically face index) to a point.
		@param co Find nearest element to this point. — Vector
		@param distance Maximum distance threshold. — float
		
		@returns tuple
	**/
	function find_nearest(co:Dynamic, distance:Dynamic):Dynamic;
	/**
		Find the nearest elements (typically face index) to a point in the distance range.
		@param co Find nearest elements to this point. — Vector
		@param distance Maximum distance threshold. — float
		
		@returns list
	**/
	function find_nearest_range(co:Dynamic, distance:Dynamic):Dynamic;
	/**
		Find overlapping indices between 2 trees.
		@param other_tree Other tree to perform overlap test on. — BVHTree
		
		@returns list
	**/
	function overlap(other_tree:Dynamic):Dynamic;
	/**
		Cast a ray onto the mesh.
		@param co Start location of the ray in object space. — Vector
		@param direction Direction of the ray in object space. — Vector
		@param distance Maximum distance threshold. — float
		
		@returns tuple
	**/
	function ray_cast(co:Dynamic, direction:Dynamic, distance:Dynamic):Dynamic;
}