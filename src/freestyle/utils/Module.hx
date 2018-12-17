package freestyle.utils;
/**
	Freestyle Utilities (freestyle.utils)
	
	This module contains helper functions used for Freestyle style module
	            writing.
**/
@:pythonImport("freestyle.utils") extern class Module {
	/**
		Returns the current scene.
		
		@returns bpy.types.Scene
	**/
	static function getCurrentScene():bpy.types.scene.Scene;
	/**
		Returns a single value from a set of values evaluated at each 0D
		element of this 1D element.
		@param func The UnaryFunction0D used to compute a value at each
		                                        Interface0D. — UnaryFunction0D
		@param it The Interface0DIterator used to iterate over the 0D
		                                        elements of this 1D element. The integration will occur over
		                                        the 0D elements starting from the one pointed by it. — Interface0DIterator
		@param it_end The Interface0DIterator pointing the end of the 0D
		                                        elements of the 1D element. — Interface0DIterator
		@param integration_type The integration method used to compute a
		                                        single value from a set of values. — IntegrationType
		
		@returns int or float
	**/
	static function integrate(func:Dynamic, it:Dynamic, it_end:Dynamic, integration_type:Dynamic):Int;
	/**
		unsigned angle between a Point’s normal and the X axis, in radians
	**/
	static function angle_x_normal(pyit:Interface0DIterator:Dynamic):Void;
	static function bound(lower:Dynamic, x:Dynamic, higher:Dynamic):Void;
	/**
		Returns the maximum and minimum coordinates (the bounding box) of the stroke’s vertices
	**/
	static function bounding_box(stroke:Dynamic):Void;
	static function curvature_from_stroke_vertex(svert:Dynamic):Void;
	/**
		Finds the matching vertex, or returns None.
	**/
	static function find_matching_vertex(id:Dynamic, it:Dynamic):Void;
	/**
		Returns the 2d length of a given ViewEdge.
	**/
	static function get_chain_length(ve:Dynamic, orientation:Dynamic):Void;
	/**
		Returns the name of the object that this stroke is drawn on.
	**/
	static function get_object_name(stroke:Dynamic):Void;
	/**
		Get all strokes that are currently available
	**/
	static function get_strokes():Void;
	/**
		Returns a static stroke object for testing
	**/
	static function get_test_stroke():Void;
	/**
		True if the stroke is orientated in a clockwise way, False otherwise
	**/
	static function is_poly_clockwise(stroke:Dynamic):Void;
	/**
		Yields the absolute distance along the stroke up to the current vertex.
	**/
	static function iter_distance_along_stroke(stroke:Dynamic):Void;
	/**
		Yields the distance to the camera relative to the maximum
		possible distance for every stroke vertex, constrained by
		given minimum and maximum values.
	**/
	static function iter_distance_from_camera(stroke:Dynamic, range_min:Dynamic, range_max:Dynamic, normfac:Dynamic):Void;
	/**
		yields the distance to the given object relative to the maximum
		possible distance for every stroke vertex, constrained by
		given minimum and maximum values.
	**/
	static function iter_distance_from_object(stroke:Dynamic, location:Dynamic, range_min:Dynamic, range_max:Dynamic, normfac:Dynamic):Void;
	/**
		Yields a specific material attribute from the vertex’ underlying material.
	**/
	static function iter_material_value(stroke:Dynamic, func:Dynamic, attribute:Dynamic):Void;
	/**
		Yields the progress along the stroke.
	**/
	static function pyiter_t2d_along_stroke(stroke:Dynamic):Void;
	/**
		get the diffuse rgba color from an FEdge
	**/
	static function material_from_fedge(fe:Dynamic):Void;
	static function pynormal_at_I0D(pyit:Interface0DIterator:Dynamic):Void;
	/**
		Yields a tuple containing the previous and current object
	**/
	static function pairwise(iterable:Dynamic, types:Dynamic, <class'Stroke'>}:Dynamic):Void;
	/**
		Method to convert rgb to a bw intensity value.
	**/
	static function rgb_to_bw(r:Dynamic, g:Dynamic, b:Dynamic):Void;
	/**
		Simplifies a set of points
	**/
	static function simplify(points:Dynamic, tolerance:Dynamic):Void;
	/**
		Compute the 2D curvature at the stroke vertex pointed by the iterator ‘it’.
		K = 1 / R
		where R is the radius of the circle going through the current vertex and its neighbors
	**/
	static function stroke_curvature(it:Dynamic):Void;
	/**
		Compute the 2D normal at the stroke vertex pointed by the iterator
		‘it’.  It is noted that Normal2DF0D computes normals based on
		underlying FEdges instead, which is inappropriate for strokes when
		they have already been modified by stroke geometry modifiers.
		
		The returned normals are dynamic: they update when the
		vertex position (and therefore the vertex normal) changes.
		for use in geometry modifiers it is advised to
		cast this generator function to a tuple or list
	**/
	static function stroke_normal(stroke:Dynamic):Void;
	/**
		Yields a tuple containing the current object and its immediate neighbors
	**/
	static function tripplewise(iterable:Dynamic):Void;
}