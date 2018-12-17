package freestyle.predicates;
@:native("freestyle.predicates.AndBP1D") extern class AndBP1D {

}@:native("freestyle.predicates.AndUP1D") extern class AndUP1D {

}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; ContourUP1D
**/
@:native("freestyle.predicates.ContourUP1D") extern class ContourUP1D {
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
@:native("freestyle.predicates.DensityLowerThanUP1D") extern class DensityLowerThanUP1D {
	/**
		Builds a DensityLowerThanUP1D object.
		@param threshold The value of the threshold density.  Any Interface1D
		                                                having a density lower than this threshold will match. — float
		@param sigma The sigma value defining the density evaluation window
		                                                size used in the freestyle.functions.DensityF0D functor. — float
	**/
	function __init__(threshold:Float, sigma:Float):Void;
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
@:native("freestyle.predicates.EqualToChainingTimeStampUP1D") extern class EqualToChainingTimeStampUP1D {
	/**
		Builds a EqualToChainingTimeStampUP1D object.
		@param ts A time stamp value. — int
	**/
	function __init__(ts:Int):Void;
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
@:native("freestyle.predicates.EqualToTimeStampUP1D") extern class EqualToTimeStampUP1D {
	/**
		Builds a EqualToTimeStampUP1D object.
		@param ts A time stamp value. — int
	**/
	function __init__(ts:Int):Void;
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
@:native("freestyle.predicates.ExternalContourUP1D") extern class ExternalContourUP1D {
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
@:native("freestyle.predicates.FalseBP1D") extern class FalseBP1D {
	/**
		Always returns false.
		@param pyinter1 The first Interface1D object. — freestyle.types.Interface1D
		@param pyinter2 The second Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(pyinter1:Dynamic, pyinter2:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate0D &gt; FalseUP0D
**/
@:native("freestyle.predicates.FalseUP0D") extern class FalseUP0D {
	/**
		Always returns false.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns bool
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; FalseUP1D
**/
@:native("freestyle.predicates.FalseUP1D") extern class FalseUP1D {
	/**
		Always returns false.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.BinaryPredicate1D &gt; Length2DBP1D
**/
@:native("freestyle.predicates.Length2DBP1D") extern class Length2DBP1D {
	/**
		Returns true if the 2D length of inter1 is less than the 2D length
		of inter2.
		@param pyinter1 The first Interface1D object. — freestyle.types.Interface1D
		@param pyinter2 The second Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(pyinter1:Dynamic, pyinter2:Dynamic):Dynamic;
}/**
	Checks whether the two supplied ViewEdges have the same material.
**/
@:native("freestyle.predicates.MaterialBP1D") extern class MaterialBP1D {

}@:native("freestyle.predicates.NotBP1D") extern class NotBP1D {

}@:native("freestyle.predicates.NotUP1D") extern class NotUP1D {

}@:native("freestyle.predicates.ObjectNamesUP1D") extern class ObjectNamesUP1D {

}@:native("freestyle.predicates.OrBP1D") extern class OrBP1D {

}@:native("freestyle.predicates.OrUP1D") extern class OrUP1D {

}@:native("freestyle.predicates.QuantitativeInvisibilityRangeUP1D") extern class QuantitativeInvisibilityRangeUP1D {

}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; QuantitativeInvisibilityUP1D
**/
@:native("freestyle.predicates.QuantitativeInvisibilityUP1D") extern class QuantitativeInvisibilityUP1D {
	/**
		Builds a QuantitativeInvisibilityUP1D object.
		@param qi The Quantitative Invisibility you want the Interface1D to
		                                        have. — int
	**/
	function __init__(qi:Int):Void;
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
@:native("freestyle.predicates.SameShapeIdBP1D") extern class SameShapeIdBP1D {
	/**
		Returns true if inter1 and inter2 belong to the same shape.
		@param pyinter1 The first Interface1D object. — freestyle.types.Interface1D
		@param pyinter2 The second Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(pyinter1:Dynamic, pyinter2:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; ShapeUP1D
**/
@:native("freestyle.predicates.ShapeUP1D") extern class ShapeUP1D {
	/**
		Builds a ShapeUP1D object.
		@param first The first Id component. — int
		@param second The second Id component. — int
	**/
	function __init__(first:Int, second:Int):Void;
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
@:native("freestyle.predicates.TrueBP1D") extern class TrueBP1D {
	/**
		Always returns true.
		@param pyinter1 The first Interface1D object. — freestyle.types.Interface1D
		@param pyinter2 The second Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(pyinter1:Dynamic, pyinter2:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate0D &gt; TrueUP0D
**/
@:native("freestyle.predicates.TrueUP0D") extern class TrueUP0D {
	/**
		Always returns true.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns bool
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; TrueUP1D
**/
@:native("freestyle.predicates.TrueUP1D") extern class TrueUP1D {
	/**
		Always returns true.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.BinaryPredicate1D &gt; ViewMapGradientNormBP1D
**/
@:native("freestyle.predicates.ViewMapGradientNormBP1D") extern class ViewMapGradientNormBP1D {
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
	function __init__(level:Int, integration_type:Dynamic, sampling:Float):Void;
	/**
		Returns true if the evaluation of the Gradient norm Function is
		higher for inter1 than for inter2.
		@param pyinter1 The first Interface1D object. — freestyle.types.Interface1D
		@param pyinter2 The second Interface1D object. — freestyle.types.Interface1D
		
		@returns bool
	**/
	function __call__(pyinter1:Dynamic, pyinter2:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryPredicate1D &gt; WithinImageBoundaryUP1D
**/
@:native("freestyle.predicates.WithinImageBoundaryUP1D") extern class WithinImageBoundaryUP1D {
	/**
		Builds an WithinImageBoundaryUP1D object.
		@param xmin X lower bound of the image boundary. — float
		@param ymin Y lower bound of the image boundary. — float
		@param xmax X upper bound of the image boundary. — float
		@param ymax Y upper bound of the image boundary. — float
	**/
	function __init__(xmin:Float, ymin:Float, xmax:Float, ymax:Float):Void;
	/**
		Returns true if the Interface1D intersects with image boundary.
	**/
	function __call__(inter:Dynamic):Void;
}/**
	Check whether an Interface0DIterator references a TVertex and is
	the one that is hidden (inferred from the context).
**/
@:native("freestyle.predicates.pyBackTVertexUP0D") extern class PyBackTVertexUP0D {

}@:native("freestyle.predicates.pyClosedCurveUP1D") extern class PyClosedCurveUP1D {

}@:native("freestyle.predicates.pyDensityFunctorUP1D") extern class PyDensityFunctorUP1D {

}@:native("freestyle.predicates.pyDensityUP1D") extern class PyDensityUP1D {

}@:native("freestyle.predicates.pyDensityVariableSigmaUP1D") extern class PyDensityVariableSigmaUP1D {

}@:native("freestyle.predicates.pyHighDensityAnisotropyUP1D") extern class PyHighDensityAnisotropyUP1D {

}@:native("freestyle.predicates.pyHighDirectionalViewMapDensityUP1D") extern class PyHighDirectionalViewMapDensityUP1D {

}@:native("freestyle.predicates.pyHighSteerableViewMapDensityUP1D") extern class PyHighSteerableViewMapDensityUP1D {

}@:native("freestyle.predicates.pyHighViewMapDensityUP1D") extern class PyHighViewMapDensityUP1D {

}@:native("freestyle.predicates.pyHighViewMapGradientNormUP1D") extern class PyHighViewMapGradientNormUP1D {

}@:native("freestyle.predicates.pyHigherCurvature2DAngleUP0D") extern class PyHigherCurvature2DAngleUP0D {

}@:native("freestyle.predicates.pyHigherLengthUP1D") extern class PyHigherLengthUP1D {

}@:native("freestyle.predicates.pyHigherNumberOfTurnsUP1D") extern class PyHigherNumberOfTurnsUP1D {

}@:native("freestyle.predicates.pyIsInOccludersListUP1D") extern class PyIsInOccludersListUP1D {

}@:native("freestyle.predicates.pyIsOccludedByIdListUP1D") extern class PyIsOccludedByIdListUP1D {

}@:native("freestyle.predicates.pyIsOccludedByItselfUP1D") extern class PyIsOccludedByItselfUP1D {

}@:native("freestyle.predicates.pyIsOccludedByUP1D") extern class PyIsOccludedByUP1D {

}@:native("freestyle.predicates.pyLengthBP1D") extern class PyLengthBP1D {

}@:native("freestyle.predicates.pyLowDirectionalViewMapDensityUP1D") extern class PyLowDirectionalViewMapDensityUP1D {

}@:native("freestyle.predicates.pyLowSteerableViewMapDensityUP1D") extern class PyLowSteerableViewMapDensityUP1D {

}@:native("freestyle.predicates.pyNFirstUP1D") extern class PyNFirstUP1D {

}@:native("freestyle.predicates.pyNatureBP1D") extern class PyNatureBP1D {

}@:native("freestyle.predicates.pyNatureUP1D") extern class PyNatureUP1D {

}@:native("freestyle.predicates.pyParameterUP0D") extern class PyParameterUP0D {

}@:native("freestyle.predicates.pyParameterUP0DGoodOne") extern class PyParameterUP0DGoodOne {

}@:native("freestyle.predicates.pyProjectedXBP1D") extern class PyProjectedXBP1D {

}@:native("freestyle.predicates.pyProjectedYBP1D") extern class PyProjectedYBP1D {

}@:native("freestyle.predicates.pyShapeIdListUP1D") extern class PyShapeIdListUP1D {

}@:native("freestyle.predicates.pyShapeIdUP1D") extern class PyShapeIdUP1D {

}@:native("freestyle.predicates.pyShuffleBP1D") extern class PyShuffleBP1D {

}@:native("freestyle.predicates.pySilhouetteFirstBP1D") extern class PySilhouetteFirstBP1D {

}@:native("freestyle.predicates.pyUEqualsUP0D") extern class PyUEqualsUP0D {

}@:native("freestyle.predicates.pyVertexNatureUP0D") extern class PyVertexNatureUP0D {

}@:native("freestyle.predicates.pyViewMapGradientNormBP1D") extern class PyViewMapGradientNormBP1D {

}@:native("freestyle.predicates.pyZBP1D") extern class PyZBP1D {

}@:native("freestyle.predicates.pyZDiscontinuityBP1D") extern class PyZDiscontinuityBP1D {

}@:native("freestyle.predicates.pyZSmallerUP1D") extern class PyZSmallerUP1D {

}