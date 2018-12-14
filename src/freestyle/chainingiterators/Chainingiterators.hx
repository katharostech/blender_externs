package freestyle.chainingiterators;
/**
	Class hierarchy: freestyle.types.Iterator &gt;
	freestyle.types.ViewEdgeIterator &gt;
	freestyle.types.ChainingIterator &gt;
	ChainPredicateIterator
	
	A “generic” user-controlled ViewEdge iterator.  This iterator is in
	particular built from a unary predicate and a binary predicate.
	First, the unary predicate is evaluated for all potential next
	ViewEdges in order to only keep the ones respecting a certain
	constraint.  Then, the binary predicate is evaluated on the current
	ViewEdge together with each ViewEdge of the previous selection.  The
	first ViewEdge respecting both the unary predicate and the binary
	predicate is kept as the next one.  If none of the potential next
	ViewEdge respects these two predicates, None is returned.
**/
@:pythonImport("freestyle.chainingiterators.ChainPredicateIterator") extern class ChainPredicateIterator {
	/**
		Builds a ChainPredicateIterator from a unary predicate, a binary
		predicate, a starting ViewEdge and its orientation.
		@param upred The unary predicate that the next ViewEdge must satisfy. — freestyle.types.UnaryPredicate1D
		@param bpred The binary predicate that the next ViewEdge must
		                                                satisfy together with the actual pointed ViewEdge. — freestyle.types.BinaryPredicate1D
		@param restrict_to_selection Indicates whether to force the chaining
		                                                to stay within the set of selected ViewEdges or not. — bool
		@param restrict_to_unvisited Indicates whether a ViewEdge that has
		                                                already been chained must be ignored ot not. — bool
		@param begin The ViewEdge from where to start the iteration. — freestyle.types.ViewEdge or None
		@param orientation If true, we’ll look for the next ViewEdge among
		                                                the ViewEdges that surround the ending ViewVertex of begin.  If
		                                                false, we’ll search over the ViewEdges surrounding the ending
		                                                ViewVertex of begin. — bool
	**/
	function __init__(upred:Dynamic, bpred:Dynamic, restrict_to_selection:Dynamic, restrict_to_unvisited:Dynamic, begin:Dynamic, orientation:Dynamic):Void;
	/**
		Copy constructor.
		@param brother A ChainPredicateIterator object. — ChainPredicateIterator
	**/
	function __init__(brother:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.Iterator &gt;
	freestyle.types.ViewEdgeIterator &gt;
	freestyle.types.ChainingIterator &gt;
	ChainSilhouetteIterator
	
	A ViewEdge Iterator used to follow ViewEdges the most naturally.  For
	example, it will follow visible ViewEdges of same nature.  As soon, as
	the nature or the visibility changes, the iteration stops (by setting
	the pointed ViewEdge to 0).  In the case of an iteration over a set of
	ViewEdge that are both Silhouette and Crease, there will be a
	precedence of the silhouette over the crease criterion.
**/
@:pythonImport("freestyle.chainingiterators.ChainSilhouetteIterator") extern class ChainSilhouetteIterator {
	/**
		Builds a ChainSilhouetteIterator from the first ViewEdge used for
		iteration and its orientation.
		@param restrict_to_selection Indicates whether to force the chaining
		                                                to stay within the set of selected ViewEdges or not. — bool
		@param begin The ViewEdge from where to start the iteration. — freestyle.types.ViewEdge or None
		@param orientation If true, we’ll look for the next ViewEdge among
		                                                the ViewEdges that surround the ending ViewVertex of begin.  If
		                                                false, we’ll search over the ViewEdges surrounding the ending
		                                                ViewVertex of begin. — bool
	**/
	function __init__(restrict_to_selection:Dynamic, begin:Dynamic, orientation:Dynamic):Void;
	/**
		Copy constructor.
		@param brother A ChainSilhouetteIterator object. — ChainSilhouetteIterator
	**/
	function __init__(brother:Dynamic):Void;
}/**
	Natural chaining iterator that follows the edges of the same nature
	following the topology of objects, with decreasing priority for
	silhouettes, then borders, then suggestive contours, then all other edge
	types.  A ViewEdge is only chained once.
**/
@:pythonImport("freestyle.chainingiterators.pyChainSilhouetteIterator") extern class PyChainSilhouetteIterator {
	function init():Void;
	function traverse():Void;
}/**
	Natural chaining iterator that follows the edges of the same nature
	following the topology of objects, with decreasing priority for
	silhouettes, then borders, then suggestive contours, then all other
	edge types.
**/
@:pythonImport("freestyle.chainingiterators.pyChainSilhouetteGenericIterator") extern class PyChainSilhouetteGenericIterator {
	/**
		Builds a pyChainSilhouetteGenericIterator object.
		@param stayInSelection True if it is allowed to go out of the selection — bool
		@param stayInUnvisited May the same ViewEdge be chained twice — bool
	**/
	function __init__(stayInSelection:Dynamic, stayInUnvisited:Dynamic):Void;
	function init():Void;
	function traverse():Void;
}/**
	Chains by external contour
**/
@:pythonImport("freestyle.chainingiterators.pyExternalContourChainingIterator") extern class PyExternalContourChainingIterator {
	function checkViewEdge():Void;
	function init():Void;
	function traverse():Void;
}/**
	Natural chaining iterator with a sketchy multiple touch.  It chains the
	same ViewEdge multiple times to achieve a sketchy effect.
**/
@:pythonImport("freestyle.chainingiterators.pySketchyChainSilhouetteIterator") extern class PySketchyChainSilhouetteIterator {
	/**
		Builds a pySketchyChainSilhouetteIterator object.
		@param nRounds Number of times every Viewedge is chained. — int
		@param stayInSelection if False, edges outside of the selection can be chained. — bool
	**/
	function __init__(nRounds:Dynamic, stayInSelection:Dynamic):Void;
	function init():Void;
	/**
		Creates the skeychy effect by causing the chain to run from
		the start again. (loop over itself again)
	**/
	function make_sketchy():Void;
	function traverse():Void;
}/**
	Chaining iterator designed for sketchy style. It chains the same
	ViewEdge several times in order to produce multiple strokes per
	ViewEdge.
**/
@:pythonImport("freestyle.chainingiterators.pySketchyChainingIterator") extern class PySketchyChainingIterator {
	function init():Void;
	function traverse():Void;
}/**
	Chaining iterator that fills small occlusions
**/
@:pythonImport("freestyle.chainingiterators.pyFillOcclusionsRelativeChainingIterator") extern class PyFillOcclusionsRelativeChainingIterator {
	/**
		Builds a pyFillOcclusionsRelativeChainingIterator object.
		@param percent The maximal length of the occluded part, expressed
		                                        in a percentage of the total chain length. — float
	**/
	function __init__(percent:Dynamic):Void;
	function init():Void;
	function traverse():Void;
}/**
	Chaining iterator that fills small occlusions
**/
@:pythonImport("freestyle.chainingiterators.pyFillOcclusionsAbsoluteChainingIterator") extern class PyFillOcclusionsAbsoluteChainingIterator {
	/**
		Builds a pyFillOcclusionsAbsoluteChainingIterator object.
		@param length The maximum length of the occluded part in pixels. — int
	**/
	function __init__(length:Dynamic):Void;
	function init():Void;
	function traverse():Void;
}/**
	Chaining iterator that fills small occlusions regardless of the
	selection.
**/
@:pythonImport("freestyle.chainingiterators.pyFillOcclusionsAbsoluteAndRelativeChainingIterator") extern class PyFillOcclusionsAbsoluteAndRelativeChainingIterator {
	/**
		Builds a pyFillOcclusionsAbsoluteAndRelativeChainingIterator object.
		@param percent The maximal length of the occluded part as a
		                                                percentage of the total chain length. — float
		@param l Absolute length. — float
	**/
	function __init__(percent:Dynamic, l:Dynamic):Void;
	function init():Void;
	function traverse():Void;
}/**
	Chaining iterator that fills small occlusions regardless of the
	selection.
**/
@:pythonImport("freestyle.chainingiterators.pyFillQi0AbsoluteAndRelativeChainingIterator") extern class PyFillQi0AbsoluteAndRelativeChainingIterator {
	/**
		Builds a pyFillQi0AbsoluteAndRelativeChainingIterator object.
		@param percent The maximal length of the occluded part as a
		                                                percentage of the total chain length. — float
		@param l Absolute length. — float
	**/
	function __init__(percent:Dynamic, l:Dynamic):Void;
	function init():Void;
	function traverse():Void;
}/**
	Natural chaining iterator that follows the edges of the same nature
	following the topology of objects, with decreasing priority for
	silhouettes, then borders, then suggestive contours, then all other edge
	types.  It won’t chain the same ViewEdge twice.
**/
@:pythonImport("freestyle.chainingiterators.pyNoIdChainSilhouetteIterator") extern class PyNoIdChainSilhouetteIterator {
	/**
		Builds a pyNoIdChainSilhouetteIterator object.
		@param stayInSelection True if it is allowed to go out of the selection — bool
	**/
	function __init__(stayInSelection:Dynamic):Void;
	function init():Void;
	function traverse():Void;
}