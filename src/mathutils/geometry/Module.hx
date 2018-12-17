package mathutils.geometry;
/**
	Geometry Utilities (mathutils.geometry)
	
	The Blender geometry module
**/
@:pythonImport("mathutils.geometry") extern class Module {
	/**
		Returns the area size of the 2D or 3D triangle defined.
		@param pyv1 Point1 — mathutils.Vector
		@param pyv2 Point2 — mathutils.Vector
		@param pyv3 Point3 — mathutils.Vector
		
		@returns float
	**/
	static function area_tri(pyv1:Dynamic, pyv2:Dynamic, pyv3:Dynamic):Float;
	/**
		Return a transformed point, the transformation is defined by 2 triangles.
		@param point The point to transform. — mathutils.Vector
		@param pytri_a1 source triangle vertex. — mathutils.Vector
		@param pytri_a2 source triangle vertex. — mathutils.Vector
		@param pytri_a3 source triangle vertex. — mathutils.Vector
		@param pytri_b1 target triangle vertex. — mathutils.Vector
		@param pytri_b2 target triangle vertex. — mathutils.Vector
		@param pytri_b3 target triangle vertex. — mathutils.Vector
		
		@returns mathutils.Vector’s
	**/
	static function barycentric_transform(point:Dynamic, pytri_a1:Dynamic, pytri_a2:Dynamic, pytri_a3:Dynamic, pytri_b1:Dynamic, pytri_b2:Dynamic, pytri_b3:Dynamic):mathutils.vector.Vector;
	/**
		Returns an angle that best fits the points to an axis aligned rectangle
		@param points list of 2d points. — list
		
		@returns float
	**/
	static function pybox_fit_2d(points:Array<Dynamic>):Float;
	/**
		Returns the normal of the 3D tri or quad.
		@param boxes list of boxes, each box is a list where the first 4 items are [x, y, width, height, …] other items are ignored. — list
		
		@returns tuple, pair of floats
	**/
	static function pybox_pack_2d(boxes:Array<Dynamic>):Dynamic;
	/**
		Returns a list of indices into the list given
		@param points list of 2d points. — list
		
		@returns list of ints
	**/
	static function pyconvex_hull_2d(points:Array<Dynamic>):Array<Dynamic>;
	/**
		Returns the signed distance between a point and a plane    (negative when below the normal).
		@param pt Point — mathutils.Vector
		@param plane_co A point on the plane — mathutils.Vector
		@param plane_no The direction the plane is facing — mathutils.Vector
		
		@returns float
	**/
	static function distance_point_to_plane(pt:Dynamic, plane_co:Dynamic, plane_no:Dynamic):Float;
	/**
		Interpolate a bezier spline segment.
		@param pyknot1 First bezier spline point. — mathutils.Vector
		@param pyhandle1 First bezier spline handle. — mathutils.Vector
		@param pyhandle2 Second bezier spline handle. — mathutils.Vector
		@param pyknot2 Second bezier spline point. — mathutils.Vector
		@param resolution Number of points to return. — int
		
		@returns list of mathutils.Vector’s
	**/
	static function interpolate_bezier(pyknot1:Dynamic, pyhandle1:Dynamic, pyhandle2:Dynamic, pyknot2:Dynamic, resolution:Int):mathutils.vector.Vector;
	/**
		Returns a tuple with the points on each line respectively closest to the other.
		@param pyv1 First point of the first line — mathutils.Vector
		@param pyv2 Second point of the first line — mathutils.Vector
		@param pyv3 First point of the second line — mathutils.Vector
		@param pyv4 Second point of the second line — mathutils.Vector
		
		@returns tuple of mathutils.Vector’s
	**/
	static function intersect_line_line(pyv1:Dynamic, pyv2:Dynamic, pyv3:Dynamic, pyv4:Dynamic):mathutils.vector.Vector;
	/**
		Takes 2 segments (defined by 4 vectors) and returns a vector for their point of intersection or None.
		@param pylineA_p1 First point of the first line — mathutils.Vector
		@param pylineA_p2 Second point of the first line — mathutils.Vector
		@param pylineB_p1 First point of the second line — mathutils.Vector
		@param pylineB_p2 Second point of the second line — mathutils.Vector
		
		@returns mathutils.Vector or None
	**/
	static function pyintersect_line_line_2d(pylineA_p1:Dynamic, pylineA_p2:Dynamic, pylineB_p1:Dynamic, pylineB_p2:Dynamic):mathutils.vector.Vector;
	/**
		Calculate the intersection between a line (as 2 vectors) and a plane.
		Returns a vector for the intersection or None.
		@param line_a First point of the first line — mathutils.Vector
		@param line_b Second point of the first line — mathutils.Vector
		@param plane_co A point on the plane — mathutils.Vector
		@param plane_no The direction the plane is facing — mathutils.Vector
		
		@returns mathutils.Vector or None
	**/
	static function intersect_line_plane(line_a:Dynamic, line_b:Dynamic, plane_co:Dynamic, plane_no:Dynamic):mathutils.vector.Vector;
	/**
		Takes a line (as 2 points) and a sphere (as a point and a radius) and
		returns the intersection
		@param line_a First point of the line — mathutils.Vector
		@param line_b Second point of the line — mathutils.Vector
		@param sphere_co The center of the sphere — mathutils.Vector
		@param sphere_radius Radius of the sphere — sphere_radius
		
		@returns A tuple pair containing mathutils.Vector or None
	**/
	static function intersect_line_sphere(line_a:Dynamic, line_b:Dynamic, sphere_co:Dynamic, sphere_radius:Dynamic):mathutils.vector.Vector;
	/**
		Takes a line (as 2 points) and a sphere (as a point and a radius) and
		returns the intersection
		@param line_a First point of the line — mathutils.Vector
		@param line_b Second point of the line — mathutils.Vector
		@param sphere_co The center of the sphere — mathutils.Vector
		@param sphere_radius Radius of the sphere — sphere_radius
		
		@returns A tuple pair containing mathutils.Vector or None
	**/
	static function pyintersect_line_sphere_2d(line_a:Dynamic, line_b:Dynamic, sphere_co:Dynamic, sphere_radius:Dynamic):mathutils.vector.Vector;
	/**
		Return the intersection between two planes
		@param plane_a_co Point on the first plane — mathutils.Vector
		@param plane_a_no Normal of the first plane — mathutils.Vector
		@param plane_b_co Point on the second plane — mathutils.Vector
		@param plane_b_no Normal of the second plane — mathutils.Vector
		
		@returns tuple pair of mathutils.Vector or None if the intersection can’t be calculated
	**/
	static function intersect_plane_plane(plane_a_co:Dynamic, plane_a_no:Dynamic, plane_b_co:Dynamic, plane_b_no:Dynamic):mathutils.vector.Vector;
	/**
		Takes a point and a line and returns a tuple with the closest point on the line and its distance from the first point of the line as a percentage of the length of the line.
		@param pt Point — mathutils.Vector
		@param pyline_p1 First point of the line — mathutils.Vector
		@param pyline_p1 Second point of the line — 
		
		@returns (mathutils.Vector, float)
	**/
	static function intersect_point_line(pt:Dynamic, pyline_p1:Dynamic, pyline_p1:Dynamic):mathutils.vector.Vector;
	/**
		Takes 5 vectors (using only the x and y coordinates): one is the point and the next 4 define the quad,
		only the x and y are used from the vectors. Returns 1 if the point is within the quad, otherwise 0.
		Works only with convex quads without singular edges.
		@param pt Point — mathutils.Vector
		@param pyquad_p1 First point of the quad — mathutils.Vector
		@param pyquad_p2 Second point of the quad — mathutils.Vector
		@param pyquad_p3 Third point of the quad — mathutils.Vector
		@param pyquad_p4 Fourth point of the quad — mathutils.Vector
		
		@returns int
	**/
	static function pyintersect_point_quad_2d(pt:Dynamic, pyquad_p1:Dynamic, pyquad_p2:Dynamic, pyquad_p3:Dynamic, pyquad_p4:Dynamic):Int;
	/**
		Takes 4 vectors: one is the point and the next 3 define the triangle.
		@param pt Point — mathutils.Vector
		@param pytri_p1 First point of the triangle — mathutils.Vector
		@param pytri_p2 Second point of the triangle — mathutils.Vector
		@param pytri_p3 Third point of the triangle — mathutils.Vector
		
		@returns mathutils.Vector or None
	**/
	static function intersect_point_tri(pt:Dynamic, pytri_p1:Dynamic, pytri_p2:Dynamic, pytri_p3:Dynamic):mathutils.vector.Vector;
	/**
		Takes 4 vectors (using only the x and y coordinates): one is the point and the next 3 define the triangle. Returns 1 if the point is within the triangle, otherwise 0.
		@param pt Point — mathutils.Vector
		@param pytri_p1 First point of the triangle — mathutils.Vector
		@param pytri_p2 Second point of the triangle — mathutils.Vector
		@param pytri_p3 Third point of the triangle — mathutils.Vector
		
		@returns int
	**/
	static function pyintersect_point_tri_2d(pt:Dynamic, pytri_p1:Dynamic, pytri_p2:Dynamic, pytri_p3:Dynamic):Int;
	/**
		Returns the intersection between a ray and a triangle, if possible, returns None otherwise.
		@param pyv1 Point1 — mathutils.Vector
		@param pyv2 Point2 — mathutils.Vector
		@param pyv3 Point3 — mathutils.Vector
		@param ray Direction of the projection — mathutils.Vector
		@param orig Origin — mathutils.Vector
		@param clip When False, don’t restrict the intersection to the area of the triangle, use the infinite plane defined by the triangle. — boolean
		
		@returns mathutils.Vector or None
	**/
	static function intersect_ray_tri(pyv1:Dynamic, pyv2:Dynamic, pyv3:Dynamic, ray:Dynamic, orig:Dynamic, clip:Bool):mathutils.vector.Vector;
	/**
		Returns 2 points on between intersecting circles.
		@param p_a Center of the first circle — mathutils.Vector
		@param radius_a Radius of the first circle — float
		@param p_b Center of the second circle — mathutils.Vector
		@param radius_b Radius of the second circle — float
		
		@returns tuple of mathutils.Vector’s or None when there is no intersection
	**/
	static function pyintersect_sphere_sphere_2d(p_a:Dynamic, radius_a:Float, p_b:Dynamic, radius_b:Float):mathutils.vector.Vector;
	/**
		Returns the normal of a 3D polygon.
		@param vectors Vectors to calculate normals with — sequence of 3 or more 3d vector
		
		@returns mathutils.Vector
	**/
	static function normal(vectors:Dynamic):mathutils.vector.Vector;
	/**
		Returns a list of points inside all planes given and a list of index values for the planes used.
		@param planes List of planes (4D vectors). — list of mathutils.Vector
		
		@returns pair of lists
	**/
	static function points_in_planes(planes:Array<Dynamic>):Dynamic;
	/**
		Takes a list of polylines (each point a vector) and returns the point indices for a polyline filled with triangles.
		@param veclist_list list of polylines — 
		
		@returns list
	**/
	static function tessellate_polygon(veclist_list:Dynamic):Array<Dynamic>;
	/**
		Return the volume formed by a tetrahedron (points can be in any order).
		@param pyv1 Point1 — mathutils.Vector
		@param pyv2 Point2 — mathutils.Vector
		@param pyv3 Point3 — mathutils.Vector
		@param pyv4 Point4 — mathutils.Vector
		
		@returns float
	**/
	static function volume_tetrahedron(pyv1:Dynamic, pyv2:Dynamic, pyv3:Dynamic, pyv4:Dynamic):Float;
}