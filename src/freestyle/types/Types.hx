package freestyle.types;
/**
	Class hierarchy: Iterator &gt; AdjacencyIterator
	
	Class for representing adjacency iterators used in the chaining
	process.  An AdjacencyIterator is created in the increment() and
	decrement() methods of a ChainingIterator and passed to the
	traverse() method of the ChainingIterator.
**/
@:pythonImport("freestyle.types.AdjacencyIterator") extern class AdjacencyIterator {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother An AdjacencyIterator object. — AdjacencyIterator
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Builds a AdjacencyIterator object.
		@param vertex The vertex which is the next crossing. — ViewVertex
		@param restrict_to_selection Indicates whether to force the chaining
		                                                to stay within the set of selected ViewEdges or not. — bool
		@param restrict_to_unvisited Indicates whether a ViewEdge that has
		                                                already been chained must be ignored ot not. — bool
	**/
	function __init__(vertex:Dynamic, restrict_to_selection:Dynamic, restrict_to_unvisited:Dynamic):Void;
	/**
		True if the current ViewEdge is coming towards the iteration vertex, and
		False otherwise.
		
		Type: bool
	**/
	var is_incoming : Dynamic;
	/**
		The ViewEdge object currently pointed to by this iterator.
		
		Type: ViewEdge
	**/
	var object : freestyle.types.viewedge.ViewEdge;
}/**
	Class for representing a bounding box.
**/
@:pythonImport("freestyle.types.BBox") extern class BBox {
	/**
		Default constructor.
	**/
	function __init__():Void;
}/**
	Base class for binary predicates working on Interface0D
	objects.  A BinaryPredicate0D is typically an ordering relation
	between two Interface0D objects.  The predicate evaluates a relation
	between the two Interface0D instances and returns a boolean value (true
	or false).  It is used by invoking the __call__() method.
**/
@:pythonImport("freestyle.types.BinaryPredicate0D") extern class BinaryPredicate0D {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Must be overload by inherited classes.  It evaluates a relation
		between two Interface0D objects.
		@param inter1 The first Interface0D object. — Interface0D
		@param inter2 The second Interface0D object. — Interface0D
		
		@returns bool
	**/
	function __call__(inter1:Dynamic, inter2:Dynamic):Dynamic;
	/**
		The name of the binary 0D predicate.
		
		Type: str
	**/
	var name : Dynamic;
}/**
	Base class for binary predicates working on Interface1D
	objects.  A BinaryPredicate1D is typically an ordering relation
	between two Interface1D objects.  The predicate evaluates a relation
	between the two Interface1D instances and returns a boolean value (true
	or false).  It is used by invoking the __call__() method.
**/
@:pythonImport("freestyle.types.BinaryPredicate1D") extern class BinaryPredicate1D {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Must be overload by inherited classes. It evaluates a relation
		between two Interface1D objects.
		@param inter1 The first Interface1D object. — Interface1D
		@param inter2 The second Interface1D object. — Interface1D
		
		@returns bool
	**/
	function __call__(inter1:Dynamic, inter2:Dynamic):Dynamic;
	/**
		The name of the binary 1D predicate.
		
		Type: str
	**/
	var name : Dynamic;
}/**
	Class hierarchy: Interface1D &gt; Curve &gt; Chain
	
	Class to represent a 1D elements issued from the chaining process.  A
	Chain is the last step before the Stroke and is used in the
	Splitting and Creation processes.
**/
@:pythonImport("freestyle.types.Chain") extern class Chain {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother A Chain object. — Chain
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Builds a chain from its Id.
		@param id An Id object. — Id
	**/
	function __init__(id:Dynamic):Void;
	/**
		Adds a ViewEdge at the end of the Chain.
		@param viewedge The ViewEdge that must be added. — ViewEdge
		@param orientation The orientation with which the ViewEdge must be
		                                                processed. — bool
	**/
	function push_viewedge_back(viewedge:Dynamic, orientation:Dynamic):Void;
	/**
		Adds a ViewEdge at the beginning of the Chain.
		@param viewedge The ViewEdge that must be added. — ViewEdge
		@param orientation The orientation with which the ViewEdge must be
		                                                processed. — bool
	**/
	function push_viewedge_front(viewedge:Dynamic, orientation:Dynamic):Void;
}/**
	Class hierarchy: Iterator &gt; ViewEdgeIterator &gt; ChainingIterator
	
	Base class for chaining iterators.  This class is designed to be
	overloaded in order to describe chaining rules.  It makes the
	description of chaining rules easier.  The two main methods that need
	to overloaded are traverse() and init().  traverse() tells which
	ViewEdge to follow, among the adjacent ones.  If you specify
	restriction rules (such as “Chain only ViewEdges of the selection”),
	they will be included in the adjacency iterator (i.e, the adjacent
	iterator will only stop on “valid” edges).
**/
@:pythonImport("freestyle.types.ChainingIterator") extern class ChainingIterator {
	/**
		Builds a Chaining Iterator from the first ViewEdge used for
		iteration and its orientation.
		@param restrict_to_selection Indicates whether to force the chaining
		                                                to stay within the set of selected ViewEdges or not. — bool
		@param restrict_to_unvisited Indicates whether a ViewEdge that has
		                                                already been chained must be ignored ot not. — bool
		@param begin The ViewEdge from which to start the chain. — ViewEdge or None
		@param orientation The direction to follow to explore the graph.  If
		                                                true, the direction indicated by the first ViewEdge is used. — bool
	**/
	function __init__(restrict_to_selection:Dynamic, restrict_to_unvisited:Dynamic, begin:Dynamic, orientation:Dynamic):Void;
	/**
		Copy constructor.
		@param brother  — ChainingIterator
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Initializes the iterator context.  This method is called each
		time a new chain is started.  It can be used to reset some
		history information that you might want to keep.
	**/
	function init():Void;
	/**
		This method iterates over the potential next ViewEdges and returns
		the one that will be followed next.  Returns the next ViewEdge to
		follow or None when the end of the chain is reached.
		@param it The iterator over the ViewEdges adjacent to the end vertex
		                                        of the current ViewEdge.  The adjacency iterator reflects the
		                                        restriction rules by only iterating over the valid ViewEdges. — AdjacencyIterator
		
		@returns ViewEdge or None
	**/
	function traverse(it:Dynamic):freestyle.types.viewedge.ViewEdge;
	/**
		True if the current iteration is an incrementation.
		
		Type: bool
	**/
	var is_incrementing : Dynamic;
	/**
		The ViewVertex that is the next crossing.
		
		Type: ViewVertex
	**/
	var next_vertex : freestyle.types.viewvertex.ViewVertex;
	/**
		The ViewEdge object currently pointed by this iterator.
		
		Type: ViewEdge
	**/
	var object : freestyle.types.viewedge.ViewEdge;
}/**
	Class hierarchy: Interface1D &gt; Curve
	
	Base class for curves made of CurvePoints.  SVertex is the
	type of the initial curve vertices.  A Chain is a
	specialization of a Curve.
**/
@:pythonImport("freestyle.types.Curve") extern class Curve {
	/**
		Default Constructor.
	**/
	function __init__():Void;
	/**
		Copy Constructor.
		@param brother A Curve object. — Curve
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Builds a Curve from its Id.
		@param id An Id object. — Id
	**/
	function __init__(id:Dynamic):Void;
	/**
		Adds a single vertex at the end of the Curve.
		@param vertex A vertex object. — SVertex or CurvePoint
	**/
	function push_vertex_back(vertex:Dynamic):Void;
	/**
		Adds a single vertex at the front of the Curve.
		@param vertex A vertex object. — SVertex or CurvePoint
	**/
	function push_vertex_front(vertex:Dynamic):Void;
	/**
		True if the Curve doesn’t have any Vertex yet.
		
		Type: bool
	**/
	var is_empty : Dynamic;
	/**
		The number of segments in the polyline constituting the Curve.
		
		Type: int
	**/
	var segments_size : Dynamic;
}/**
	Class hierarchy: Interface0D &gt; CurvePoint
	
	Class to represent a point of a curve.  A CurvePoint can be any point
	of a 1D curve (it doesn’t have to be a vertex of the curve).  Any
	Interface1D is built upon ViewEdges, themselves built upon
	FEdges.  Therefore, a curve is basically a polyline made of a list of
	SVertex objects.  Thus, a CurvePoint is built by linearly
	interpolating two SVertex instances.  CurvePoint can be used
	as virtual points while querying 0D information along a curve at a
	given resolution.
**/
@:pythonImport("freestyle.types.CurvePoint") extern class CurvePoint {
	/**
		Defult constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother A CurvePoint object. — CurvePoint
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Builds a CurvePoint from two SVertex objects and an interpolation parameter.
		@param first_vertex The first SVertex. — SVertex
		@param second_vertex The second SVertex. — SVertex
		@param t2d A 2D interpolation parameter used to linearly interpolate
		                                                first_vertex and second_vertex. — float
	**/
	function __init__(first_vertex:Dynamic, second_vertex:Dynamic, t2d:Dynamic):Void;
	/**
		Builds a CurvePoint from two CurvePoint objects and an interpolation
		parameter.
		@param first_point The first CurvePoint. — CurvePoint
		@param second_point The second CurvePoint. — CurvePoint
		@param t2d The 2D interpolation parameter used to linearly interpolate
		                                                first_point and second_point. — float
	**/
	function __init__(first_point:Dynamic, second_point:Dynamic, t2d:Dynamic):Void;
	/**
		Gets the FEdge for the two SVertices that given CurvePoints consists out of.
		A shortcut for CurvePoint.first_svertex.get_fedge(CurvePoint.second_svertex).
		
		Type: FEdge
	**/
	var fedge : freestyle.types.fedge.FEdge;
	/**
		The first SVertex upon which the CurvePoint is built.
		
		Type: SVertex
	**/
	var first_svertex : freestyle.types.svertex.SVertex;
	/**
		The second SVertex upon which the CurvePoint is built.
		
		Type: SVertex
	**/
	var second_svertex : freestyle.types.svertex.SVertex;
	/**
		The 2D interpolation parameter.
		
		Type: float
	**/
	var t2d : Dynamic;
}/**
	Class hierarchy: Iterator &gt; CurvePointIterator
	
	Class representing an iterator on a curve.  Allows an iterating
	outside initial vertices.  A CurvePoint is instanciated and returned
	through the .object attribute.
**/
@:pythonImport("freestyle.types.CurvePointIterator") extern class CurvePointIterator {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother A CurvePointIterator object. — CurvePointIterator
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Builds a CurvePointIterator object.
		@param step A resampling resolution with which the curve is resampled.
		                                        If zero, no resampling is done (i.e., the iterator iterates over
		                                        initial vertices). — float
	**/
	function __init__(step:Dynamic):Void;
	/**
		The CurvePoint object currently pointed by this iterator.
		
		Type: CurvePoint
	**/
	var object : freestyle.types.curvepoint.CurvePoint;
	/**
		The curvilinear abscissa of the current point.
		
		Type: float
	**/
	var t : Dynamic;
	/**
		The point parameter at the current point in the stroke (0 &lt;= u &lt;= 1).
		
		Type: float
	**/
	var u : Dynamic;
}/**
	Class hierarchy: Interface1D &gt; FEdge
	
	Base Class for feature edges.  This FEdge can represent a silhouette,
	a crease, a ridge/valley, a border or a suggestive contour.  For
	silhouettes, the FEdge is oriented so that the visible face lies on
	the left of the edge.  For borders, the FEdge is oriented so that the
	face lies on the left of the edge.  An FEdge can represent an initial
	edge of the mesh or runs across a face of the initial mesh depending
	on the smoothness or sharpness of the mesh.  This class is specialized
	into a smooth and a sharp version since their properties slightly vary
	from one to the other.
**/
@:pythonImport("freestyle.types.FEdge") extern class FEdge {
	/**
		Default constructor.
	**/
	function FEdge():Void;
	/**
		Copy constructor.
		@param brother An FEdge object. — FEdge
	**/
	function FEdge(brother:Dynamic):Void;
	/**
		Builds an FEdge going from the first vertex to the second.
		@param first_vertex The first SVertex. — SVertex
		@param second_vertex The second SVertex. — SVertex
	**/
	function FEdge(first_vertex:Dynamic, second_vertex:Dynamic):Void;
	/**
		The first SVertex constituting this FEdge.
		
		Type: SVertex
	**/
	var first_svertex : freestyle.types.svertex.SVertex;
	/**
		The Id of this FEdge.
		
		Type: Id
	**/
	var id : freestyle.types.id.Id;
	/**
		True if this FEdge is a smooth FEdge.
		
		Type: bool
	**/
	var is_smooth : Dynamic;
	/**
		The nature of this FEdge.
		
		Type: Nature
	**/
	var nature : freestyle.types.nature.Nature;
	/**
		The FEdge following this one in the ViewEdge.  The value is None if
		this FEdge is the last of the ViewEdge.
		
		Type: FEdge
	**/
	var next_fedge : freestyle.types.fedge.FEdge;
	/**
		The FEdge preceding this one in the ViewEdge.  The value is None if
		this FEdge is the first one of the ViewEdge.
		
		Type: FEdge
	**/
	var previous_fedge : freestyle.types.fedge.FEdge;
	/**
		The second SVertex constituting this FEdge.
		
		Type: SVertex
	**/
	var second_svertex : freestyle.types.svertex.SVertex;
	/**
		The ViewEdge to which this FEdge belongs to.
		
		Type: ViewEdge
	**/
	var viewedge : freestyle.types.viewedge.ViewEdge;
}/**
	Class hierarchy: Interface1D &gt; FEdge &gt; FEdgeSharp
	
	Class defining a sharp FEdge.  A Sharp FEdge corresponds to an initial
	edge of the input mesh.  It can be a silhouette, a crease or a border.
	If it is a crease edge, then it is borded by two faces of the mesh.
	Face a lies on its right whereas Face b lies on its left.  If it is a
	border edge, then it doesn’t have any face on its right, and thus Face
	a is None.
**/
@:pythonImport("freestyle.types.FEdgeSharp") extern class FEdgeSharp {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother An FEdgeSharp object. — FEdgeSharp
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Builds an FEdgeSharp going from the first vertex to the second.
		@param first_vertex The first SVertex object. — SVertex
		@param second_vertex The second SVertex object. — SVertex
	**/
	function __init__(first_vertex:Dynamic, second_vertex:Dynamic):Void;
	/**
		The face mark of the face lying on the left of the FEdge.
		
		Type: bool
	**/
	var face_mark_left : Dynamic;
	/**
		The face mark of the face lying on the right of the FEdge.  If this FEdge
		is a border, it has no face on the right and thus this property is set to
		false.
		
		Type: bool
	**/
	var face_mark_right : Dynamic;
	/**
		The index of the material of the face lying on the left of the FEdge.
		
		Type: int
	**/
	var material_index_left : Dynamic;
	/**
		The index of the material of the face lying on the right of the FEdge.
		If this FEdge is a border, it has no Face on its right and therefore
		no material.
		
		Type: int
	**/
	var material_index_right : Dynamic;
	/**
		The material of the face lying on the left of the FEdge.
		
		Type: Material
	**/
	var material_left : freestyle.types.material.Material;
	/**
		The material of the face lying on the right of the FEdge.  If this FEdge
		is a border, it has no Face on its right and therefore no material.
		
		Type: Material
	**/
	var material_right : freestyle.types.material.Material;
	/**
		The normal to the face lying on the left of the FEdge.
		
		Type: mathutils.Vector
	**/
	var normal_left : mathutils.vector.Vector;
	/**
		The normal to the face lying on the right of the FEdge.  If this FEdge
		is a border, it has no Face on its right and therefore no normal.
		
		Type: mathutils.Vector
	**/
	var normal_right : mathutils.vector.Vector;
}/**
	Class hierarchy: Interface1D &gt; FEdge &gt; FEdgeSmooth
	
	Class defining a smooth edge.  This kind of edge typically runs across
	a face of the input mesh.  It can be a silhouette, a ridge or valley,
	a suggestive contour.
**/
@:pythonImport("freestyle.types.FEdgeSmooth") extern class FEdgeSmooth {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother An FEdgeSmooth object. — FEdgeSmooth
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Builds an FEdgeSmooth going from the first to the second.
		@param first_vertex The first SVertex object. — SVertex
		@param second_vertex The second SVertex object. — SVertex
	**/
	function __init__(first_vertex:Dynamic, second_vertex:Dynamic):Void;
	/**
		The face mark of the face that this FEdge is running across.
		
		Type: bool
	**/
	var face_mark : Dynamic;
	/**
		The material of the face that this FEdge is running across.
		
		Type: Material
	**/
	var material : freestyle.types.material.Material;
	/**
		The index of the material of the face that this FEdge is running across.
		
		Type: int
	**/
	var material_index : Dynamic;
	/**
		The normal of the face that this FEdge is running across.
		
		Type: mathutils.Vector
	**/
	var normal : mathutils.vector.Vector;
}/**
	Class for representing an object Id.
**/
@:pythonImport("freestyle.types.Id") extern class Id {
	/**
		Build the Id from two numbers.
		@param first The first number. — int
		@param second The second number. — int
	**/
	function __init__(first:Dynamic, second:Dynamic):Void;
	/**
		Copy constructor.
		@param brother An Id object. — Id
	**/
	function __init__(brother:Dynamic):Void;
	/**
		The first number constituting the Id.
		
		Type: int
	**/
	var first : Dynamic;
	/**
		The second number constituting the Id.
		
		Type: int
	**/
	var second : Dynamic;
}/**
	Class hierarchy: int &gt; IntegrationType
	
	Different integration methods that can be invoked to integrate into a
	single value the set of values obtained from each 0D element of an 1D
	element:
**/
@:pythonImport("freestyle.types.IntegrationType") extern class IntegrationType {

}/**
	Base class for any 0D element.
**/
@:pythonImport("freestyle.types.Interface0D") extern class Interface0D {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Returns the FEdge that lies between this 0D element and the 0D
		element given as the argument.
		@param inter A 0D element. — Interface0D
		
		@returns FEdge
	**/
	function get_fedge(inter:Dynamic):freestyle.types.fedge.FEdge;
	/**
		The Id of this 0D element.
		
		Type: Id
	**/
	var id : freestyle.types.id.Id;
	/**
		The string of the name of this 0D element.
		
		Type: str
	**/
	var name : Dynamic;
	/**
		The nature of this 0D element.
		
		Type: Nature
	**/
	var nature : freestyle.types.nature.Nature;
	/**
		The 2D point of this 0D element.
		
		Type: mathutils.Vector
	**/
	var point_2d : mathutils.vector.Vector;
	/**
		The 3D point of this 0D element.
		
		Type: mathutils.Vector
	**/
	var point_3d : mathutils.vector.Vector;
	/**
		The X coordinate of the projected 3D point of this 0D element.
		
		Type: float
	**/
	var projected_x : Dynamic;
	/**
		The Y coordinate of the projected 3D point of this 0D element.
		
		Type: float
	**/
	var projected_y : Dynamic;
	/**
		The Z coordinate of the projected 3D point of this 0D element.
		
		Type: float
	**/
	var projected_z : Dynamic;
}/**
	Class hierarchy: Iterator &gt; Interface0DIterator
	
	Class defining an iterator over Interface0D elements.  An instance of
	this iterator is always obtained from a 1D element.
**/
@:pythonImport("freestyle.types.Interface0DIterator") extern class Interface0DIterator {
	/**
		Copy constructor.
		@param brother An Interface0DIterator object. — Interface0DIterator
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Construct a nested Interface0DIterator that can be the argument of
		a Function0D.
		@param it An iterator object to be nested. — SVertexIterator, CurvePointIterator, or
		                                        StrokeVertexIterator
	**/
	function __init__(it:Dynamic):Void;
	/**
		True if the interator points to the last valid element.
		For its counterpart (pointing to the first valid element), use it.is_begin.
		
		Type: bool
	**/
	var at_last : Dynamic;
	/**
		The 0D object currently pointed to by this iterator.  Note that the object
		may be an instance of an Interface0D subclass. For example if the iterator
		has been created from the vertices_begin() method of the Stroke
		class, the .object property refers to a StrokeVertex object.
		
		Type: Interface0D or one of its subclasses.
	**/
	var object : freestyle.types.interface0d.Interface0D;
	/**
		The curvilinear abscissa of the current point.
		
		Type: float
	**/
	var t : Dynamic;
	/**
		The point parameter at the current point in the 1D element (0 &lt;= u &lt;= 1).
		
		Type: float
	**/
	var u : Dynamic;
}/**
	Base class for any 1D element.
**/
@:pythonImport("freestyle.types.Interface1D") extern class Interface1D {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Returns an iterator over the Interface1D points, pointing to the
		first point. The difference with vertices_begin() is that here we can
		iterate over points of the 1D element at a any given sampling.
		Indeed, for each iteration, a virtual point is created.
		@param t A sampling with which we want to iterate over points of
		                                        this 1D element. — float
		
		@returns Interface0DIterator
	**/
	function points_begin(t:Dynamic):freestyle.types.interface0diterator.Interface0DIterator;
	/**
		Returns an iterator over the Interface1D points, pointing after the
		last point. The difference with vertices_end() is that here we can
		iterate over points of the 1D element at a given sampling.  Indeed,
		for each iteration, a virtual point is created.
		@param t A sampling with which we want to iterate over points of
		                                        this 1D element. — float
		
		@returns Interface0DIterator
	**/
	function points_end(t:Dynamic):freestyle.types.interface0diterator.Interface0DIterator;
	/**
		Returns an iterator over the Interface1D vertices, pointing to the
		first vertex.
		
		@returns Interface0DIterator
	**/
	function vertices_begin():freestyle.types.interface0diterator.Interface0DIterator;
	/**
		Returns an iterator over the Interface1D vertices, pointing after
		the last vertex.
		
		@returns Interface0DIterator
	**/
	function vertices_end():freestyle.types.interface0diterator.Interface0DIterator;
	/**
		The Id of this Interface1D.
		
		Type: Id
	**/
	var id : freestyle.types.id.Id;
	/**
		The 2D length of this Interface1D.
		
		Type: float
	**/
	var length_2d : Dynamic;
	/**
		The string of the name of the 1D element.
		
		Type: str
	**/
	var name : Dynamic;
	/**
		The nature of this Interface1D.
		
		Type: Nature
	**/
	var nature : freestyle.types.nature.Nature;
	/**
		The time stamp of the 1D element, mainly used for selection.
		
		Type: int
	**/
	var time_stamp : Dynamic;
}/**
	Base class to define iterators.
**/
@:pythonImport("freestyle.types.Iterator") extern class Iterator {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Makes the iterator point the previous element.
	**/
	function decrement():Void;
	/**
		Makes the iterator point the next element.
	**/
	function increment():Void;
	/**
		True if the interator points the first element.
		
		Type: bool
	**/
	var is_begin : Dynamic;
	/**
		True if the interator points the last element.
		
		Type: bool
	**/
	var is_end : Dynamic;
	/**
		The string of the name of this iterator.
		
		Type: str
	**/
	var name : Dynamic;
}/**
	Class defining a material.
**/
@:pythonImport("freestyle.types.Material") extern class Material {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother A Material object. — Material
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Builds a Material from its line, diffuse, ambient, specular, emissive
		colors, a shininess coefficient and line color priority.
		@param line The line color. — mathutils.Vector, list or tuple of 4 float values
		@param diffuse The diffuse color. — mathutils.Vector, list or tuple of 4 float values
		@param ambient The ambient color. — mathutils.Vector, list or tuple of 4 float values
		@param specular The specular color. — mathutils.Vector, list or tuple of 4 float values
		@param emission The emissive color. — mathutils.Vector, list or tuple of 4 float values
		@param shininess The shininess coefficient. — float
		@param priority The line color priority. — int
	**/
	function __init__(line:Dynamic, diffuse:Dynamic, ambient:Dynamic, specular:Dynamic, emission:Dynamic, shininess:Dynamic, priority:Dynamic):Void;
	/**
		RGBA components of the ambient color of the material.
		
		Type: mathutils.Color
	**/
	var ambient : mathutils.color.Color;
	/**
		RGBA components of the diffuse color of the material.
		
		Type: mathutils.Vector
	**/
	var diffuse : mathutils.vector.Vector;
	/**
		RGBA components of the emissive color of the material.
		
		Type: mathutils.Color
	**/
	var emission : mathutils.color.Color;
	/**
		RGBA components of the line color of the material.
		
		Type: mathutils.Vector
	**/
	var line : mathutils.vector.Vector;
	/**
		Line color priority of the material.
		
		Type: int
	**/
	var priority : Dynamic;
	/**
		Shininess coefficient of the material.
		
		Type: float
	**/
	var shininess : Dynamic;
	/**
		RGBA components of the specular color of the material.
		
		Type: mathutils.Vector
	**/
	var specular : mathutils.vector.Vector;
}/**
	Class hierarchy: int &gt; MediumType
	
	The different blending modes available to similate the interaction
	media-medium:
**/
@:pythonImport("freestyle.types.MediumType") extern class MediumType {

}/**
	Class hierarchy: int &gt; Nature
	
	Different possible natures of 0D and 1D elements of the ViewMap.
	
	Vertex natures:
	
	Edge natures:
**/
@:pythonImport("freestyle.types.Nature") extern class Nature {

}/**
	Class to provide Perlin noise functionalities.
	
	Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	
	Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
**/
@:pythonImport("freestyle.types.Noise") extern class Noise {
	/**
		Builds a Noise object.  Seed is an optional argument.  The seed value is used
		as a seed for random number generation if it is equal to or greater than zero;
		otherwise, time is used as a seed.
		@param seed Seed for random number generation. — int
	**/
	function __init__(seed:Dynamic):Void;
	/**
		Returns a smooth noise value for a 1D element.
		@param v One-dimensional sample point. — float
		
		@returns float
	**/
	function smoothNoise1(v:Dynamic):Dynamic;
	/**
		Returns a smooth noise value for a 2D element.
		@param v Two-dimensional sample point. — mathutils.Vector, list or tuple of 2 real numbers
		
		@returns float
	**/
	function smoothNoise2(v:Dynamic):Dynamic;
	/**
		Returns a smooth noise value for a 3D element.
		@param v Three-dimensional sample point. — mathutils.Vector, list or tuple of 3 real numbers
		
		@returns float
	**/
	function smoothNoise3(v:Dynamic):Dynamic;
	/**
		Returns a noise value for a 1D element.
		@param v One-dimensional sample point. — float
		@param freq Noise frequency. — float
		@param amp Amplitude. — float
		@param oct Number of octaves. — int
		
		@returns float
	**/
	function turbulence1(v:Dynamic, freq:Dynamic, amp:Dynamic, oct:Dynamic):Dynamic;
	/**
		Returns a noise value for a 2D element.
		@param v Two-dimensional sample point. — mathutils.Vector, list or tuple of 2 real numbers
		@param freq Noise frequency. — float
		@param amp Amplitude. — float
		@param oct Number of octaves. — int
		
		@returns float
	**/
	function turbulence2(v:Dynamic, freq:Dynamic, amp:Dynamic, oct:Dynamic):Dynamic;
	/**
		Returns a noise value for a 3D element.
		@param v Three-dimensional sample point. — mathutils.Vector, list or tuple of 3 real numbers
		@param freq Noise frequency. — float
		@param amp Amplitude. — float
		@param oct Number of octaves. — int
		
		@returns float
	**/
	function turbulence3(v:Dynamic, freq:Dynamic, amp:Dynamic, oct:Dynamic):Dynamic;
}/**
	Class hierarchy: Interface0D &gt; ViewVertex &gt; NonTVertex
	
	View vertex for corners, cusps, etc. associated to a single SVertex.
	Can be associated to 2 or more view edges.
**/
@:pythonImport("freestyle.types.NonTVertex") extern class NonTVertex {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Build a NonTVertex from a SVertex.
		@param svertex An SVertex object. — SVertex
	**/
	function __init__(svertex:Dynamic):Void;
	/**
		The SVertex on top of which this NonTVertex is built.
		
		Type: SVertex
	**/
	var svertex : freestyle.types.svertex.SVertex;
}/**
	Class defining the operators used in a style module.  There are five
	types of operators: Selection, chaining, splitting, sorting and
	creation.  All these operators are user controlled through functors,
	predicates and shaders that are taken as arguments.
**/
@:pythonImport("freestyle.types.Operators") extern class Operators {
	/**
		Builds a set of chains from the current set of ViewEdges.  Each
		ViewEdge of the current list potentially starts a new chain.  The
		chaining operator then iterates over the ViewEdges of the ViewMap
		using the user specified iterator.  This operator iterates both using
		the increment and decrement operators and is therefore bidirectional.
		This operator works with a ChainingIterator which contains the
		chaining rules.  It is this last one which can be told to chain only
		edges that belong to the selection or not to process twice a ViewEdge
		during the chaining.  Each time a ViewEdge is added to a chain, its
		chaining time stamp is incremented.  This allows you to keep track of
		the number of chains to which a ViewEdge belongs to.
		@param it The ChainingIterator on the ViewEdges of the ViewMap.  It
		                                                contains the chaining rule. — ChainingIterator
		@param pred The predicate on the ViewEdge that expresses the
		                                                stopping condition. — UnaryPredicate1D
	**/
	static function bidirectional_chain(it:Dynamic, pred:Dynamic):Void;
	/**
		The only difference with the above bidirectional chaining algorithm
		is that we don’t need to pass a stopping criterion.  This might be
		desirable when the stopping criterion is already contained in the
		iterator definition.  Builds a set of chains from the current set of
		ViewEdges.  Each ViewEdge of the current list potentially starts a new
		chain.  The chaining operator then iterates over the ViewEdges of the
		ViewMap using the user specified iterator.  This operator iterates
		both using the increment and decrement operators and is therefore
		bidirectional.  This operator works with a ChainingIterator which
		contains the chaining rules.  It is this last one which can be told to
		chain only edges that belong to the selection or not to process twice
		a ViewEdge during the chaining.  Each time a ViewEdge is added to a
		chain, its chaining time stamp is incremented.  This allows you to
		keep track of the number of chains to which a ViewEdge belongs to.
		@param it The ChainingIterator on the ViewEdges of the ViewMap.  It
		                                        contains the chaining rule. — ChainingIterator
	**/
	static function bidirectional_chain(it:Dynamic):Void;
	/**
		Builds a set of chains from the current set of ViewEdges.  Each
		ViewEdge of the current list starts a new chain.  The chaining
		operator then iterates over the ViewEdges of the ViewMap using the
		user specified iterator.  This operator only iterates using the
		increment operator and is therefore unidirectional.
		@param it The iterator on the ViewEdges of the ViewMap. It contains
		                                                the chaining rule. — ViewEdgeIterator
		@param pred The predicate on the ViewEdge that expresses the
		                                                stopping condition. — UnaryPredicate1D
		@param modifier A function that takes a ViewEdge as argument and
		                                                that is used to modify the processed ViewEdge state (the
		                                                timestamp incrementation is a typical illustration of such a
		                                                modifier). — UnaryFunction1DVoid
	**/
	static function chain(it:Dynamic, pred:Dynamic, modifier:Dynamic):Void;
	/**
		Builds a set of chains from the current set of ViewEdges.  Each
		ViewEdge of the current list starts a new chain.  The chaining
		operator then iterates over the ViewEdges of the ViewMap using the
		user specified iterator.  This operator only iterates using the
		increment operator and is therefore unidirectional.  This chaining
		operator is different from the previous one because it doesn’t take
		any modifier as argument.  Indeed, the time stamp (insuring that a
		ViewEdge is processed one time) is automatically managed in this
		case.
		@param it The iterator on the ViewEdges of the ViewMap. It contains
		                                                the chaining rule. — ViewEdgeIterator
		@param pred The predicate on the ViewEdge that expresses the
		                                                stopping condition. — UnaryPredicate1D
	**/
	static function chain(it:Dynamic, pred:Dynamic):Void;
	/**
		Creates and shades the strokes from the current set of chains.  A
		predicate can be specified to make a selection pass on the chains.
		@param pred The predicate that a chain must verify in order to be
		                                                transform as a stroke. — UnaryPredicate1D
		@param shaders The list of shaders used to shade the strokes. — list of StrokeShader objects
	**/
	static function create(pred:Dynamic, shaders:Array<Dynamic>):Void;
	/**
		Returns the Chain at the index in the current set of Chains.
		@param i index (0 &lt;= i &lt; Operators.get_chains_size()). — int
		
		@returns Chain
	**/
	static function get_chain_from_index(i:Dynamic):freestyle.types.chain.Chain;
	/**
		Returns the number of Chains.
		
		@returns int
	**/
	static function get_chains_size():Dynamic;
	/**
		Returns the Stroke at the index in the current set of Strokes.
		@param i index (0 &lt;= i &lt; Operators.get_strokes_size()). — int
		
		@returns Stroke
	**/
	static function get_stroke_from_index(i:Dynamic):freestyle.types.stroke.Stroke;
	/**
		Returns the number of Strokes.
		
		@returns int
	**/
	static function get_strokes_size():Dynamic;
	/**
		Returns the number of ViewEdges.
		
		@returns int
	**/
	static function get_view_edges_size():Dynamic;
	/**
		Returns the ViewEdge at the index in the current set of ViewEdges.
		@param i index (0 &lt;= i &lt; Operators.get_view_edges_size()). — int
		
		@returns ViewEdge
	**/
	static function get_viewedge_from_index(i:Dynamic):freestyle.types.viewedge.ViewEdge;
	/**
		Splits the current set of chains in a recursive way.  We process the
		points of each chain (with a specified sampling) to find the point
		minimizing a specified function.  The chain is split in two at this
		point and the two new chains are processed in the same way.  The
		recursivity level is controlled through a predicate 1D that expresses
		a stopping condition on the chain that is about to be processed.
		@param func The Unary Function evaluated at each point of the chain.
		                                                The splitting point is the point minimizing this function. — UnaryFunction0DDouble
		@param pred_1d The Unary Predicate expressing the recursivity stopping
		                                                condition.  This predicate is evaluated for each curve before it
		                                                actually gets split.  If pred_1d(chain) is true, the curve won’t be
		                                                split anymore. — UnaryPredicate1D
		@param sampling The resolution used to sample the chain for the
		                                                predicates evaluation. (The chain is not actually resampled, a
		                                                virtual point only progresses along the curve using this
		                                                resolution.) — float
	**/
	static function recursive_split(func:Dynamic, pred_1d:Dynamic, sampling:Dynamic):Void;
	/**
		Splits the current set of chains in a recursive way.  We process the
		points of each chain (with a specified sampling) to find the point
		minimizing a specified function.  The chain is split in two at this
		point and the two new chains are processed in the same way.  The user
		can specify a 0D predicate to make a first selection on the points
		that can potentially be split.  A point that doesn’t verify the 0D
		predicate won’t be candidate in realizing the min.  The recursivity
		level is controlled through a predicate 1D that expresses a stopping
		condition on the chain that is about to be processed.
		@param func The Unary Function evaluated at each point of the chain.
		                                                The splitting point is the point minimizing this function. — UnaryFunction0DDouble
		@param pred_0d The Unary Predicate 0D used to select the candidate
		                                                points where the split can occur.  For example, it is very likely
		                                                that would rather have your chain splitting around its middle
		                                                point than around one of its extremities.  A 0D predicate working
		                                                on the curvilinear abscissa allows to add this kind of constraints. — UnaryPredicate0D
		@param pred_1d The Unary Predicate expressing the recursivity stopping
		                                                condition. This predicate is evaluated for each curve before it
		                                                actually gets split.  If pred_1d(chain) is true, the curve won’t be
		                                                split anymore. — UnaryPredicate1D
		@param sampling The resolution used to sample the chain for the
		                                                predicates evaluation. (The chain is not actually resampled; a
		                                                virtual point only progresses along the curve using this
		                                                resolution.) — float
	**/
	static function recursive_split(func:Dynamic, pred_0d:Dynamic, pred_1d:Dynamic, sampling:Dynamic):Void;
	/**
		Resets the line stylization process to the initial state.  The results of
		stroke creation are accumulated if delete_strokes is set to False.
		@param delete_strokes Delete the strokes that are currently stored. — bool
	**/
	static function reset(delete_strokes:Dynamic):Void;
	/**
		Selects the ViewEdges of the ViewMap verifying a specified
		condition.
		@param pred The predicate expressing this condition. — UnaryPredicate1D
	**/
	static function select(pred:Dynamic):Void;
	/**
		Splits each chain of the current set of chains in a sequential way.
		The points of each chain are processed (with a specified sampling)
		sequentially. Each time a user specified starting condition is
		verified, a new chain begins and ends as soon as a user-defined
		stopping predicate is verified. This allows chains overlapping rather
		than chains partitioning. The first point of the initial chain is the
		first point of one of the resulting chains. The splitting ends when
		no more chain can start.
		@param starting_pred The predicate on a point that expresses the
		                                                starting condition. — UnaryPredicate0D
		@param stopping_pred The predicate on a point that expresses the
		                                                stopping condition. — UnaryPredicate0D
		@param sampling The resolution used to sample the chain for the
		                                                predicates evaluation. (The chain is not actually resampled;
		                                                a virtual point only progresses along the curve using this
		                                                resolution.) — float
	**/
	static function sequential_split(starting_pred:Dynamic, stopping_pred:Dynamic, sampling:Dynamic):Void;
	/**
		Splits each chain of the current set of chains in a sequential way.
		The points of each chain are processed (with a specified sampling)
		sequentially and each time a user specified condition is verified,
		the chain is split into two chains.  The resulting set of chains is a
		partition of the initial chain
		@param pred The predicate on a point that expresses the splitting
		                                                condition. — UnaryPredicate0D
		@param sampling The resolution used to sample the chain for the
		                                                predicate evaluation. (The chain is not actually resampled; a
		                                                virtual point only progresses along the curve using this
		                                                resolution.) — float
	**/
	static function sequential_split(pred:Dynamic, sampling:Dynamic):Void;
	/**
		Sorts the current set of chains (or viewedges) according to the
		comparison predicate given as argument.
		@param pred The binary predicate used for the comparison. — BinaryPredicate1D
	**/
	static function sort(pred:Dynamic):Void;
}/**
	Class to define a feature shape.  It is the gathering of feature
	elements from an identified input shape.
**/
@:pythonImport("freestyle.types.SShape") extern class SShape {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother An SShape object. — SShape
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Adds an FEdge to the list of FEdges.
		@param edge An FEdge object. — FEdge
	**/
	function add_edge(edge:Dynamic):Void;
	/**
		Adds an SVertex to the list of SVertex of this Shape.  The SShape
		attribute of the SVertex is also set to this SShape.
		@param vertex An SVertex object. — SVertex
	**/
	function add_vertex(vertex:Dynamic):Void;
	/**
		Compute the bbox of the SShape.
	**/
	function compute_bbox():Void;
	/**
		The bounding box of the SShape.
		
		Type: BBox
	**/
	var bbox : freestyle.types.bbox.BBox;
	/**
		The list of edges constituting this SShape.
		
		Type: List of FEdge objects
	**/
	var edges : Dynamic;
	/**
		The Id of this SShape.
		
		Type: Id
	**/
	var id : freestyle.types.id.Id;
	/**
		The name of the SShape.
		
		Type: str
	**/
	var name : Dynamic;
	/**
		The list of vertices constituting this SShape.
		
		Type: List of SVertex objects
	**/
	var vertices : Dynamic;
}/**
	Class hierarchy: Interface0D &gt; SVertex
	
	Class to define a vertex of the embedding.
**/
@:pythonImport("freestyle.types.SVertex") extern class SVertex {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother A SVertex object. — SVertex
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Builds a SVertex from 3D coordinates and an Id.
		@param point_3d A three-dimensional vector. — mathutils.Vector
		@param id An Id object. — Id
	**/
	function __init__(point_3d:Dynamic, id:Dynamic):Void;
	/**
		Add an FEdge to the list of edges emanating from this SVertex.
		@param fedge An FEdge. — FEdge
	**/
	function add_fedge(fedge:Dynamic):Void;
	/**
		Adds a normal to the SVertex’s set of normals.  If the same normal
		is already in the set, nothing changes.
		@param normal A three-dimensional vector. — mathutils.Vector, list or tuple of 3 real numbers
	**/
	function add_normal(normal:Dynamic):Void;
	/**
		Curvature information expressed in the form of a seven-element tuple
		(K1, e1, K2, e2, Kr, er, dKr), where K1 and K2 are scalar values
		representing the first (maximum) and second (minimum) principal
		curvatures at this SVertex, respectively; e1 and e2 are
		three-dimensional vectors representing the first and second principal
		directions, i.e. the directions of the normal plane where the
		curvature takes its maximum and minimum values, respectively; and Kr,
		er and dKr are the radial curvature, radial direction, and the
		derivative of the radial curvature at this SVertex, respectively.
		
		Type: tuple
	**/
	var curvatures : Dynamic;
	/**
		The Id of this SVertex.
		
		Type: Id
	**/
	var id : freestyle.types.id.Id;
	/**
		The normals for this Vertex as a list.  In a sharp surface, an SVertex
		has exactly one normal.  In a smooth surface, an SVertex can have any
		number of normals.
		
		Type: list of mathutils.Vector objects
	**/
	var normals : Array<Dynamic>;
	/**
		The number of different normals for this SVertex.
		
		Type: int
	**/
	var normals_size : Dynamic;
	/**
		The projected 3D coordinates of the SVertex.
		
		Type: mathutils.Vector
	**/
	var point_2d : mathutils.vector.Vector;
	/**
		The 3D coordinates of the SVertex.
		
		Type: mathutils.Vector
	**/
	var point_3d : mathutils.vector.Vector;
	/**
		If this SVertex is also a ViewVertex, this property refers to the
		ViewVertex, and None otherwise.
		
		Type: ViewVertex
	**/
	var viewvertex : freestyle.types.viewvertex.ViewVertex;
}/**
	Class hierarchy: Iterator &gt; SVertexIterator
	
	Class representing an iterator over SVertex of a
	ViewEdge.  An instance of an SVertexIterator can be obtained
	from a ViewEdge by calling verticesBegin() or verticesEnd().
**/
@:pythonImport("freestyle.types.SVertexIterator") extern class SVertexIterator {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother An SVertexIterator object. — SVertexIterator
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Build an SVertexIterator that starts iteration from an SVertex
		object v.
		@param vertex The SVertex from which the iterator starts iteration. — SVertex
		@param begin The first SVertex of a ViewEdge. — SVertex
		@param previous_edge The previous FEdge coming to vertex. — FEdge
		@param next_edge The next FEdge going out from vertex. — FEdge
		@param t The curvilinear abscissa at vertex. — float
	**/
	function __init__(vertex:Dynamic, begin:Dynamic, previous_edge:Dynamic, next_edge:Dynamic, t:Dynamic):Void;
	/**
		The SVertex object currently pointed by this iterator.
		
		Type: SVertex
	**/
	var object : freestyle.types.svertex.SVertex;
	/**
		The curvilinear abscissa of the current point.
		
		Type: float
	**/
	var t : Dynamic;
	/**
		The point parameter at the current point in the 1D element (0 &lt;= u &lt;= 1).
		
		Type: float
	**/
	var u : Dynamic;
}/**
	Class hierarchy: Interface1D &gt; Stroke
	
	Class to define a stroke.  A stroke is made of a set of 2D vertices
	(StrokeVertex), regularly spaced out.  This set of vertices
	defines the stroke’s backbone geometry.  Each of these stroke vertices
	defines the stroke’s shape and appearance at this vertex position.
**/
@:pythonImport("freestyle.types.Stroke") extern class Stroke {
	/**
		Default constructor
	**/
	function Stroke():Void;
	/**
		Copy constructor
	**/
	function Stroke():Void;
	/**
		Compute the sampling needed to get N vertices.  If the
		specified number of vertices is less than the actual number of
		vertices, the actual sampling value is returned. (To remove Vertices,
		use the RemoveVertex() method of this class.)
		@param n The number of stroke vertices we eventually want
		                                        in our Stroke. — int
		
		@returns float
	**/
	function compute_sampling(n:Dynamic):Dynamic;
	/**
		Inserts the StrokeVertex given as argument into the Stroke before the
		point specified by next.  The length and curvilinear abscissa are
		updated consequently.
		@param vertex The StrokeVertex to insert in the Stroke. — StrokeVertex
		@param next A StrokeVertexIterator pointing to the StrokeVertex
		                                                before which vertex must be inserted. — StrokeVertexIterator
	**/
	function insert_vertex(vertex:Dynamic, next:Dynamic):Void;
	/**
		Removes all vertices from the Stroke.
	**/
	function remove_all_vertices():Void;
	/**
		Removes the StrokeVertex given as argument from the Stroke. The length
		and curvilinear abscissa are updated consequently.
		@param vertex the StrokeVertex to remove from the Stroke. — StrokeVertex
	**/
	function remove_vertex(vertex:Dynamic):Void;
	/**
		Resamples the stroke so that it eventually has N points.  That means
		it is going to add N-vertices_size, where vertices_size is the
		number of points we already have.  If vertices_size &gt;= N, no
		resampling is done.
		@param n The number of vertices we eventually want in our stroke. — int
	**/
	function resample(n:Dynamic):Void;
	/**
		Resamples the stroke with a given sampling.  If the sampling is
		smaller than the actual sampling value, no resampling is done.
		@param sampling The new sampling value. — float
	**/
	function resample(sampling:Dynamic):Void;
	/**
		Returns a StrokeVertexIterator pointing on the first StrokeVertex of
		the Stroke. One can specify a sampling value to resample the Stroke
		on the fly if needed.
		@param t The resampling value with which we want our Stroke to be
		                                        resampled.  If 0 is specified, no resampling is done. — float
		
		@returns StrokeVertexIterator
	**/
	function stroke_vertices_begin(t:Dynamic):freestyle.types.strokevertexiterator.StrokeVertexIterator;
	/**
		Returns a StrokeVertexIterator pointing after the last StrokeVertex
		of the Stroke.
		
		@returns StrokeVertexIterator
	**/
	function stroke_vertices_end():freestyle.types.strokevertexiterator.StrokeVertexIterator;
	/**
		Returns the number of StrokeVertex constituting the Stroke.
		
		@returns int
	**/
	function stroke_vertices_size():Dynamic;
	/**
		Updates the 2D length of the Stroke.
	**/
	function update_length():Void;
	/**
		The Id of this Stroke.
		
		Type: Id
	**/
	var id : freestyle.types.id.Id;
	/**
		The 2D length of the Stroke.
		
		Type: float
	**/
	var length_2d : Dynamic;
	/**
		The MediumType used for this Stroke.
		
		Type: MediumType
	**/
	var medium_type : freestyle.types.mediumtype.MediumType;
	/**
		The ID of the texture used to simulate th marks system for this Stroke.
		
		Type: int
	**/
	var texture_id : Dynamic;
	/**
		True if this Stroke uses a texture with tips, and false otherwise.
		
		Type: bool
	**/
	var tips : Dynamic;
}/**
	Class to define a set of attributes associated with a StrokeVertex.
	The attribute set stores the color, alpha and thickness values for a Stroke
	Vertex.
**/
@:pythonImport("freestyle.types.StrokeAttribute") extern class StrokeAttribute {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother A StrokeAttribute object. — StrokeAttribute
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Build a stroke vertex attribute from a set of parameters.
		@param red Red component of a stroke color. — float
		@param green Green component of a stroke color. — float
		@param blue Blue component of a stroke color. — float
		@param alpha Alpha component of a stroke color. — float
		@param thickness_right Stroke thickness on the right. — float
		@param thickness_left Stroke thickness on the left. — float
	**/
	function __init__(red:Dynamic, green:Dynamic, blue:Dynamic, alpha:Dynamic, thickness_right:Dynamic, thickness_left:Dynamic):Void;
	/**
		Interpolation constructor. Build a StrokeAttribute from two
		StrokeAttribute objects and an interpolation parameter.
		@param attribute1 The first StrokeAttribute object. — StrokeAttribute
		@param attribute2 The second StrokeAttribute object. — StrokeAttribute
		@param t The interpolation parameter (0 &lt;= t &lt;= 1). — float
	**/
	function __init__(attribute1:Dynamic, attribute2:Dynamic, t:Dynamic):Void;
	/**
		Returns an attribute of float type.
		@param name The name of the attribute. — str
		
		@returns float
	**/
	function get_attribute_real(name:Dynamic):Dynamic;
	/**
		Returns an attribute of two-dimensional vector type.
		@param name The name of the attribute. — str
		
		@returns mathutils.Vector
	**/
	function get_attribute_vec2(name:Dynamic):mathutils.vector.Vector;
	/**
		Returns an attribute of three-dimensional vector type.
		@param name The name of the attribute. — str
		
		@returns mathutils.Vector
	**/
	function get_attribute_vec3(name:Dynamic):mathutils.vector.Vector;
	/**
		Checks whether the attribute name of float type is available.
		@param name The name of the attribute. — str
		
		@returns bool
	**/
	function has_attribute_real(name:Dynamic):Dynamic;
	/**
		Checks whether the attribute name of two-dimensional vector type
		is available.
		@param name The name of the attribute. — str
		
		@returns bool
	**/
	function has_attribute_vec2(name:Dynamic):Dynamic;
	/**
		Checks whether the attribute name of three-dimensional vector
		type is available.
		@param name The name of the attribute. — str
		
		@returns bool
	**/
	function has_attribute_vec3(name:Dynamic):Dynamic;
	/**
		Adds a user-defined attribute of float type.  If there is no
		attribute of the given name, it is added.  Otherwise, the new value
		replaces the old one.
		@param name The name of the attribute. — str
		@param value The attribute value. — float
	**/
	function set_attribute_real(name:Dynamic, value:Dynamic):Void;
	/**
		Adds a user-defined attribute of two-dimensional vector type.  If
		there is no attribute of the given name, it is added.  Otherwise,
		the new value replaces the old one.
		@param name The name of the attribute. — str
		@param value The attribute value. — mathutils.Vector, list or tuple of 2 real numbers
	**/
	function set_attribute_vec2(name:Dynamic, value:Dynamic):Void;
	/**
		Adds a user-defined attribute of three-dimensional vector type.
		If there is no attribute of the given name, it is added.
		Otherwise, the new value replaces the old one.
		@param name The name of the attribute. — str
		@param value The attribute value. — mathutils.Vector, list or tuple of 3 real numbers
	**/
	function set_attribute_vec3(name:Dynamic, value:Dynamic):Void;
	/**
		Alpha component of the stroke color.
		
		Type: float
	**/
	var alpha : Dynamic;
	/**
		RGB components of the stroke color.
		
		Type: mathutils.Color
	**/
	var color : mathutils.color.Color;
	/**
		Right and left components of the stroke thickness.
		The right (left) component is the thickness on the right (left) of the vertex
		when following the stroke.
		
		Type: mathutils.Vector
	**/
	var thickness : mathutils.vector.Vector;
	/**
		The visibility flag.  True if the StrokeVertex is visible.
		
		Type: bool
	**/
	var visible : Dynamic;
}/**
	Base class for stroke shaders.  Any stroke shader must inherit from
	this class and overload the shade() method.  A StrokeShader is
	designed to modify stroke attributes such as thickness, color,
	geometry, texture, blending mode, and so on.  The basic way for this
	operation is to iterate over the stroke vertices of the Stroke
	and to modify the StrokeAttribute of each vertex.  Here is a
	code example of such an iteration:
**/
@:pythonImport("freestyle.types.StrokeShader") extern class StrokeShader {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		The shading method.  Must be overloaded by inherited classes.
		@param stroke A Stroke object. — Stroke
	**/
	function shade(stroke:Dynamic):Void;
	/**
		The name of the stroke shader.
		
		Type: str
	**/
	var name : Dynamic;
}/**
	Class hierarchy: Interface0D &gt; CurvePoint &gt; StrokeVertex
	
	Class to define a stroke vertex.
**/
@:pythonImport("freestyle.types.StrokeVertex") extern class StrokeVertex {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother A StrokeVertex object. — StrokeVertex
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Build a stroke vertex from 2 stroke vertices and an interpolation
		parameter.
		@param first_vertex The first StrokeVertex. — StrokeVertex
		@param second_vertex The second StrokeVertex. — StrokeVertex
		@param t3d An interpolation parameter. — float
	**/
	function __init__(first_vertex:Dynamic, second_vertex:Dynamic, t3d:Dynamic):Void;
	/**
		Build a stroke vertex from a CurvePoint
		@param point A CurvePoint object. — CurvePoint
	**/
	function __init__(point:Dynamic):Void;
	/**
		Build a stroke vertex from a SVertex
		@param svertex An SVertex object. — SVertex
	**/
	function __init__(svertex:Dynamic):Void;
	/**
		Build a stroke vertex from an SVertex and a StrokeAttribute object.
		@param svertex An SVertex object. — SVertex
		@param attribute A StrokeAttribute object. — StrokeAttribute
	**/
	function __init__(svertex:Dynamic, attribute:Dynamic):Void;
	/**
		StrokeAttribute for this StrokeVertex.
		
		Type: StrokeAttribute
	**/
	var attribute : freestyle.types.strokeattribute.StrokeAttribute;
	/**
		Curvilinear abscissa of this StrokeVertex in the Stroke.
		
		Type: float
	**/
	var curvilinear_abscissa : Dynamic;
	/**
		2D point coordinates.
		
		Type: mathutils.Vector
	**/
	var point : mathutils.vector.Vector;
	/**
		Stroke length (it is only a value retained by the StrokeVertex,
		and it won’t change the real stroke length).
		
		Type: float
	**/
	var stroke_length : Dynamic;
	/**
		Curvilinear abscissa of this StrokeVertex in the Stroke.
		
		Type: float
	**/
	var u : Dynamic;
}/**
	Class hierarchy: Iterator &gt; StrokeVertexIterator
	
	Class defining an iterator designed to iterate over the
	StrokeVertex of a Stroke.  An instance of a
	StrokeVertexIterator can be obtained from a Stroke by calling
	iter(), stroke_vertices_begin() or stroke_vertices_begin().  It is iterating
	over the same vertices as an Interface0DIterator.  The difference
	resides in the object access: an Interface0DIterator only allows
	access to an Interface0D while one might need to access the
	specialized StrokeVertex type.  In this case, one should use a
	StrokeVertexIterator.  To call functions of the UnaryFuntion0D type,
	a StrokeVertexIterator can be converted to an Interface0DIterator by
	by calling Interface0DIterator(it).
**/
@:pythonImport("freestyle.types.StrokeVertexIterator") extern class StrokeVertexIterator {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother A StrokeVertexIterator object. — StrokeVertexIterator
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Returns a copy of a decremented StrokeVertexIterator.
		
		@returns StrokeVertexIterator
	**/
	function decremented():freestyle.types.strokevertexiterator.StrokeVertexIterator;
	/**
		Returns a copy of an incremented StrokeVertexIterator.
		
		@returns StrokeVertexIterator
	**/
	function incremented():freestyle.types.strokevertexiterator.StrokeVertexIterator;
	/**
		Returns a StrokeVertexIterator that traverses stroke vertices in the
		reversed order.
		
		@returns StrokeVertexIterator
	**/
	function reversed():freestyle.types.strokevertexiterator.StrokeVertexIterator;
	/**
		True if the interator points to the last valid element.
		For its counterpart (pointing to the first valid element), use it.is_begin.
		
		Type: bool
	**/
	var at_last : Dynamic;
	/**
		The StrokeVertex object currently pointed to by this iterator.
		
		Type: StrokeVertex
	**/
	var object : freestyle.types.strokevertex.StrokeVertex;
	/**
		The curvilinear abscissa of the current point.
		
		Type: float
	**/
	var t : Dynamic;
	/**
		The point parameter at the current point in the stroke (0 &lt;= u &lt;= 1).
		
		Type: float
	**/
	var u : Dynamic;
}/**
	Class hierarchy: Interface0D &gt; ViewVertex &gt; TVertex
	
	Class to define a T vertex, i.e. an intersection between two edges.
	It points towards two SVertex and four ViewEdges.  Among the
	ViewEdges, two are front and the other two are back.  Basically a
	front edge hides part of a back edge.  So, among the back edges, one
	is of invisibility N and the other of invisibility N+1.
**/
@:pythonImport("freestyle.types.TVertex") extern class TVertex {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Returns the mate edge of the ViewEdge given as argument.  If the
		ViewEdge is frontEdgeA, frontEdgeB is returned.  If the ViewEdge is
		frontEdgeB, frontEdgeA is returned.  Same for back edges.
		@param viewedge A ViewEdge object. — ViewEdge
		
		@returns ViewEdge
	**/
	function get_mate(viewedge:Dynamic):freestyle.types.viewedge.ViewEdge;
	/**
		Returns the SVertex (among the 2) belonging to the given FEdge.
		@param fedge An FEdge object. — FEdge
		
		@returns SVertex
	**/
	function get_svertex(fedge:Dynamic):freestyle.types.svertex.SVertex;
	/**
		The SVertex that is further away from the viewpoint.
		
		Type: SVertex
	**/
	var back_svertex : freestyle.types.svertex.SVertex;
	/**
		The SVertex that is closer to the viewpoint.
		
		Type: SVertex
	**/
	var front_svertex : freestyle.types.svertex.SVertex;
	/**
		The Id of this TVertex.
		
		Type: Id
	**/
	var id : freestyle.types.id.Id;
}/**
	Base class for Unary Functions (functors) working on
	Interface0DIterator.  A unary function will be used by
	invoking __call__() on an Interface0DIterator.  In Python, several
	different subclasses of UnaryFunction0D are used depending on the
	types of functors’ return values.  For example, you would inherit from
	a UnaryFunction0DDouble if you wish to define a function that
	returns a double value.  Available UnaryFunction0D subclasses are:
**/
@:pythonImport("freestyle.types.UnaryFunction0D") extern class UnaryFunction0D {
	/**
		The name of the unary 0D function.
		
		Type: str
	**/
	var name : Dynamic;
}/**
	Class hierarchy: UnaryFunction0D &gt; UnaryFunction0DDouble
	
	Base class for unary functions (functors) that work on
	Interface0DIterator and return a float value.
**/
@:pythonImport("freestyle.types.UnaryFunction0DDouble") extern class UnaryFunction0DDouble {
	/**
		Default constructor.
	**/
	function __init__():Void;
}/**
	Class hierarchy: UnaryFunction0D &gt; UnaryFunction0DEdgeNature
	
	Base class for unary functions (functors) that work on
	Interface0DIterator and return a Nature object.
**/
@:pythonImport("freestyle.types.UnaryFunction0DEdgeNature") extern class UnaryFunction0DEdgeNature {
	/**
		Default constructor.
	**/
	function __init__():Void;
}/**
	Class hierarchy: UnaryFunction0D &gt; UnaryFunction0DFloat
	
	Base class for unary functions (functors) that work on
	Interface0DIterator and return a float value.
**/
@:pythonImport("freestyle.types.UnaryFunction0DFloat") extern class UnaryFunction0DFloat {
	/**
		Default constructor.
	**/
	function __init__():Void;
}/**
	Class hierarchy: UnaryFunction0D &gt; UnaryFunction0DId
	
	Base class for unary functions (functors) that work on
	Interface0DIterator and return an Id object.
**/
@:pythonImport("freestyle.types.UnaryFunction0DId") extern class UnaryFunction0DId {
	/**
		Default constructor.
	**/
	function __init__():Void;
}/**
	Class hierarchy: UnaryFunction0D &gt; UnaryFunction0DMaterial
	
	Base class for unary functions (functors) that work on
	Interface0DIterator and return a Material object.
**/
@:pythonImport("freestyle.types.UnaryFunction0DMaterial") extern class UnaryFunction0DMaterial {
	/**
		Default constructor.
	**/
	function __init__():Void;
}/**
	Class hierarchy: UnaryFunction0D &gt; UnaryFunction0DUnsigned
	
	Base class for unary functions (functors) that work on
	Interface0DIterator and return an int value.
**/
@:pythonImport("freestyle.types.UnaryFunction0DUnsigned") extern class UnaryFunction0DUnsigned {
	/**
		Default constructor.
	**/
	function __init__():Void;
}/**
	Class hierarchy: UnaryFunction0D &gt; UnaryFunction0DVec2f
	
	Base class for unary functions (functors) that work on
	Interface0DIterator and return a 2D vector.
**/
@:pythonImport("freestyle.types.UnaryFunction0DVec2f") extern class UnaryFunction0DVec2f {
	/**
		Default constructor.
	**/
	function __init__():Void;
}/**
	Class hierarchy: UnaryFunction0D &gt; UnaryFunction0DVec3f
	
	Base class for unary functions (functors) that work on
	Interface0DIterator and return a 3D vector.
**/
@:pythonImport("freestyle.types.UnaryFunction0DVec3f") extern class UnaryFunction0DVec3f {
	/**
		Default constructor.
	**/
	function __init__():Void;
}/**
	Class hierarchy: UnaryFunction0D &gt; UnaryFunction0DVectorViewShape
	
	Base class for unary functions (functors) that work on
	Interface0DIterator and return a list of ViewShape
	objects.
**/
@:pythonImport("freestyle.types.UnaryFunction0DVectorViewShape") extern class UnaryFunction0DVectorViewShape {
	/**
		Default constructor.
	**/
	function __init__():Void;
}/**
	Class hierarchy: UnaryFunction0D &gt; UnaryFunction0DViewShape
	
	Base class for unary functions (functors) that work on
	Interface0DIterator and return a ViewShape object.
**/
@:pythonImport("freestyle.types.UnaryFunction0DViewShape") extern class UnaryFunction0DViewShape {
	/**
		Default constructor.
	**/
	function __init__():Void;
}/**
	Base class for Unary Functions (functors) working on
	Interface1D.  A unary function will be used by invoking
	__call__() on an Interface1D.  In Python, several different subclasses
	of UnaryFunction1D are used depending on the types of functors’ return
	values.  For example, you would inherit from a
	UnaryFunction1DDouble if you wish to define a function that
	returns a double value.  Available UnaryFunction1D subclasses are:
**/
@:pythonImport("freestyle.types.UnaryFunction1D") extern class UnaryFunction1D {
	/**
		The name of the unary 1D function.
		
		Type: str
	**/
	var name : Dynamic;
}/**
	Class hierarchy: UnaryFunction1D &gt; UnaryFunction1DDouble
	
	Base class for unary functions (functors) that work on
	Interface1D and return a float value.
**/
@:pythonImport("freestyle.types.UnaryFunction1DDouble") extern class UnaryFunction1DDouble {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Builds a unary 1D function using the integration method given as
		argument.
		@param integration_type An integration method. — IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		The integration method.
		
		Type: IntegrationType
	**/
	var integration_type : freestyle.types.integrationtype.IntegrationType;
}/**
	Class hierarchy: UnaryFunction1D &gt; UnaryFunction1DEdgeNature
	
	Base class for unary functions (functors) that work on
	Interface1D and return a Nature object.
**/
@:pythonImport("freestyle.types.UnaryFunction1DEdgeNature") extern class UnaryFunction1DEdgeNature {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Builds a unary 1D function using the integration method given as
		argument.
		@param integration_type An integration method. — IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		The integration method.
		
		Type: IntegrationType
	**/
	var integration_type : freestyle.types.integrationtype.IntegrationType;
}/**
	Class hierarchy: UnaryFunction1D &gt; UnaryFunction1DFloat
	
	Base class for unary functions (functors) that work on
	Interface1D and return a float value.
**/
@:pythonImport("freestyle.types.UnaryFunction1DFloat") extern class UnaryFunction1DFloat {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Builds a unary 1D function using the integration method given as
		argument.
		@param integration_type An integration method. — IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		The integration method.
		
		Type: IntegrationType
	**/
	var integration_type : freestyle.types.integrationtype.IntegrationType;
}/**
	Class hierarchy: UnaryFunction1D &gt; UnaryFunction1DUnsigned
	
	Base class for unary functions (functors) that work on
	Interface1D and return an int value.
**/
@:pythonImport("freestyle.types.UnaryFunction1DUnsigned") extern class UnaryFunction1DUnsigned {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Builds a unary 1D function using the integration method given as
		argument.
		@param integration_type An integration method. — IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		The integration method.
		
		Type: IntegrationType
	**/
	var integration_type : freestyle.types.integrationtype.IntegrationType;
}/**
	Class hierarchy: UnaryFunction1D &gt; UnaryFunction1DVec2f
	
	Base class for unary functions (functors) that work on
	Interface1D and return a 2D vector.
**/
@:pythonImport("freestyle.types.UnaryFunction1DVec2f") extern class UnaryFunction1DVec2f {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Builds a unary 1D function using the integration method given as
		argument.
		@param integration_type An integration method. — IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		The integration method.
		
		Type: IntegrationType
	**/
	var integration_type : freestyle.types.integrationtype.IntegrationType;
}/**
	Class hierarchy: UnaryFunction1D &gt; UnaryFunction1DVec3f
	
	Base class for unary functions (functors) that work on
	Interface1D and return a 3D vector.
**/
@:pythonImport("freestyle.types.UnaryFunction1DVec3f") extern class UnaryFunction1DVec3f {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Builds a unary 1D function using the integration method given as
		argument.
		@param integration_type An integration method. — IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		The integration method.
		
		Type: IntegrationType
	**/
	var integration_type : freestyle.types.integrationtype.IntegrationType;
}/**
	Class hierarchy: UnaryFunction1D &gt; UnaryFunction1DVectorViewShape
	
	Base class for unary functions (functors) that work on
	Interface1D and return a list of ViewShape
	objects.
**/
@:pythonImport("freestyle.types.UnaryFunction1DVectorViewShape") extern class UnaryFunction1DVectorViewShape {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Builds a unary 1D function using the integration method given as
		argument.
		@param integration_type An integration method. — IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		The integration method.
		
		Type: IntegrationType
	**/
	var integration_type : freestyle.types.integrationtype.IntegrationType;
}/**
	Class hierarchy: UnaryFunction1D &gt; UnaryFunction1DVoid
	
	Base class for unary functions (functors) working on
	Interface1D.
**/
@:pythonImport("freestyle.types.UnaryFunction1DVoid") extern class UnaryFunction1DVoid {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Builds a unary 1D function using the integration method given as
		argument.
		@param integration_type An integration method. — IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		The integration method.
		
		Type: IntegrationType
	**/
	var integration_type : freestyle.types.integrationtype.IntegrationType;
}/**
	Base class for unary predicates that work on
	Interface0DIterator.  A UnaryPredicate0D is a functor that
	evaluates a condition on an Interface0DIterator and returns true or
	false depending on whether this condition is satisfied or not.  The
	UnaryPredicate0D is used by invoking its __call__() method.  Any
	inherited class must overload the __call__() method.
**/
@:pythonImport("freestyle.types.UnaryPredicate0D") extern class UnaryPredicate0D {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Must be overload by inherited classes.
		@param it The Interface0DIterator pointing onto the Interface0D at
		                                        which we wish to evaluate the predicate. — Interface0DIterator
		
		@returns bool
	**/
	function __call__(it:Dynamic):Dynamic;
	/**
		The name of the unary 0D predicate.
		
		Type: str
	**/
	var name : Dynamic;
}/**
	Base class for unary predicates that work on Interface1D.  A
	UnaryPredicate1D is a functor that evaluates a condition on a
	Interface1D and returns true or false depending on whether this
	condition is satisfied or not.  The UnaryPredicate1D is used by
	invoking its __call__() method.  Any inherited class must overload the
	__call__() method.
**/
@:pythonImport("freestyle.types.UnaryPredicate1D") extern class UnaryPredicate1D {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Must be overload by inherited classes.
		@param inter The Interface1D on which we wish to evaluate the predicate. — Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
	/**
		The name of the unary 1D predicate.
		
		Type: str
	**/
	var name : Dynamic;
}/**
	Class hierarchy: Interface1D &gt; ViewEdge
	
	Class defining a ViewEdge.  A ViewEdge in an edge of the image graph.
	it connects two ViewVertex objects.  It is made by connecting
	a set of FEdges.
**/
@:pythonImport("freestyle.types.ViewEdge") extern class ViewEdge {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother A ViewEdge object. — ViewEdge
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Sets Viewedge to this for all embedded fedges.
	**/
	function update_fedges():Void;
	/**
		The time stamp of this ViewEdge.
		
		Type: int
	**/
	var chaining_time_stamp : Dynamic;
	/**
		The first FEdge that constitutes this ViewEdge.
		
		Type: FEdge
	**/
	var first_fedge : freestyle.types.fedge.FEdge;
	/**
		The first ViewVertex.
		
		Type: ViewVertex
	**/
	var first_viewvertex : freestyle.types.viewvertex.ViewVertex;
	/**
		The Id of this ViewEdge.
		
		Type: Id
	**/
	var id : freestyle.types.id.Id;
	/**
		True if this ViewEdge forms a closed loop.
		
		Type: bool
	**/
	var is_closed : Dynamic;
	/**
		The last FEdge that constitutes this ViewEdge.
		
		Type: FEdge
	**/
	var last_fedge : freestyle.types.fedge.FEdge;
	/**
		The second ViewVertex.
		
		Type: ViewVertex
	**/
	var last_viewvertex : freestyle.types.viewvertex.ViewVertex;
	/**
		The nature of this ViewEdge.
		
		Type: Nature
	**/
	var nature : freestyle.types.nature.Nature;
	/**
		The shape that is occluded by the ViewShape to which this ViewEdge
		belongs to.  If no object is occluded, this property is set to None.
		
		Type: ViewShape
	**/
	var occludee : freestyle.types.viewshape.ViewShape;
	/**
		The quantitative invisibility.
		
		Type: int
	**/
	var qi : Dynamic;
	/**
		The ViewShape to which this ViewEdge belongs to.
		
		Type: ViewShape
	**/
	var viewshape : freestyle.types.viewshape.ViewShape;
}/**
	Class hierarchy: Iterator &gt; ViewEdgeIterator
	
	Base class for iterators over ViewEdges of the ViewMap Graph.
	Basically the increment() operator of this class should be able to
	take the decision of “where” (on which ViewEdge) to go when pointing
	on a given ViewEdge.
**/
@:pythonImport("freestyle.types.ViewEdgeIterator") extern class ViewEdgeIterator {
	/**
		Builds a ViewEdgeIterator from a starting ViewEdge and its
		orientation.
		@param begin The ViewEdge from where to start the iteration. — ViewEdge or None
		@param orientation If true, we’ll look for the next ViewEdge among
		                                                the ViewEdges that surround the ending ViewVertex of begin.  If
		                                                false, we’ll search over the ViewEdges surrounding the ending
		                                                ViewVertex of begin. — bool
	**/
	function __init__(begin:Dynamic, orientation:Dynamic):Void;
	/**
		Copy constructor.
		@param brother A ViewEdgeIterator object. — ViewEdgeIterator
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Changes the current orientation.
	**/
	function change_orientation():Void;
	/**
		The first ViewEdge used for the iteration.
		
		Type: ViewEdge
	**/
	var begin : freestyle.types.viewedge.ViewEdge;
	/**
		The ViewEdge object currently pointed by this iterator.
		
		Type: ViewEdge
	**/
	var current_edge : freestyle.types.viewedge.ViewEdge;
	/**
		The ViewEdge object currently pointed by this iterator.
		
		Type: ViewEdge
	**/
	var object : freestyle.types.viewedge.ViewEdge;
	/**
		The orientation of the pointed ViewEdge in the iteration.
		If true, the iterator looks for the next ViewEdge among those ViewEdges
		that surround the ending ViewVertex of the “begin” ViewEdge.  If false,
		the iterator searches over the ViewEdges surrounding the ending ViewVertex
		of the “begin” ViewEdge.
		
		Type: bool
	**/
	var orientation : Dynamic;
}/**
	Class defining the ViewMap.
**/
@:pythonImport("freestyle.types.ViewMap") extern class ViewMap {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Gets the FEdge nearest to the 2D point specified as arguments.
		@param x X coordinate of a 2D point. — float
		@param y Y coordinate of a 2D point. — float
		
		@returns FEdge
	**/
	function get_closest_fedge(x:Dynamic, y:Dynamic):freestyle.types.fedge.FEdge;
	/**
		Gets the ViewEdge nearest to the 2D point specified as arguments.
		@param x X coordinate of a 2D point. — float
		@param y Y coordinate of a 2D point. — float
		
		@returns ViewEdge
	**/
	function get_closest_viewedge(x:Dynamic, y:Dynamic):freestyle.types.viewedge.ViewEdge;
	/**
		The 3D bounding box of the scene.
		
		Type: BBox
	**/
	var scene_bbox : freestyle.types.bbox.BBox;
}/**
	Class gathering the elements of the ViewMap (i.e., ViewVertex
	and ViewEdge) that are issued from the same input shape.
**/
@:pythonImport("freestyle.types.ViewShape") extern class ViewShape {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param brother A ViewShape object. — ViewShape
	**/
	function __init__(brother:Dynamic):Void;
	/**
		Builds a ViewShape from an SShape.
		@param sshape An SShape object. — SShape
	**/
	function __init__(sshape:Dynamic):Void;
	/**
		Adds a ViewEdge to the list of ViewEdge objects.
		@param edge A ViewEdge object. — ViewEdge
	**/
	function add_edge(edge:Dynamic):Void;
	/**
		Adds a ViewVertex to the list of the ViewVertex objects.
		@param vertex A ViewVertex object. — ViewVertex
	**/
	function add_vertex(vertex:Dynamic):Void;
	/**
		The list of ViewEdge objects contained in this ViewShape.
		
		Type: List of ViewEdge objects
	**/
	var edges : Dynamic;
	/**
		The Id of this ViewShape.
		
		Type: Id
	**/
	var id : freestyle.types.id.Id;
	/**
		The library path of the ViewShape.
		
		Type: str, or None if the ViewShape is not part of a library
	**/
	var library_path : Dynamic;
	/**
		The name of the ViewShape.
		
		Type: str
	**/
	var name : Dynamic;
	/**
		The SShape on top of which this ViewShape is built.
		
		Type: SShape
	**/
	var sshape : freestyle.types.sshape.SShape;
	/**
		The list of ViewVertex objects contained in this ViewShape.
		
		Type: List of ViewVertex objects
	**/
	var vertices : Dynamic;
}/**
	Class hierarchy: Interface0D &gt; ViewVertex
	
	Class to define a view vertex.  A view vertex is a feature vertex
	corresponding to a point of the image graph, where the characteristics
	of an edge (e.g., nature and visibility) might change.  A
	ViewVertex can be of two kinds: A TVertex when it
	corresponds to the intersection between two ViewEdges or a
	NonTVertex when it corresponds to a vertex of the initial
	input mesh (it is the case for vertices such as corners for example).
	Thus, this class can be specialized into two classes, the
	TVertex class and the NonTVertex class.
**/
@:pythonImport("freestyle.types.ViewVertex") extern class ViewVertex {
	/**
		Returns an iterator over the ViewEdges that goes to or comes from
		this ViewVertex pointing to the first ViewEdge of the list. The
		orientedViewEdgeIterator allows to iterate in CCW order over these
		ViewEdges and to get the orientation for each ViewEdge
		(incoming/outgoing).
		
		@returns orientedViewEdgeIterator
	**/
	function edges_begin():freestyle.types.orientedviewedgeiterator.OrientedViewEdgeIterator;
	/**
		Returns an orientedViewEdgeIterator over the ViewEdges around this
		ViewVertex, pointing after the last ViewEdge.
		
		@returns orientedViewEdgeIterator
	**/
	function edges_end():freestyle.types.orientedviewedgeiterator.OrientedViewEdgeIterator;
	/**
		Returns an orientedViewEdgeIterator pointing to the ViewEdge given
		as argument.
		@param edge A ViewEdge object. — ViewEdge
		
		@returns orientedViewEdgeIterator
	**/
	function edges_iterator(edge:Dynamic):freestyle.types.orientedviewedgeiterator.OrientedViewEdgeIterator;
	/**
		The nature of this ViewVertex.
		
		Type: Nature
	**/
	var nature : freestyle.types.nature.Nature;
}/**
	Class hierarchy: Iterator &gt; orientedViewEdgeIterator
	
	Class representing an iterator over oriented ViewEdges around a
	ViewVertex.  This iterator allows a CCW iteration (in the image
	plane).  An instance of an orientedViewEdgeIterator can only be
	obtained from a ViewVertex by calling edges_begin() or edges_end().
**/
@:pythonImport("freestyle.types.orientedViewEdgeIterator") extern class OrientedViewEdgeIterator {
	/**
		Default constructor.
	**/
	function __init__():Void;
	/**
		Copy constructor.
		@param iBrother An orientedViewEdgeIterator object. — orientedViewEdgeIterator
	**/
	function __init__(iBrother:Dynamic):Void;
	/**
		The oriented ViewEdge (i.e., a tuple of the pointed ViewEdge and a boolean
		value) currently pointed to by this iterator. If the boolean value is true,
		the ViewEdge is incoming.
		
		Type: (ViewEdge, bool)
	**/
	var object : freestyle.types.viewedge.ViewEdge;
}