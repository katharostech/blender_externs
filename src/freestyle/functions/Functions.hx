package freestyle.functions;
/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DVoid &gt; ChainingTimeStampF1D
**/
@:pythonImport("freestyle.functions.ChainingTimeStampF1D") extern class ChainingTimeStampF1D {
	/**
		Builds a ChainingTimeStampF1D object.
	**/
	function __init__():Void;
	/**
		Sets the chaining time stamp of the Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
	**/
	function __call__(inter:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DDouble &gt; Curvature2DAngleF0D
**/
@:pythonImport("freestyle.functions.Curvature2DAngleF0D") extern class Curvature2DAngleF0D {
	/**
		Builds a Curvature2DAngleF0D object.
	**/
	function __init__():Void;
	/**
		Returns a real value giving the 2D curvature (as an angle) of the 1D
		element to which the freestyle.types.Interface0D pointed by
		the Interface0DIterator belongs.  The 2D curvature is evaluated at the
		Interface0D.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; Curvature2DAngleF1D
**/
@:pythonImport("freestyle.functions.Curvature2DAngleF1D") extern class Curvature2DAngleF1D {
	/**
		Builds a Curvature2DAngleF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the 2D curvature as an angle for an Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	A replacement of the built-in MaterialF0D for stroke creation.
	MaterialF0D does not work with Curves and Strokes.  Line color
	priority is used to pick one of the two materials at material
	boundaries.
**/
@:pythonImport("freestyle.functions.CurveMaterialF0D") extern class CurveMaterialF0D {

}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DEdgeNature &gt; CurveNatureF0D
**/
@:pythonImport("freestyle.functions.CurveNatureF0D") extern class CurveNatureF0D {
	/**
		Builds a CurveNatureF0D object.
	**/
	function __init__():Void;
	/**
		Returns the freestyle.types.Nature of the 1D element the
		Interface0D pointed by the Interface0DIterator belongs to.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns freestyle.types.Nature
	**/
	function __call__(it:Dynamic):freestyle.types.nature.Nature;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DEdgeNature &gt; CurveNatureF1D
**/
@:pythonImport("freestyle.functions.CurveNatureF1D") extern class CurveNatureF1D {
	/**
		Builds a CurveNatureF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the nature of the Interface1D (silhouette, ridge, crease, and
		so on).  Except if the Interface1D is a
		freestyle.types.ViewEdge, this result might be ambiguous.
		Indeed, the Interface1D might result from the gathering of several 1D
		elements, each one being of a different nature.  An integration
		method, such as the MEAN, might give, in this case, irrelevant
		results.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns freestyle.types.Nature
	**/
	function __call__(inter:Dynamic):freestyle.types.nature.Nature;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DDouble &gt; DensityF0D
**/
@:pythonImport("freestyle.functions.DensityF0D") extern class DensityF0D {
	/**
		Builds a DensityF0D object.
		@param sigma The gaussian sigma value indicating the X value for
		                                        which the gaussian function is 0.5.  It leads to the window size
		                                        value (the larger, the smoother). — float
	**/
	function __init__(sigma:Dynamic):Void;
	/**
		Returns the density of the (result) image evaluated at the
		freestyle.types.Interface0D pointed by the
		Interface0DIterator. This density is evaluated using a pixels square
		window around the evaluation point and integrating these values using
		a gaussian.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; DensityF1D
**/
@:pythonImport("freestyle.functions.DensityF1D") extern class DensityF1D {
	/**
		Builds a DensityF1D object.
		@param sigma The sigma used in DensityF0D and determining the window size
		                                                used in each density query. — float
		@param integration_type The integration method used to compute a single value
		                                                from a set of values. — freestyle.types.IntegrationType
		@param sampling The resolution used to sample the chain: the
		                                                corresponding 0D function is evaluated at each sample point and
		                                                the result is obtained by combining the resulting values into a
		                                                single one, following the method specified by integration_type. — float
	**/
	function __init__(sigma:Dynamic, integration_type:Dynamic, sampling:Dynamic):Void;
	/**
		Returns the density evaluated for an Interface1D. The density is
		evaluated for a set of points along the Interface1D (using the
		freestyle.functions.DensityF0D functor) with a user-defined
		sampling and then integrated into a single value using a user-defined
		integration method.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; GetCompleteViewMapDensityF1D
**/
@:pythonImport("freestyle.functions.GetCompleteViewMapDensityF1D") extern class GetCompleteViewMapDensityF1D {
	/**
		Builds a GetCompleteViewMapDensityF1D object.
		@param level The level of the pyramid from which the pixel must be
		                                                read. — int
		@param integration_type The integration method used to compute a single value
		                                                from a set of values. — freestyle.types.IntegrationType
		@param sampling The resolution used to sample the chain: the
		                                                corresponding 0D function is evaluated at each sample point and
		                                                the result is obtained by combining the resulting values into a
		                                                single one, following the method specified by integration_type. — float
	**/
	function __init__(level:Dynamic, integration_type:Dynamic, sampling:Dynamic):Void;
	/**
		Returns the density evaluated for an Interface1D in the complete
		viewmap image.  The density is evaluated for a set of points along the
		Interface1D (using the
		freestyle.functions.ReadCompleteViewMapPixelF0D functor) and
		then integrated into a single value using a user-defined integration
		method.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DFloat &gt; GetCurvilinearAbscissaF0D
**/
@:pythonImport("freestyle.functions.GetCurvilinearAbscissaF0D") extern class GetCurvilinearAbscissaF0D {
	/**
		Builds a GetCurvilinearAbscissaF0D object.
	**/
	function __init__():Void;
	/**
		Returns the curvilinear abscissa of the
		freestyle.types.Interface0D pointed by the
		Interface0DIterator in the context of its 1D element.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; GetDirectionalViewMapDensityF1D
**/
@:pythonImport("freestyle.functions.GetDirectionalViewMapDensityF1D") extern class GetDirectionalViewMapDensityF1D {
	/**
		Builds a GetDirectionalViewMapDensityF1D object.
		@param orientation The number of the directional map we must work
		                                                with. — int
		@param level The level of the pyramid from which the pixel must be
		                                                read. — int
		@param integration_type The integration method used to compute a single value
		                                                from a set of values. — freestyle.types.IntegrationType
		@param sampling The resolution used to sample the chain: the
		                                                corresponding 0D function is evaluated at each sample point and
		                                                the result is obtained by combining the resulting values into a
		                                                single one, following the method specified by integration_type. — float
	**/
	function __init__(orientation:Dynamic, level:Dynamic, integration_type:Dynamic, sampling:Dynamic):Void;
	/**
		Returns the density evaluated for an Interface1D in of the steerable
		viewmaps image.  The direction telling which Directional map to choose
		is explicitly specified by the user.  The density is evaluated for a
		set of points along the Interface1D (using the
		freestyle.functions.ReadSteerableViewMapPixelF0D functor) and
		then integrated into a single value using a user-defined integration
		method.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DViewShape &gt; GetOccludeeF0D
**/
@:pythonImport("freestyle.functions.GetOccludeeF0D") extern class GetOccludeeF0D {
	/**
		Builds a GetOccludeeF0D object.
	**/
	function __init__():Void;
	/**
		Returns the freestyle.types.ViewShape that the Interface0D
		pointed by the Interface0DIterator occludes.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns freestyle.types.ViewShape
	**/
	function __call__(it:Dynamic):freestyle.types.viewshape.ViewShape;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DVectorViewShape &gt; GetOccludeeF1D
**/
@:pythonImport("freestyle.functions.GetOccludeeF1D") extern class GetOccludeeF1D {
	/**
		Builds a GetOccludeeF1D object.
	**/
	function __init__():Void;
	/**
		Returns a list of occluded shapes covered by this Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns list of freestyle.types.ViewShape objects
	**/
	function __call__(inter:Dynamic):Array<Dynamic>;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DVectorViewShape &gt; GetOccludersF0D
**/
@:pythonImport("freestyle.functions.GetOccludersF0D") extern class GetOccludersF0D {
	/**
		Builds a GetOccludersF0D object.
	**/
	function __init__():Void;
	/**
		Returns a list of freestyle.types.ViewShape objects occluding the
		freestyle.types.Interface0D pointed by the Interface0DIterator.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns list of freestyle.types.ViewShape objects
	**/
	function __call__(it:Dynamic):Array<Dynamic>;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DVectorViewShape &gt; GetOccludersF1D
**/
@:pythonImport("freestyle.functions.GetOccludersF1D") extern class GetOccludersF1D {
	/**
		Builds a GetOccludersF1D object.
	**/
	function __init__():Void;
	/**
		Returns a list of occluding shapes that cover this Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns list of freestyle.types.ViewShape objects
	**/
	function __call__(inter:Dynamic):Array<Dynamic>;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DFloat &gt; GetParameterF0D
**/
@:pythonImport("freestyle.functions.GetParameterF0D") extern class GetParameterF0D {
	/**
		Builds a GetParameterF0D object.
	**/
	function __init__():Void;
	/**
		Returns the parameter of the freestyle.types.Interface0D
		pointed by the Interface0DIterator in the context of its 1D element.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DDouble &gt; GetProjectedXF0D
**/
@:pythonImport("freestyle.functions.GetProjectedXF0D") extern class GetProjectedXF0D {
	/**
		Builds a GetProjectedXF0D object.
	**/
	function __init__():Void;
	/**
		Returns the X 3D projected coordinate of the freestyle.types.Interface0D
		pointed by the Interface0DIterator.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; GetProjectedXF1D
**/
@:pythonImport("freestyle.functions.GetProjectedXF1D") extern class GetProjectedXF1D {
	/**
		Builds a GetProjectedXF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the projected X 3D coordinate of an Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DDouble &gt; GetProjectedYF0D
**/
@:pythonImport("freestyle.functions.GetProjectedYF0D") extern class GetProjectedYF0D {
	/**
		Builds a GetProjectedYF0D object.
	**/
	function __init__():Void;
	/**
		Returns the Y 3D projected coordinate of the freestyle.types.Interface0D
		pointed by the Interface0DIterator.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; GetProjectedYF1D
**/
@:pythonImport("freestyle.functions.GetProjectedYF1D") extern class GetProjectedYF1D {
	/**
		Builds a GetProjectedYF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the projected Y 3D coordinate of an Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DDouble &gt; GetProjectedZF0D
**/
@:pythonImport("freestyle.functions.GetProjectedZF0D") extern class GetProjectedZF0D {
	/**
		Builds a GetProjectedZF0D object.
	**/
	function __init__():Void;
	/**
		Returns the Z 3D projected coordinate of the freestyle.types.Interface0D
		pointed by the Interface0DIterator.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; GetProjectedZF1D
**/
@:pythonImport("freestyle.functions.GetProjectedZF1D") extern class GetProjectedZF1D {
	/**
		Builds a GetProjectedZF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the projected Z 3D coordinate of an Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DViewShape &gt; GetShapeF0D
**/
@:pythonImport("freestyle.functions.GetShapeF0D") extern class GetShapeF0D {
	/**
		Builds a GetShapeF0D object.
	**/
	function __init__():Void;
	/**
		Returns the freestyle.types.ViewShape containing the
		Interface0D pointed by the Interface0DIterator.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns freestyle.types.ViewShape
	**/
	function __call__(it:Dynamic):freestyle.types.viewshape.ViewShape;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DVectorViewShape &gt; GetShapeF1D
**/
@:pythonImport("freestyle.functions.GetShapeF1D") extern class GetShapeF1D {
	/**
		Builds a GetShapeF1D object.
	**/
	function __init__():Void;
	/**
		Returns a list of shapes covered by this Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns list of freestyle.types.ViewShape objects
	**/
	function __call__(inter:Dynamic):Array<Dynamic>;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; GetSteerableViewMapDensityF1D
**/
@:pythonImport("freestyle.functions.GetSteerableViewMapDensityF1D") extern class GetSteerableViewMapDensityF1D {
	/**
		Builds a GetSteerableViewMapDensityF1D object.
		@param level The level of the pyramid from which the pixel must be
		                                                read. — int
		@param integration_type The integration method used to compute a single value
		                                                from a set of values. — freestyle.types.IntegrationType
		@param sampling The resolution used to sample the chain: the
		                                                corresponding 0D function is evaluated at each sample point and
		                                                the result is obtained by combining the resulting values into a
		                                                single one, following the method specified by integration_type. — float
	**/
	function __init__(level:Dynamic, integration_type:Dynamic, sampling:Dynamic):Void;
	/**
		Returns the density of the ViewMap for a given Interface1D.  The
		density of each freestyle.types.FEdge is evaluated in the
		proper steerable freestyle.types.ViewMap depending on its
		orientation.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DFloat &gt; GetViewMapGradientNormF0D
**/
@:pythonImport("freestyle.functions.GetViewMapGradientNormF0D") extern class GetViewMapGradientNormF0D {
	/**
		Builds a GetViewMapGradientNormF0D object.
		@param level The level of the pyramid from which the pixel must be
		                                        read. — int
	**/
	function __init__(level:Dynamic):Void;
	/**
		Returns the norm of the gradient of the global viewmap density
		image.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; GetViewMapGradientNormF1D
**/
@:pythonImport("freestyle.functions.GetViewMapGradientNormF1D") extern class GetViewMapGradientNormF1D {
	/**
		Builds a GetViewMapGradientNormF1D object.
		@param level The level of the pyramid from which the pixel must be
		                                                read. — int
		@param integration_type The integration method used to compute a single value
		                                                from a set of values. — freestyle.types.IntegrationType
		@param sampling The resolution used to sample the chain: the
		                                                corresponding 0D function is evaluated at each sample point and
		                                                the result is obtained by combining the resulting values into a
		                                                single one, following the method specified by integration_type. — float
	**/
	function __init__(level:Dynamic, integration_type:Dynamic, sampling:Dynamic):Void;
	/**
		Returns the density of the ViewMap for a given Interface1D.  The
		density of each freestyle.types.FEdge is evaluated in the
		proper steerable freestyle.types.ViewMap depending on its
		orientation.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DDouble &gt; GetXF0D
**/
@:pythonImport("freestyle.functions.GetXF0D") extern class GetXF0D {
	/**
		Builds a GetXF0D object.
	**/
	function __init__():Void;
	/**
		Returns the X 3D coordinate of the freestyle.types.Interface0D pointed by
		the Interface0DIterator.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; GetXF1D
**/
@:pythonImport("freestyle.functions.GetXF1D") extern class GetXF1D {
	/**
		Builds a GetXF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the X 3D coordinate of an Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DDouble &gt; GetYF0D
**/
@:pythonImport("freestyle.functions.GetYF0D") extern class GetYF0D {
	/**
		Builds a GetYF0D object.
	**/
	function __init__():Void;
	/**
		Returns the Y 3D coordinate of the freestyle.types.Interface0D pointed by
		the Interface0DIterator.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; GetYF1D
**/
@:pythonImport("freestyle.functions.GetYF1D") extern class GetYF1D {
	/**
		Builds a GetYF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the Y 3D coordinate of an Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DDouble &gt; GetZF0D
**/
@:pythonImport("freestyle.functions.GetZF0D") extern class GetZF0D {
	/**
		Builds a GetZF0D object.
	**/
	function __init__():Void;
	/**
		Returns the Z 3D coordinate of the freestyle.types.Interface0D pointed by
		the Interface0DIterator.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; GetZF1D
**/
@:pythonImport("freestyle.functions.GetZF1D") extern class GetZF1D {
	/**
		Builds a GetZF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the Z 3D coordinate of an Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DVoid &gt; IncrementChainingTimeStampF1D
**/
@:pythonImport("freestyle.functions.IncrementChainingTimeStampF1D") extern class IncrementChainingTimeStampF1D {
	/**
		Builds an IncrementChainingTimeStampF1D object.
	**/
	function __init__():Void;
	/**
		Increments the chaining time stamp of the Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
	**/
	function __call__(inter:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DDouble &gt; LocalAverageDepthF0D
**/
@:pythonImport("freestyle.functions.LocalAverageDepthF0D") extern class LocalAverageDepthF0D {
	/**
		Builds a LocalAverageDepthF0D object.
		@param mask_size The size of the mask. — float
	**/
	function __init__(mask_size:Dynamic):Void;
	/**
		Returns the average depth around the
		freestyle.types.Interface0D pointed by the
		Interface0DIterator.  The result is obtained by querying the depth
		buffer on a window around that point.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; LocalAverageDepthF1D
**/
@:pythonImport("freestyle.functions.LocalAverageDepthF1D") extern class LocalAverageDepthF1D {
	/**
		Builds a LocalAverageDepthF1D object.
		@param sigma The sigma used in DensityF0D and determining the window
		                                                size used in each density query. — float
		@param integration_type The integration method used to compute a single value
		                                                from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(sigma:Dynamic, integration_type:Dynamic):Void;
	/**
		Returns the average depth evaluated for an Interface1D.  The average
		depth is evaluated for a set of points along the Interface1D (using
		the freestyle.functions.LocalAverageDepthF0D functor) with a
		user-defined sampling and then integrated into a single value using a
		user-defined integration method.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DMaterial &gt; MaterialF0D
**/
@:pythonImport("freestyle.functions.MaterialF0D") extern class MaterialF0D {
	/**
		Builds a MaterialF0D object.
	**/
	function __init__():Void;
	/**
		Returns the material of the object evaluated at the
		freestyle.types.Interface0D pointed by the
		Interface0DIterator.  This evaluation can be ambiguous (in the case of
		a freestyle.types.TVertex for example.  This functor tries to
		remove this ambiguity using the context offered by the 1D element to
		which the Interface0DIterator belongs to and by arbitrary choosing the
		material of the face that lies on its left when following the 1D
		element if there are two different materials on each side of the
		point.  However, there still can be problematic cases, and the user
		willing to deal with this cases in a specific way should implement its
		own getMaterial functor.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns freestyle.types.Material
	**/
	function __call__(it:Dynamic):freestyle.types.material.Material;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DVec2f &gt; Normal2DF0D
**/
@:pythonImport("freestyle.functions.Normal2DF0D") extern class Normal2DF0D {
	/**
		Builds a Normal2DF0D object.
	**/
	function __init__():Void;
	/**
		Returns a two-dimensional vector giving the normalized 2D normal to
		the 1D element to which the freestyle.types.Interface0D
		pointed by the Interface0DIterator belongs.  The normal is evaluated
		at the pointed Interface0D.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns mathutils.Vector
	**/
	function __call__(it:Dynamic):mathutils.vector.Vector;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DVec2f &gt; Normal2DF1D
**/
@:pythonImport("freestyle.functions.Normal2DF1D") extern class Normal2DF1D {
	/**
		Builds a Normal2DF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the 2D normal for the Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns mathutils.Vector
	**/
	function __call__(inter:Dynamic):mathutils.vector.Vector;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DVec2f &gt; Orientation2DF1D
**/
@:pythonImport("freestyle.functions.Orientation2DF1D") extern class Orientation2DF1D {
	/**
		Builds an Orientation2DF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the 2D orientation of the Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns mathutils.Vector
	**/
	function __call__(inter:Dynamic):mathutils.vector.Vector;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DVec3f &gt; Orientation3DF1D
**/
@:pythonImport("freestyle.functions.Orientation3DF1D") extern class Orientation3DF1D {
	/**
		Builds an Orientation3DF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the 3D orientation of the Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns mathutils.Vector
	**/
	function __call__(inter:Dynamic):mathutils.vector.Vector;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DUnsigned &gt; QuantitativeInvisibilityF0D
**/
@:pythonImport("freestyle.functions.QuantitativeInvisibilityF0D") extern class QuantitativeInvisibilityF0D {
	/**
		Builds a QuantitativeInvisibilityF0D object.
	**/
	function __init__():Void;
	/**
		Returns the quantitative invisibility of the
		freestyle.types.Interface0D pointed by the
		Interface0DIterator.  This evaluation can be ambiguous (in the case of
		a freestyle.types.TVertex for example).  This functor tries
		to remove this ambiguity using the context offered by the 1D element
		to which the Interface0D belongs to.  However, there still can be
		problematic cases, and the user willing to deal with this cases in a
		specific way should implement its own getQIF0D functor.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns int
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DUnsigned &gt; QuantitativeInvisibilityF1D
**/
@:pythonImport("freestyle.functions.QuantitativeInvisibilityF1D") extern class QuantitativeInvisibilityF1D {
	/**
		Builds a QuantitativeInvisibilityF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns the Quantitative Invisibility of an Interface1D element. If
		the Interface1D is a freestyle.types.ViewEdge, then there is
		no ambiguity concerning the result.  But, if the Interface1D results
		of a chaining (chain, stroke), then it might be made of several 1D
		elements of different Quantitative Invisibilities.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns int
	**/
	function __call__(inter:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DFloat &gt; ReadCompleteViewMapPixelF0D
**/
@:pythonImport("freestyle.functions.ReadCompleteViewMapPixelF0D") extern class ReadCompleteViewMapPixelF0D {
	/**
		Builds a ReadCompleteViewMapPixelF0D object.
		@param level The level of the pyramid from which the pixel must be
		                                        read. — int
	**/
	function __init__(level:Dynamic):Void;
	/**
		Reads a pixel in one of the level of the complete viewmap.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DFloat &gt; ReadMapPixelF0D
**/
@:pythonImport("freestyle.functions.ReadMapPixelF0D") extern class ReadMapPixelF0D {
	/**
		Builds a ReadMapPixelF0D object.
		@param map_name The name of the map to be read. — str
		@param level The level of the pyramid from which the pixel must be
		                                                read. — int
	**/
	function __init__(map_name:Dynamic, level:Dynamic):Void;
	/**
		Reads a pixel in a map.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DFloat &gt; ReadSteerableViewMapPixelF0D
**/
@:pythonImport("freestyle.functions.ReadSteerableViewMapPixelF0D") extern class ReadSteerableViewMapPixelF0D {
	/**
		Builds a ReadSteerableViewMapPixelF0D object.
		@param orientation The integer belonging to [0, 4] indicating the
		                                                orientation (E, NE, N, NW) we are interested in. — int
		@param level The level of the pyramid from which the pixel must be
		                                                read. — int
	**/
	function __init__(orientation:Dynamic, level:Dynamic):Void;
	/**
		Reads a pixel in one of the level of one of the steerable viewmaps.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DId &gt; ShapeIdF0D
**/
@:pythonImport("freestyle.functions.ShapeIdF0D") extern class ShapeIdF0D {
	/**
		Builds a ShapeIdF0D object.
	**/
	function __init__():Void;
	/**
		Returns the freestyle.types.Id of the Shape the
		freestyle.types.Interface0D pointed by the
		Interface0DIterator belongs to. This evaluation can be ambiguous (in
		the case of a freestyle.types.TVertex for example).  This
		functor tries to remove this ambiguity using the context offered by
		the 1D element to which the Interface0DIterator belongs to. However,
		there still can be problematic cases, and the user willing to deal
		with this cases in a specific way should implement its own
		getShapeIdF0D functor.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns freestyle.types.Id
	**/
	function __call__(it:Dynamic):freestyle.types.id.Id;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DVoid &gt; TimeStampF1D
**/
@:pythonImport("freestyle.functions.TimeStampF1D") extern class TimeStampF1D {
	/**
		Builds a TimeStampF1D object.
	**/
	function __init__():Void;
	/**
		Returns the time stamp of the Interface1D.
		@param inter An Interface1D object. — freestyle.types.Interface1D
	**/
	function __call__(inter:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DVec2f &gt; VertexOrientation2DF0D
**/
@:pythonImport("freestyle.functions.VertexOrientation2DF0D") extern class VertexOrientation2DF0D {
	/**
		Builds a VertexOrientation2DF0D object.
	**/
	function __init__():Void;
	/**
		Returns a two-dimensional vector giving the 2D oriented tangent to the
		1D element to which the freestyle.types.Interface0D pointed
		by the Interface0DIterator belongs.  The 2D oriented tangent is
		evaluated at the pointed Interface0D.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns mathutils.Vector
	**/
	function __call__(it:Dynamic):mathutils.vector.Vector;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DVec3f &gt; VertexOrientation3DF0D
**/
@:pythonImport("freestyle.functions.VertexOrientation3DF0D") extern class VertexOrientation3DF0D {
	/**
		Builds a VertexOrientation3DF0D object.
	**/
	function __init__():Void;
	/**
		Returns a three-dimensional vector giving the 3D oriented tangent to
		the 1D element to which the freestyle.types.Interface0D
		pointed by the Interface0DIterator belongs.  The 3D oriented tangent
		is evaluated at the pointed Interface0D.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns mathutils.Vector
	**/
	function __call__(it:Dynamic):mathutils.vector.Vector;
}/**
	Class hierarchy: freestyle.types.UnaryFunction0D &gt; freestyle.types.UnaryFunction0DDouble &gt; ZDiscontinuityF0D
**/
@:pythonImport("freestyle.functions.ZDiscontinuityF0D") extern class ZDiscontinuityF0D {
	/**
		Builds a ZDiscontinuityF0D object.
	**/
	function __init__():Void;
	/**
		Returns a real value giving the distance between the
		freestyle.types.Interface0D pointed by the
		Interface0DIterator and the shape that lies behind (occludee).  This
		distance is evaluated in the camera space and normalized between 0 and
		1.  Therefore, if no object is occluded by the shape to which the
		Interface0D belongs to, 1 is returned.
		@param it An Interface0DIterator object. — freestyle.types.Interface0DIterator
		
		@returns float
	**/
	function __call__(it:Dynamic):Dynamic;
}/**
	Class hierarchy: freestyle.types.UnaryFunction1D &gt; freestyle.types.UnaryFunction1DDouble &gt; ZDiscontinuityF1D
**/
@:pythonImport("freestyle.functions.ZDiscontinuityF1D") extern class ZDiscontinuityF1D {
	/**
		Builds a ZDiscontinuityF1D object.
		@param integration_type The integration method used to compute a single value
		                                        from a set of values. — freestyle.types.IntegrationType
	**/
	function __init__(integration_type:Dynamic):Void;
	/**
		Returns a real value giving the distance between an Interface1D
		and the shape that lies behind (occludee).  This distance is
		evaluated in the camera space and normalized between 0 and 1.
		Therefore, if no object is occluded by the shape to which the
		Interface1D belongs to, 1 is returned.
		@param inter An Interface1D object. — freestyle.types.Interface1D
		
		@returns float
	**/
	function __call__(inter:Dynamic):Dynamic;
}@:pythonImport("freestyle.functions.pyCurvilinearLengthF0D") extern class PyCurvilinearLengthF0D {

}/**
	Estimates the anisotropy of density.
**/
@:pythonImport("freestyle.functions.pyDensityAnisotropyF0D") extern class PyDensityAnisotropyF0D {

}@:pythonImport("freestyle.functions.pyDensityAnisotropyF1D") extern class PyDensityAnisotropyF1D {

}@:pythonImport("freestyle.functions.pyGetInverseProjectedZF1D") extern class PyGetInverseProjectedZF1D {

}@:pythonImport("freestyle.functions.pyGetSquareInverseProjectedZF1D") extern class PyGetSquareInverseProjectedZF1D {

}@:pythonImport("freestyle.functions.pyInverseCurvature2DAngleF0D") extern class PyInverseCurvature2DAngleF0D {

}@:pythonImport("freestyle.functions.pyViewMapGradientNormF0D") extern class PyViewMapGradientNormF0D {

}@:pythonImport("freestyle.functions.pyViewMapGradientNormF1D") extern class PyViewMapGradientNormF1D {

}/**
	Returns the gradient vector for a pixel.
**/
@:pythonImport("freestyle.functions.pyViewMapGradientVectorF0D") extern class PyViewMapGradientVectorF0D {
	/**
		Builds a pyViewMapGradientVectorF0D object.
		@param level the level at which to compute the gradient — int
	**/
	function __init__(level:Dynamic):Void;
}