package freestyle.shaders;
/**
	Class hierarchy: freestyle.types.StrokeShader &gt; BackboneStretcherShader
	
	[Geometry shader]
**/
@:pythonImport("freestyle.shaders.BackboneStretcherShader") extern class BackboneStretcherShader {
	/**
		Builds a BackboneStretcherShader object.
		@param amount The stretching amount value. — float
	**/
	function __init__(amount:Dynamic):Void;
	/**
		Stretches the stroke at its two extremities and following the
		respective directions: v(1)v(0) and v(n-1)v(n).
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; BezierCurveShader
	
	[Geometry shader]
**/
@:pythonImport("freestyle.shaders.BezierCurveShader") extern class BezierCurveShader {
	/**
		Builds a BezierCurveShader object.
		@param error The error we’re allowing for the approximation.  This
		                                        error is the max distance allowed between the new curve and the
		                                        original geometry. — float
	**/
	function __init__(error:Dynamic):Void;
	/**
		Transforms the stroke backbone geometry so that it corresponds to a
		Bezier Curve approximation of the original backbone geometry.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; BlenderTextureShader
	
	[Texture shader]
**/
@:pythonImport("freestyle.shaders.BlenderTextureShader") extern class BlenderTextureShader {
	/**
		Builds a BlenderTextureShader object.
		@param texture A line style texture slot or a shader node tree to define
		                                        a set of textures. — bpy.types.LineStyleTextureSlot or
		                                        bpy.types.ShaderNodeTree
	**/
	function __init__(texture:Dynamic):Void;
	/**
		Assigns a blender texture slot to the stroke  shading in order to
		simulate marks.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; CalligraphicShader
	
	[Thickness Shader]
**/
@:pythonImport("freestyle.shaders.CalligraphicShader") extern class CalligraphicShader {
	/**
		Builds a CalligraphicShader object.
		@param thickness_min The minimum thickness in the direction
		                                                perpendicular to the main direction. — float
		@param thickness_max The maximum thickness in the main direction. — float
		@param orientation The 2D vector giving the main direction. — mathutils.Vector
		@param clamp If true, the strokes are drawn in black when the stroke
		                                                direction is between -90 and 90 degrees with respect to the main
		                                                direction and drawn in white otherwise.  If false, the strokes
		                                                are always drawn in black. — bool
	**/
	function __init__(thickness_min:Dynamic, thickness_max:Dynamic, orientation:Dynamic, clamp:Dynamic):Void;
	/**
		Assigns thicknesses to the stroke vertices so that the stroke looks
		like made with a calligraphic tool, i.e. the stroke will be the
		thickest in a main direction, and the thinest in the direction
		perpendicular to this one, and an interpolation inbetween.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; ColorNoiseShader
	
	[Color shader]
**/
@:pythonImport("freestyle.shaders.ColorNoiseShader") extern class ColorNoiseShader {
	/**
		Builds a ColorNoiseShader object.
		@param amplitude The amplitude of the noise signal. — float
		@param period The period of the noise signal. — float
	**/
	function __init__(amplitude:Dynamic, period:Dynamic):Void;
	/**
		Shader to add noise to the stroke colors.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; ConstantColorShader
	
	[Color shader]
**/
@:pythonImport("freestyle.shaders.ConstantColorShader") extern class ConstantColorShader {
	/**
		Builds a ConstantColorShader object.
		@param red The red component. — float
		@param green The green component. — float
		@param blue The blue component. — float
		@param alpha The alpha value. — float
	**/
	function __init__(red:Dynamic, green:Dynamic, blue:Dynamic, alpha:Dynamic):Void;
	/**
		Assigns a constant color to every vertex of the Stroke.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; ConstantThicknessShader
	
	[Thickness shader]
**/
@:pythonImport("freestyle.shaders.ConstantThicknessShader") extern class ConstantThicknessShader {
	/**
		Builds a ConstantThicknessShader object.
		@param thickness The thickness that must be assigned to the stroke. — float
	**/
	function __init__(thickness:Dynamic):Void;
	/**
		Assigns an absolute constant thickness to every vertex of the Stroke.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; ConstrainedIncreasingThicknessShader
	
	[Thickness shader]
**/
@:pythonImport("freestyle.shaders.ConstrainedIncreasingThicknessShader") extern class ConstrainedIncreasingThicknessShader {
	/**
		Builds a ConstrainedIncreasingThicknessShader object.
		@param thickness_min The minimum thickness. — float
		@param thickness_max The maximum thickness. — float
		@param ratio The thickness/length ratio that we don’t want to exceed. — float
	**/
	function __init__(thickness_min:Dynamic, thickness_max:Dynamic, ratio:Dynamic):Void;
	/**
		Same as the IncreasingThicknessShader, but here we allow
		the user to control the thickness/length ratio so that we don’t get
		fat short lines.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; GuidingLinesShader
	
	[Geometry shader]
**/
@:pythonImport("freestyle.shaders.GuidingLinesShader") extern class GuidingLinesShader {
	/**
		Builds a GuidingLinesShader object.
		@param offset The line that replaces the stroke is initially in the
		                                        middle of the initial stroke bounding box.  offset is the value
		                                        of the displacement which is applied to this line along its
		                                        normal. — float
	**/
	function __init__(offset:Dynamic):Void;
	/**
		Shader to modify the Stroke geometry so that it corresponds to its
		main direction line.  This shader must be used together with the
		splitting operator using the curvature criterion. Indeed, the
		precision of the approximation will depend on the size of the
		stroke’s pieces.  The bigger the pieces are, the rougher the
		approximation is.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; IncreasingColorShader
	
	[Color shader]
**/
@:pythonImport("freestyle.shaders.IncreasingColorShader") extern class IncreasingColorShader {
	/**
		Builds an IncreasingColorShader object.
		@param red_min The first color red component. — float
		@param green_min The first color green component. — float
		@param blue_min The first color blue component. — float
		@param alpha_min The first color alpha value. — float
		@param red_max The second color red component. — float
		@param green_max The second color green component. — float
		@param blue_max The second color blue component. — float
		@param alpha_max The second color alpha value. — float
	**/
	function __init__(red_min:Dynamic, green_min:Dynamic, blue_min:Dynamic, alpha_min:Dynamic, red_max:Dynamic, green_max:Dynamic, blue_max:Dynamic, alpha_max:Dynamic):Void;
	/**
		Assigns a varying color to the stroke.  The user specifies two
		colors A and B.  The stroke color will change linearly from A to B
		between the first and the last vertex.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; IncreasingThicknessShader
	
	[Thickness shader]
**/
@:pythonImport("freestyle.shaders.IncreasingThicknessShader") extern class IncreasingThicknessShader {
	/**
		Builds an IncreasingThicknessShader object.
		@param thickness_A The first thickness value. — float
		@param thickness_B The second thickness value. — float
	**/
	function __init__(thickness_A:Dynamic, thickness_B:Dynamic):Void;
	/**
		Assigns thicknesses values such as the thickness increases from a
		thickness value A to a thickness value B between the first vertex
		to the midpoint vertex and then decreases from B to a A between
		this midpoint vertex and the last vertex.  The thickness is
		linearly interpolated from A to B.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; PolygonalizationShader
	
	[Geometry shader]
**/
@:pythonImport("freestyle.shaders.PolygonalizationShader") extern class PolygonalizationShader {
	/**
		Builds a PolygonalizationShader object.
		@param error The error we want our polygonal approximation to have
		                                        with respect to the original geometry.  The smaller, the closer
		                                        the new stroke is to the orinal one.  This error corresponds to
		                                        the maximum distance between the new stroke and the old one. — float
	**/
	function __init__(error:Dynamic):Void;
	/**
		Modifies the Stroke geometry so that it looks more “polygonal”.
		The basic idea is to start from the minimal stroke approximation
		consisting in a line joining the first vertex to the last one and
		to subdivide using the original stroke vertices until a certain
		error is reached.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}@:pythonImport("freestyle.shaders.RoundCapShader") extern class RoundCapShader {
	function round_cap_thickness():Void;
	function shade():Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; SamplingShader
	
	[Geometry shader]
**/
@:pythonImport("freestyle.shaders.SamplingShader") extern class SamplingShader {
	/**
		Builds a SamplingShader object.
		@param sampling The sampling to use for the stroke resampling. — float
	**/
	function __init__(sampling:Dynamic):Void;
	/**
		Resamples the stroke.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; SmoothingShader
	
	[Geometry shader]
**/
@:pythonImport("freestyle.shaders.SmoothingShader") extern class SmoothingShader {
	/**
		Builds a SmoothingShader object.
		@param num_iterations The number of iterations. — int
		@param factor_point 0.1 — float
		@param factor_curvature 0.0 — float
		@param factor_curvature_difference 0.2 — float
		@param aniso_point 0.0 — float
		@param aniso_normal 0.0 — float
		@param aniso_curvature 0.0 — float
		@param carricature_factor 1.0 — float
	**/
	function __init__(num_iterations=100, factor_point=0.1,(num_iterations:Dynamic, factor_point:Dynamic, factor_curvature:Dynamic, factor_curvature_difference:Dynamic, aniso_point:Dynamic, aniso_normal:Dynamic, aniso_curvature:Dynamic, carricature_factor:Dynamic):Void;
	/**
		Smoothes the stroke by moving the vertices to make the stroke
		smoother.  Uses curvature flow to converge towards a curve of
		constant curvature.  The diffusion method we use is anisotropic to
		prevent the diffusion across corners.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; SpatialNoiseShader
	
	[Geometry shader]
**/
@:pythonImport("freestyle.shaders.SpatialNoiseShader") extern class SpatialNoiseShader {
	/**
		Builds a SpatialNoiseShader object.
		@param amount The amplitude of the noise. — float
		@param scale The noise frequency. — float
		@param num_octaves The number of octaves — int
		@param smooth True if you want the noise to be smooth. — bool
		@param pure_random True if you don’t want any coherence. — bool
	**/
	function __init__(amount:Dynamic, scale:Dynamic, num_octaves:Dynamic, smooth:Dynamic, pure_random:Dynamic):Void;
	/**
		Spatial Noise stroke shader.  Moves the vertices to make the stroke
		more noisy.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}@:pythonImport("freestyle.shaders.SquareCapShader") extern class SquareCapShader {
	function shade():Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; StrokeTextureStepShader
	
	[Texture shader]
**/
@:pythonImport("freestyle.shaders.StrokeTextureStepShader") extern class StrokeTextureStepShader {
	/**
		Builds a StrokeTextureStepShader object.
		@param step The spacing along the stroke. — float
	**/
	function __init__(step:Dynamic):Void;
	/**
		Assigns a spacing factor to the texture coordinates of the Stroke.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; ThicknessNoiseShader
	
	[Thickness shader]
**/
@:pythonImport("freestyle.shaders.ThicknessNoiseShader") extern class ThicknessNoiseShader {
	/**
		Builds a ThicknessNoiseShader object.
		@param amplitude The amplitude of the noise signal. — float
		@param period The period of the noise signal. — float
	**/
	function __init__(amplitude:Dynamic, period:Dynamic):Void;
	/**
		Adds some noise to the stroke thickness.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; TipRemoverShader
	
	[Geometry shader]
**/
@:pythonImport("freestyle.shaders.TipRemoverShader") extern class TipRemoverShader {
	/**
		Builds a TipRemoverShader object.
		@param tip_length The length of the piece of stroke we want to remove
		                                        at each extremity. — float
	**/
	function __init__(tip_length:Dynamic):Void;
	/**
		Removes the stroke’s extremities.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Assigns a color (grayscale) to the stroke based on the curvature.
	A higher curvature will yield a brighter color.
**/
@:pythonImport("freestyle.shaders.py2DCurvatureColorShader") extern class Py2DCurvatureColorShader {
	function shade():Void;
}/**
	Stretches the stroke’s backbone, excluding cusp vertices (end junctions).
**/
@:pythonImport("freestyle.shaders.pyBackboneStretcherNoCuspShader") extern class PyBackboneStretcherNoCuspShader {
	function shade():Void;
}/**
	Stretches the stroke’s backbone by a given length (in pixels).
**/
@:pythonImport("freestyle.shaders.pyBackboneStretcherShader") extern class PyBackboneStretcherShader {
	function shade():Void;
}/**
	Draws the silhouette of the object as a circle.
**/
@:pythonImport("freestyle.shaders.pyBluePrintCirclesShader") extern class PyBluePrintCirclesShader {
	function shade():Void;
}/**
	Replaces the stroke with a directed square.
**/
@:pythonImport("freestyle.shaders.pyBluePrintDirectedSquaresShader") extern class PyBluePrintDirectedSquaresShader {
	function shade():Void;
}@:pythonImport("freestyle.shaders.pyBluePrintEllipsesShader") extern class PyBluePrintEllipsesShader {
	function shade():Void;
}@:pythonImport("freestyle.shaders.pyBluePrintSquaresShader") extern class PyBluePrintSquaresShader {
	function shade():Void;
}/**
	Assigns a constant color to the stroke.
**/
@:pythonImport("freestyle.shaders.pyConstantColorShader") extern class PyConstantColorShader {
	function shade():Void;
}/**
	Assigns a constant thickness along the stroke.
**/
@:pythonImport("freestyle.shaders.pyConstantThicknessShader") extern class PyConstantThicknessShader {
	function shade():Void;
}/**
	Increasingly thickens the stroke, constrained by a ratio of the
	stroke’s length.
**/
@:pythonImport("freestyle.shaders.pyConstrainedIncreasingThicknessShader") extern class PyConstrainedIncreasingThicknessShader {
	function shade():Void;
}/**
	Inverse of pyIncreasingThicknessShader, decreasingly thickens the stroke.
**/
@:pythonImport("freestyle.shaders.pyDecreasingThicknessShader") extern class PyDecreasingThicknessShader {
	function shade():Void;
}/**
	Assigns a thickness to the stroke based on the stroke’s distance
	to the camera (Z-value).
**/
@:pythonImport("freestyle.shaders.pyDepthDiscontinuityThicknessShader") extern class PyDepthDiscontinuityThicknessShader {
	function shade():Void;
}/**
	Iteratively adds an offset to the position of each stroke vertex
	in the direction perpendicular to the stroke direction at the
	point. The offset is scaled by the 2D curvature (i.e. how quickly
	the stroke curve is) at the point.
**/
@:pythonImport("freestyle.shaders.pyDiffusion2Shader") extern class PyDiffusion2Shader {
	function shade():Void;
}/**
	Assigns thickness to a stroke based on the density of the diffuse map.
**/
@:pythonImport("freestyle.shaders.pyFXSVaryingThicknessWithDensityShader") extern class PyFXSVaryingThicknessWithDensityShader {
	function shade():Void;
}@:pythonImport("freestyle.shaders.pyGuidingLineShader") extern class PyGuidingLineShader {
	function shade():Void;
}/**
	Controls visibility based upon the quantitative invisibility (QI)
	based on hidden line removal (HLR).
**/
@:pythonImport("freestyle.shaders.pyHLRShader") extern class PyHLRShader {
	function shade():Void;
}/**
	Assigns thickness based on distance to a given point in 2D space.
	the thickness is inverted, so the vertices closest to the
	specified point have the lowest thickness.
**/
@:pythonImport("freestyle.shaders.pyImportance2DThicknessShader") extern class PyImportance2DThicknessShader {
	function shade():Void;
}/**
	Assigns thickness based on distance to a given point in 3D space.
**/
@:pythonImport("freestyle.shaders.pyImportance3DThicknessShader") extern class PyImportance3DThicknessShader {
	function shade():Void;
}/**
	Fades from one color to another along the stroke.
**/
@:pythonImport("freestyle.shaders.pyIncreasingColorShader") extern class PyIncreasingColorShader {
	function shade():Void;
}/**
	Increasingly thickens the stroke.
**/
@:pythonImport("freestyle.shaders.pyIncreasingThicknessShader") extern class PyIncreasingThicknessShader {
	function shade():Void;
}/**
	Fades from one color to another and back.
**/
@:pythonImport("freestyle.shaders.pyInterpolateColorShader") extern class PyInterpolateColorShader {
	function shade():Void;
}/**
	Stretches the stroke’s backbone proportional to the stroke’s length
	NOTE: you’ll probably want an l somewhere between (0.5 - 0). A value that
	is too high may yield unexpected results.
**/
@:pythonImport("freestyle.shaders.pyLengthDependingBackboneStretcherShader") extern class PyLengthDependingBackboneStretcherShader {
	function shade():Void;
}/**
	Assigns the color of the underlying material to the stroke.
**/
@:pythonImport("freestyle.shaders.pyMaterialColorShader") extern class PyMaterialColorShader {
	function shade():Void;
}/**
	Limits the stroke’s alpha between a min and max value.
**/
@:pythonImport("freestyle.shaders.pyModulateAlphaShader") extern class PyModulateAlphaShader {
	function shade():Void;
}/**
	Assigns thickness to a stroke based on an exponential function.
**/
@:pythonImport("freestyle.shaders.pyNonLinearVaryingThicknessShader") extern class PyNonLinearVaryingThicknessShader {
	function shade():Void;
}/**
	Displaces the stroke using the curvilinear abscissa.  This means
	that lines with the same length and sampling interval will be
	identically distorded.
**/
@:pythonImport("freestyle.shaders.pyPerlinNoise1DShader") extern class PyPerlinNoise1DShader {
	function shade():Void;
}/**
	Displaces the stroke using the strokes coordinates.  This means
	that in a scene no strokes will be distorded identically.
	
	More information on the noise shaders can be found at:
	freestyleintegration.wordpress.com/2011/09/25/development-updates-on-september-25/
**/
@:pythonImport("freestyle.shaders.pyPerlinNoise2DShader") extern class PyPerlinNoise2DShader {
	function shade():Void;
}/**
	Assigns a color to the stroke based on given seed.
**/
@:pythonImport("freestyle.shaders.pyRandomColorShader") extern class PyRandomColorShader {
	function shade():Void;
}/**
	Assigns thickness to a stroke based on spherical linear interpolation.
**/
@:pythonImport("freestyle.shaders.pySLERPThicknessShader") extern class PySLERPThicknessShader {
	function shade():Void;
}/**
	Resamples the stroke, which gives the stroke the amount of
	vertices specified.
**/
@:pythonImport("freestyle.shaders.pySamplingShader") extern class PySamplingShader {
	function shade():Void;
}/**
	Displaces the stroke in the shape of a sine wave.
**/
@:pythonImport("freestyle.shaders.pySinusDisplacementShader") extern class PySinusDisplacementShader {
	function shade():Void;
}/**
	Removes t-vertices from the stroke.
**/
@:pythonImport("freestyle.shaders.pyTVertexRemoverShader") extern class PyTVertexRemoverShader {
	function shade():Void;
}/**
	Thickens TVertices (visual intersections between two edges).
**/
@:pythonImport("freestyle.shaders.pyTVertexThickenerShader") extern class PyTVertexThickenerShader {
	function shade():Void;
}/**
	Assigns a grayscale value that increases for every vertex.
	The brightness will increase along the stroke.
**/
@:pythonImport("freestyle.shaders.pyTimeColorShader") extern class PyTimeColorShader {
	function shade():Void;
}/**
	Removes the tips of the stroke.
	
	Undocumented
**/
@:pythonImport("freestyle.shaders.pyTipRemoverShader") extern class PyTipRemoverShader {
	function shade():Void;
}/**
	Assigns thickness based on an object’s local Z depth (point
	closest to camera is 1, point furthest from camera is zero).
**/
@:pythonImport("freestyle.shaders.pyZDependingThicknessShader") extern class PyZDependingThicknessShader {
	function shade():Void;
}