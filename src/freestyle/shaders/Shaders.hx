package freestyle.shaders;
/**
	Class hierarchy: freestyle.types.StrokeShader &gt; BackboneStretcherShader
	
	[Geometry shader]
**/
@:native("freestyle.shaders.BackboneStretcherShader") extern class BackboneStretcherShader {
	/**
		Builds a BackboneStretcherShader object.
		@param amount The stretching amount value. — float
	**/
	function __init__(amount:Float):Void;
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
@:native("freestyle.shaders.BezierCurveShader") extern class BezierCurveShader {
	/**
		Builds a BezierCurveShader object.
		@param error The error we’re allowing for the approximation.  This
		                                        error is the max distance allowed between the new curve and the
		                                        original geometry. — float
	**/
	function __init__(error:Float):Void;
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
@:native("freestyle.shaders.BlenderTextureShader") extern class BlenderTextureShader {
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
@:native("freestyle.shaders.CalligraphicShader") extern class CalligraphicShader {
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
	function __init__(thickness_min:Float, thickness_max:Float, orientation:Dynamic, clamp:Dynamic):Void;
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
@:native("freestyle.shaders.ColorNoiseShader") extern class ColorNoiseShader {
	/**
		Builds a ColorNoiseShader object.
		@param amplitude The amplitude of the noise signal. — float
		@param period The period of the noise signal. — float
	**/
	function __init__(amplitude:Float, period:Float):Void;
	/**
		Shader to add noise to the stroke colors.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; ConstantColorShader
	
	[Color shader]
**/
@:native("freestyle.shaders.ConstantColorShader") extern class ConstantColorShader {
	/**
		Builds a ConstantColorShader object.
		@param red The red component. — float
		@param green The green component. — float
		@param blue The blue component. — float
		@param alpha The alpha value. — float
	**/
	function __init__(red:Float, green:Float, blue:Float, alpha:Float):Void;
	/**
		Assigns a constant color to every vertex of the Stroke.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; ConstantThicknessShader
	
	[Thickness shader]
**/
@:native("freestyle.shaders.ConstantThicknessShader") extern class ConstantThicknessShader {
	/**
		Builds a ConstantThicknessShader object.
		@param thickness The thickness that must be assigned to the stroke. — float
	**/
	function __init__(thickness:Float):Void;
	/**
		Assigns an absolute constant thickness to every vertex of the Stroke.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; ConstrainedIncreasingThicknessShader
	
	[Thickness shader]
**/
@:native("freestyle.shaders.ConstrainedIncreasingThicknessShader") extern class ConstrainedIncreasingThicknessShader {
	/**
		Builds a ConstrainedIncreasingThicknessShader object.
		@param thickness_min The minimum thickness. — float
		@param thickness_max The maximum thickness. — float
		@param ratio The thickness/length ratio that we don’t want to exceed. — float
	**/
	function __init__(thickness_min:Float, thickness_max:Float, ratio:Float):Void;
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
@:native("freestyle.shaders.GuidingLinesShader") extern class GuidingLinesShader {
	/**
		Builds a GuidingLinesShader object.
		@param offset The line that replaces the stroke is initially in the
		                                        middle of the initial stroke bounding box.  offset is the value
		                                        of the displacement which is applied to this line along its
		                                        normal. — float
	**/
	function __init__(offset:Float):Void;
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
@:native("freestyle.shaders.IncreasingColorShader") extern class IncreasingColorShader {
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
	function __init__(red_min:Float, green_min:Float, blue_min:Float, alpha_min:Float, red_max:Float, green_max:Float, blue_max:Float, alpha_max:Float):Void;
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
@:native("freestyle.shaders.IncreasingThicknessShader") extern class IncreasingThicknessShader {
	/**
		Builds an IncreasingThicknessShader object.
		@param thickness_A The first thickness value. — float
		@param thickness_B The second thickness value. — float
	**/
	function __init__(thickness_A:Float, thickness_B:Float):Void;
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
@:native("freestyle.shaders.PolygonalizationShader") extern class PolygonalizationShader {
	/**
		Builds a PolygonalizationShader object.
		@param error The error we want our polygonal approximation to have
		                                        with respect to the original geometry.  The smaller, the closer
		                                        the new stroke is to the orinal one.  This error corresponds to
		                                        the maximum distance between the new stroke and the old one. — float
	**/
	function __init__(error:Float):Void;
	/**
		Modifies the Stroke geometry so that it looks more “polygonal”.
		The basic idea is to start from the minimal stroke approximation
		consisting in a line joining the first vertex to the last one and
		to subdivide using the original stroke vertices until a certain
		error is reached.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}@:native("freestyle.shaders.RoundCapShader") extern class RoundCapShader {
	function round_cap_thickness(x:Dynamic):Void;
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; SamplingShader
	
	[Geometry shader]
**/
@:native("freestyle.shaders.SamplingShader") extern class SamplingShader {
	/**
		Builds a SamplingShader object.
		@param sampling The sampling to use for the stroke resampling. — float
	**/
	function __init__(sampling:Float):Void;
	/**
		Resamples the stroke.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; SmoothingShader
	
	[Geometry shader]
**/
@:native("freestyle.shaders.SmoothingShader") extern class SmoothingShader {
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
	function py__init__(num_iterations=100,factor_point=0.1,(num_iterations:Int, factor_point:Float, factor_curvature:Float, factor_curvature_difference:Float, aniso_point:Float, aniso_normal:Float, aniso_curvature:Float, carricature_factor:Float):Void;
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
@:native("freestyle.shaders.SpatialNoiseShader") extern class SpatialNoiseShader {
	/**
		Builds a SpatialNoiseShader object.
		@param amount The amplitude of the noise. — float
		@param scale The noise frequency. — float
		@param num_octaves The number of octaves — int
		@param smooth True if you want the noise to be smooth. — bool
		@param pure_random True if you don’t want any coherence. — bool
	**/
	function __init__(amount:Float, scale:Float, num_octaves:Int, smooth:Dynamic, pure_random:Dynamic):Void;
	/**
		Spatial Noise stroke shader.  Moves the vertices to make the stroke
		more noisy.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}@:native("freestyle.shaders.SquareCapShader") extern class SquareCapShader {
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; StrokeTextureStepShader
	
	[Texture shader]
**/
@:native("freestyle.shaders.StrokeTextureStepShader") extern class StrokeTextureStepShader {
	/**
		Builds a StrokeTextureStepShader object.
		@param step The spacing along the stroke. — float
	**/
	function __init__(step:Float):Void;
	/**
		Assigns a spacing factor to the texture coordinates of the Stroke.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; ThicknessNoiseShader
	
	[Thickness shader]
**/
@:native("freestyle.shaders.ThicknessNoiseShader") extern class ThicknessNoiseShader {
	/**
		Builds a ThicknessNoiseShader object.
		@param amplitude The amplitude of the noise signal. — float
		@param period The period of the noise signal. — float
	**/
	function __init__(amplitude:Float, period:Float):Void;
	/**
		Adds some noise to the stroke thickness.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Class hierarchy: freestyle.types.StrokeShader &gt; TipRemoverShader
	
	[Geometry shader]
**/
@:native("freestyle.shaders.TipRemoverShader") extern class TipRemoverShader {
	/**
		Builds a TipRemoverShader object.
		@param tip_length The length of the piece of stroke we want to remove
		                                        at each extremity. — float
	**/
	function __init__(tip_length:Float):Void;
	/**
		Removes the stroke’s extremities.
		@param stroke A Stroke object. — freestyle.types.Stroke
	**/
	function shade(stroke:Dynamic):Void;
}/**
	Assigns a color (grayscale) to the stroke based on the curvature.
	A higher curvature will yield a brighter color.
**/
@:native("freestyle.shaders.py2DCurvatureColorShader") extern class Py2DCurvatureColorShader {
	function shade(stroke:Dynamic):Void;
}/**
	Stretches the stroke’s backbone, excluding cusp vertices (end junctions).
**/
@:native("freestyle.shaders.pyBackboneStretcherNoCuspShader") extern class PyBackboneStretcherNoCuspShader {
	function shade(stroke:Dynamic):Void;
}/**
	Stretches the stroke’s backbone by a given length (in pixels).
**/
@:native("freestyle.shaders.pyBackboneStretcherShader") extern class PyBackboneStretcherShader {
	function shade(stroke:Dynamic):Void;
}/**
	Draws the silhouette of the object as a circle.
**/
@:native("freestyle.shaders.pyBluePrintCirclesShader") extern class PyBluePrintCirclesShader {
	function shade(stroke:Dynamic):Void;
}/**
	Replaces the stroke with a directed square.
**/
@:native("freestyle.shaders.pyBluePrintDirectedSquaresShader") extern class PyBluePrintDirectedSquaresShader {
	function shade(stroke:Dynamic):Void;
}@:native("freestyle.shaders.pyBluePrintEllipsesShader") extern class PyBluePrintEllipsesShader {
	function shade(stroke:Dynamic):Void;
}@:native("freestyle.shaders.pyBluePrintSquaresShader") extern class PyBluePrintSquaresShader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns a constant color to the stroke.
**/
@:native("freestyle.shaders.pyConstantColorShader") extern class PyConstantColorShader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns a constant thickness along the stroke.
**/
@:native("freestyle.shaders.pyConstantThicknessShader") extern class PyConstantThicknessShader {
	function shade(stroke:Dynamic):Void;
}/**
	Increasingly thickens the stroke, constrained by a ratio of the
	stroke’s length.
**/
@:native("freestyle.shaders.pyConstrainedIncreasingThicknessShader") extern class PyConstrainedIncreasingThicknessShader {
	function shade(stroke:Dynamic):Void;
}/**
	Inverse of pyIncreasingThicknessShader, decreasingly thickens the stroke.
**/
@:native("freestyle.shaders.pyDecreasingThicknessShader") extern class PyDecreasingThicknessShader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns a thickness to the stroke based on the stroke’s distance
	to the camera (Z-value).
**/
@:native("freestyle.shaders.pyDepthDiscontinuityThicknessShader") extern class PyDepthDiscontinuityThicknessShader {
	function shade(stroke:Dynamic):Void;
}/**
	Iteratively adds an offset to the position of each stroke vertex
	in the direction perpendicular to the stroke direction at the
	point. The offset is scaled by the 2D curvature (i.e. how quickly
	the stroke curve is) at the point.
**/
@:native("freestyle.shaders.pyDiffusion2Shader") extern class PyDiffusion2Shader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns thickness to a stroke based on the density of the diffuse map.
**/
@:native("freestyle.shaders.pyFXSVaryingThicknessWithDensityShader") extern class PyFXSVaryingThicknessWithDensityShader {
	function shade(stroke:Dynamic):Void;
}@:native("freestyle.shaders.pyGuidingLineShader") extern class PyGuidingLineShader {
	function shade(stroke:Dynamic):Void;
}/**
	Controls visibility based upon the quantitative invisibility (QI)
	based on hidden line removal (HLR).
**/
@:native("freestyle.shaders.pyHLRShader") extern class PyHLRShader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns thickness based on distance to a given point in 2D space.
	the thickness is inverted, so the vertices closest to the
	specified point have the lowest thickness.
**/
@:native("freestyle.shaders.pyImportance2DThicknessShader") extern class PyImportance2DThicknessShader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns thickness based on distance to a given point in 3D space.
**/
@:native("freestyle.shaders.pyImportance3DThicknessShader") extern class PyImportance3DThicknessShader {
	function shade(stroke:Dynamic):Void;
}/**
	Fades from one color to another along the stroke.
**/
@:native("freestyle.shaders.pyIncreasingColorShader") extern class PyIncreasingColorShader {
	function shade(stroke:Dynamic):Void;
}/**
	Increasingly thickens the stroke.
**/
@:native("freestyle.shaders.pyIncreasingThicknessShader") extern class PyIncreasingThicknessShader {
	function shade(stroke:Dynamic):Void;
}/**
	Fades from one color to another and back.
**/
@:native("freestyle.shaders.pyInterpolateColorShader") extern class PyInterpolateColorShader {
	function shade(stroke:Dynamic):Void;
}/**
	Stretches the stroke’s backbone proportional to the stroke’s length
	NOTE: you’ll probably want an l somewhere between (0.5 - 0). A value that
	is too high may yield unexpected results.
**/
@:native("freestyle.shaders.pyLengthDependingBackboneStretcherShader") extern class PyLengthDependingBackboneStretcherShader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns the color of the underlying material to the stroke.
**/
@:native("freestyle.shaders.pyMaterialColorShader") extern class PyMaterialColorShader {
	function shade(stroke:Dynamic):Void;
}/**
	Limits the stroke’s alpha between a min and max value.
**/
@:native("freestyle.shaders.pyModulateAlphaShader") extern class PyModulateAlphaShader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns thickness to a stroke based on an exponential function.
**/
@:native("freestyle.shaders.pyNonLinearVaryingThicknessShader") extern class PyNonLinearVaryingThicknessShader {
	function shade(stroke:Dynamic):Void;
}/**
	Displaces the stroke using the curvilinear abscissa.  This means
	that lines with the same length and sampling interval will be
	identically distorded.
**/
@:native("freestyle.shaders.pyPerlinNoise1DShader") extern class PyPerlinNoise1DShader {
	function shade(stroke:Dynamic):Void;
}/**
	Displaces the stroke using the strokes coordinates.  This means
	that in a scene no strokes will be distorded identically.
	
	More information on the noise shaders can be found at:
	freestyleintegration.wordpress.com/2011/09/25/development-updates-on-september-25/
**/
@:native("freestyle.shaders.pyPerlinNoise2DShader") extern class PyPerlinNoise2DShader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns a color to the stroke based on given seed.
**/
@:native("freestyle.shaders.pyRandomColorShader") extern class PyRandomColorShader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns thickness to a stroke based on spherical linear interpolation.
**/
@:native("freestyle.shaders.pySLERPThicknessShader") extern class PySLERPThicknessShader {
	function shade(stroke:Dynamic):Void;
}/**
	Resamples the stroke, which gives the stroke the amount of
	vertices specified.
**/
@:native("freestyle.shaders.pySamplingShader") extern class PySamplingShader {
	function shade(stroke:Dynamic):Void;
}/**
	Displaces the stroke in the shape of a sine wave.
**/
@:native("freestyle.shaders.pySinusDisplacementShader") extern class PySinusDisplacementShader {
	function shade(stroke:Dynamic):Void;
}/**
	Removes t-vertices from the stroke.
**/
@:native("freestyle.shaders.pyTVertexRemoverShader") extern class PyTVertexRemoverShader {
	function shade(stroke:Dynamic):Void;
}/**
	Thickens TVertices (visual intersections between two edges).
**/
@:native("freestyle.shaders.pyTVertexThickenerShader") extern class PyTVertexThickenerShader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns a grayscale value that increases for every vertex.
	The brightness will increase along the stroke.
**/
@:native("freestyle.shaders.pyTimeColorShader") extern class PyTimeColorShader {
	function shade(stroke:Dynamic):Void;
}/**
	Removes the tips of the stroke.
	
	Undocumented
**/
@:native("freestyle.shaders.pyTipRemoverShader") extern class PyTipRemoverShader {
	function shade(stroke:Dynamic):Void;
}/**
	Assigns thickness based on an object’s local Z depth (point
	closest to camera is 1, point furthest from camera is zero).
**/
@:native("freestyle.shaders.pyZDependingThicknessShader") extern class PyZDependingThicknessShader {
	function shade(stroke:Dynamic):Void;
}