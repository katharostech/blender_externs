package mathutils.kdtree;
/**
	KdTree(size) -&gt; new kd-tree initialized to hold size items.
**/
@:pythonImport("mathutils.kdtree.KDTree") extern class KDTree {
	/**
		Balance the tree.
	**/
	function balance():Void;
	/**
		Find nearest point to co.
		@param co 3d coordinates. — float triplet
		@param filter function which takes an index and returns True for indices to include in the search. — callable
		
		@returns tuple
	**/
	function find(co:Float, filter:Dynamic):Dynamic;
	/**
		Find nearest n points to co.
		@param co 3d coordinates. — float triplet
		@param n Number of points to find. — int
		
		@returns list
	**/
	function find_n(co:Float, n:Dynamic):Dynamic;
	/**
		Find all points within radius of co.
		@param co 3d coordinates. — float triplet
		@param radius Distance to search for points. — float
		
		@returns list
	**/
	function find_range(co:Float, radius:Dynamic):Dynamic;
	/**
		Insert a point into the KDTree.
		@param co Point 3d position. — float triplet
		@param index The index of the point. — int
	**/
	function insert(co:Float, index:Dynamic):Void;
}