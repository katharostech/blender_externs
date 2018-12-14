package freestyle.predicates;
@:pythonImport("freestyle.predicates.AndBP1D") extern class AndBP1D {

}@:pythonImport("freestyle.predicates.AndUP1D") extern class AndUP1D {

}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; ContourUP1D
**/
@:pythonImport("freestyle.predicates.ContourUP1D") extern class ContourUP1D {
	/**
		Returns true if the Interface1D is a contour.  An Interface1D is a
		contour if it is borded by a different shape on each of its sides.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; DensityLowerThanUP1D
**/
@:pythonImport("freestyle.predicates.DensityLowerThanUP1D") extern class DensityLowerThanUP1D {
	/**
		Builds a DensityLowerThanUP1D object.
		@param threshold The value of the threshold density.  Any Interface1D
		                                                having a density lower than this threshold will match. — float
		@param sigma The sigma value defining the density evaluation window
		                                                size used in the freestyle.functions.DensityF0D functor. — float
	**/
	function __init__(threshold:Dynamic, sigma:Dynamic):Void;
	/**
		Returns true if the density evaluated for the Interface1D is less
		than a user-defined density value.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; freestyle.types.EqualToChainingTimeStampUP1D
**/
@:pythonImport("freestyle.predicates.EqualToChainingTimeStampUP1D") extern class EqualToChainingTimeStampUP1D {
	/**
		Builds a EqualToChainingTimeStampUP1D object.
		@param ts A time stamp value. — int
	**/
	function __init__(ts:Dynamic):Void;
	/**
		Returns true if the Interface1D’s time stamp is equal to a certain
		user-defined value.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; EqualToTimeStampUP1D
**/
@:pythonImport("freestyle.predicates.EqualToTimeStampUP1D") extern class EqualToTimeStampUP1D {
	/**
		Builds a EqualToTimeStampUP1D object.
		@param ts A time stamp value. — int
	**/
	function __init__(ts:Dynamic):Void;
	/**
		Returns true if the Interface1D’s time stamp is equal to a certain
		user-defined value.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; ExternalContourUP1D
**/
@:pythonImport("freestyle.predicates.ExternalContourUP1D") extern class ExternalContourUP1D {
	/**
		Returns true if the Interface1D is an external contour.  An
		Interface1D is an external contour if it is borded by no shape on
		one of its sides.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.BinaryPredicate1D &gt; FalseBP1D
**/
@:pythonImport("freestyle.predicates.FalseBP1D") extern class FalseBP1D {
	/**
		Always returns false.
		@param inter1 The first Interface1D object. — freestyle.types.Interface1D
		@param inter2 The second Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter1:Dynamic, inter2:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate0D &gt; FalseUP0D
**/
@:pythonImport("freestyle.predicates.FalseUP0D") extern class FalseUP0D {
	/**
		Always returns false.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns bool
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; FalseUP1D
**/
@:pythonImport("freestyle.predicates.FalseUP1D") extern class FalseUP1D {
	/**
		Always returns false.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.BinaryPredicate1D &gt; Length2DBP1D
**/
@:pythonImport("freestyle.predicates.Length2DBP1D") extern class Length2DBP1D {
	/**
		Returns true if the 2D length of inter1 is less than the 2D length
		of inter2.
		@param inter1 The first Interface1D object. — freestyle.types.Interface1D
		@param inter2 The second Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter1:Dynamic, inter2:Dynamic):Dynamic;
}/**
	Checks whether the two supplied ViewEdges have the same material.
**/
@:pythonImport("freestyle.predicates.MaterialBP1D") extern class MaterialBP1D {

}@:pythonImport("freestyle.predicates.NotBP1D") extern class NotBP1D {

}@:pythonImport("freestyle.predicates.NotUP1D") extern class NotUP1D {

}@:pythonImport("freestyle.predicates.ObjectNamesUP1D") extern class ObjectNamesUP1D {

}@:pythonImport("freestyle.predicates.OrBP1D") extern class OrBP1D {

}@:pythonImport("freestyle.predicates.OrUP1D") extern class OrUP1D {

}@:pythonImport("freestyle.predicates.QuantitativeInvisibilityRangeUP1D") extern class QuantitativeInvisibilityRangeUP1D {

}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; QuantitativeInvisibilityUP1D
**/
@:pythonImport("freestyle.predicates.QuantitativeInvisibilityUP1D") extern class QuantitativeInvisibilityUP1D {
	/**
		Builds a QuantitativeInvisibilityUP1D object.
		@param qi The Quantitative Invisibility you want the Interface1D to
		                                        have. — int
	**/
	function __init__(qi:Dynamic):Void;
	/**
		Returns true if the Quantitative Invisibility evaluated at an
		Interface1D, using the
		freestyle.functions.QuantitativeInvisibilityF1D functor,
		equals a certain user-defined value.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.BinaryPredicate1D &gt; SameShapeIdBP1D
**/
@:pythonImport("freestyle.predicates.SameShapeIdBP1D") extern class SameShapeIdBP1D {
	/**
		Returns true if inter1 and inter2 belong to the same shape.
		@param inter1 The first Interface1D object. — freestyle.types.Interface1D
		@param inter2 The second Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter1:Dynamic, inter2:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; ShapeUP1D
**/
@:pythonImport("freestyle.predicates.ShapeUP1D") extern class ShapeUP1D {
	/**
		Builds a ShapeUP1D object.
		@param first The first Id component. — int
		@param second The second Id component. — int
	**/
	function __init__(first:Dynamic, second:Dynamic):Void;
	/**
		Returns true if the shape to which the Interface1D belongs to has the
		same freestyle.types.Id as the one specified by the user.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.BinaryPredicate1D &gt; TrueBP1D
**/
@:pythonImport("freestyle.predicates.TrueBP1D") extern class TrueBP1D {
	/**
		Always returns true.
		@param inter1 The first Interface1D object. — freestyle.types.Interface1D
		@param inter2 The second Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter1:Dynamic, inter2:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate0D &gt; TrueUP0D
**/
@:pythonImport("freestyle.predicates.TrueUP0D") extern class TrueUP0D {
	/**
		Always returns true.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns bool
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; TrueUP1D
**/
@:pythonImport("freestyle.predicates.TrueUP1D") extern class TrueUP1D {
	/**
		Always returns true.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.BinaryPredicate1D &gt; ViewMapGradientNormBP1D
**/
@:pythonImport("freestyle.predicates.ViewMapGradientNormBP1D") extern class ViewMapGradientNormBP1D {
	/**
		Builds a ViewMapGradientNormBP1D object.
		@param level The level of the pyramid from which the pixel must be
		                                                read. — int
		@param integration_type The integration method used to compute a single value
		                                                from a set of values. — freestyle.types.IntegrationType
		@param sampling The resolution used to sample the chain:
		                                                GetViewMapGradientNormF0D is evaluated at each sample point and
		                                                the result is obtained by combining the resulting values into a
		                                                single one, following the method specified by integration_type. — float
	**/
	function __init__(level:Dynamic, integration_type:Dynamic, sampling:Dynamic):Void;
	/**
		Returns true if the evaluation of the Gradient norm Function is
		higher for inter1 than for inter2.
		@param inter1 The first Interface1D object. — freestyle.types.Interface1D
		@param inter2 The second Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter1:Dynamic, inter2:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; WithinImageBoundaryUP1D
**/
@:pythonImport("freestyle.predicates.WithinImageBoundaryUP1D") extern class WithinImageBoundaryUP1D {
	/**
		Builds an WithinImageBoundaryUP1D object.
		@param xmin X lower bound of the image boundary. — float
		@param ymin Y lower bound of the image boundary. — float
		@param xmax X upper bound of the image boundary. — float
		@param ymax Y upper bound of the image boundary. — float
	**/
	function __init__(xmin:Dynamic, ymin:Dynamic, xmax:Dynamic, ymax:Dynamic):Void;
	/**
		Returns true if the Interface1D intersects with image boundary.
	**/
	function __call__():Void;
}/**
	Check whether an Interface0DIterator references a TVertex and is
	the one that is hidden (inferred from the context).
**/
@:pythonImport("freestyle.predicates.pyBackTVertexUP0D") extern class PyBackTVertexUP0D {

}@:pythonImport("freestyle.predicates.pyClosedCurveUP1D") extern class PyClosedCurveUP1D {

}@:pythonImport("freestyle.predicates.pyDensityFunctorUP1D") extern class PyDensityFunctorUP1D {

}@:pythonImport("freestyle.predicates.pyDensityUP1D") extern class PyDensityUP1D {

}@:pythonImport("freestyle.predicates.pyDensityVariableSigmaUP1D") extern class PyDensityVariableSigmaUP1D {

}@:pythonImport("freestyle.predicates.pyHighDensityAnisotropyUP1D") extern class PyHighDensityAnisotropyUP1D {

}@:pythonImport("freestyle.predicates.pyHighDirectionalViewMapDensityUP1D") extern class PyHighDirectionalViewMapDensityUP1D {

}@:pythonImport("freestyle.predicates.pyHighSteerableViewMapDensityUP1D") extern class PyHighSteerableViewMapDensityUP1D {

}@:pythonImport("freestyle.predicates.pyHighViewMapDensityUP1D") extern class PyHighViewMapDensityUP1D {

}@:pythonImport("freestyle.predicates.pyHighViewMapGradientNormUP1D") extern class PyHighViewMapGradientNormUP1D {

}@:pythonImport("freestyle.predicates.pyHigherCurvature2DAngleUP0D") extern class PyHigherCurvature2DAngleUP0D {

}@:pythonImport("freestyle.predicates.pyHigherLengthUP1D") extern class PyHigherLengthUP1D {

}@:pythonImport("freestyle.predicates.pyHigherNumberOfTurnsUP1D") extern class PyHigherNumberOfTurnsUP1D {

}@:pythonImport("freestyle.predicates.pyIsInOccludersListUP1D") extern class PyIsInOccludersListUP1D {

}@:pythonImport("freestyle.predicates.pyIsOccludedByIdListUP1D") extern class PyIsOccludedByIdListUP1D {

}@:pythonImport("freestyle.predicates.pyIsOccludedByItselfUP1D") extern class PyIsOccludedByItselfUP1D {

}@:pythonImport("freestyle.predicates.pyIsOccludedByUP1D") extern class PyIsOccludedByUP1D {

}@:pythonImport("freestyle.predicates.pyLengthBP1D") extern class PyLengthBP1D {

}@:pythonImport("freestyle.predicates.pyLowDirectionalViewMapDensityUP1D") extern class PyLowDirectionalViewMapDensityUP1D {

}@:pythonImport("freestyle.predicates.pyLowSteerableViewMapDensityUP1D") extern class PyLowSteerableViewMapDensityUP1D {

}@:pythonImport("freestyle.predicates.pyNFirstUP1D") extern class PyNFirstUP1D {

}@:pythonImport("freestyle.predicates.pyNatureBP1D") extern class PyNatureBP1D {

}@:pythonImport("freestyle.predicates.pyNatureUP1D") extern class PyNatureUP1D {

}@:pythonImport("freestyle.predicates.pyParameterUP0D") extern class PyParameterUP0D {

}@:pythonImport("freestyle.predicates.pyParameterUP0DGoodOne") extern class PyParameterUP0DGoodOne {

}@:pythonImport("freestyle.predicates.pyProjectedXBP1D") extern class PyProjectedXBP1D {

}@:pythonImport("freestyle.predicates.pyProjectedYBP1D") extern class PyProjectedYBP1D {

}@:pythonImport("freestyle.predicates.pyShapeIdListUP1D") extern class PyShapeIdListUP1D {

}@:pythonImport("freestyle.predicates.pyShapeIdUP1D") extern class PyShapeIdUP1D {

}@:pythonImport("freestyle.predicates.pyShuffleBP1D") extern class PyShuffleBP1D {

}@:pythonImport("freestyle.predicates.pySilhouetteFirstBP1D") extern class PySilhouetteFirstBP1D {

}@:pythonImport("freestyle.predicates.pyUEqualsUP0D") extern class PyUEqualsUP0D {

}@:pythonImport("freestyle.predicates.pyVertexNatureUP0D") extern class PyVertexNatureUP0D {

}@:pythonImport("freestyle.predicates.pyViewMapGradientNormBP1D") extern class PyViewMapGradientNormBP1D {

}@:pythonImport("freestyle.predicates.pyZBP1D") extern class PyZBP1D {

}@:pythonImport("freestyle.predicates.pyZDiscontinuityBP1D") extern class PyZDiscontinuityBP1D {

}@:pythonImport("freestyle.predicates.pyZSmallerUP1D") extern class PyZSmallerUP1D {

}