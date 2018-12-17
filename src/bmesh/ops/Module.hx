package bmesh.ops;
/**
	BMesh Operators (bmesh.ops)
	
	This module gives access to low level bmesh operations.
	
	Most operators take input and return output, they can be chained together
	            to perform useful operations.
**/
@:pythonImport("bmesh.ops") extern class Module {
	/**
		Vertex Smooth.
		
		Smooths vertices by using a basic vertex averaging scheme.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts input vertices — list of (bmesh.types.BMVert)
		@param factor smoothing factor — float
		@param mirror_clip_x set vertices close to the x axis before the operation to 0 — bool
		@param mirror_clip_y set vertices close to the y axis before the operation to 0 — bool
		@param mirror_clip_z set vertices close to the z axis before the operation to 0 — bool
		@param clip_dist clipping threshold for the above three slots — float
		@param use_axis_x smooth vertices along X axis — bool
		@param use_axis_y smooth vertices along Y axis — bool
		@param use_axis_z smooth vertices along Z axis — bool
	**/
	static function smooth_vert(bm:Dynamic, verts:Array<Dynamic>, factor:Float, mirror_clip_x:Dynamic, mirror_clip_y:Dynamic, mirror_clip_z:Dynamic, clip_dist:Float, use_axis_x:Dynamic, use_axis_y:Dynamic, use_axis_z:Dynamic):Void;
	/**
		Vertex Smooth Laplacian.
		
		Smooths vertices by using Laplacian smoothing propose by.
		Desbrun, et al. Implicit Fairing of Irregular Meshes using Diffusion and Curvature Flow.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts input vertices — list of (bmesh.types.BMVert)
		@param lambda_factor lambda param — float
		@param lambda_border lambda param in border — float
		@param use_x Smooth object along X axis — bool
		@param use_y Smooth object along Y axis — bool
		@param use_z Smooth object along Z axis — bool
		@param preserve_volume Apply volume preservation after smooth — bool
	**/
	static function smooth_laplacian_vert(bm:Dynamic, verts:Array<Dynamic>, lambda_factor:Float, lambda_border:Float, use_x:Dynamic, use_y:Dynamic, use_z:Dynamic, preserve_volume:Dynamic):Void;
	/**
		Right-Hand Faces.
		
		Computes an “outside” normal for the specified input faces.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces Undocumented. — list of (bmesh.types.BMFace)
	**/
	static function recalc_face_normals(bm:Dynamic, faces:Array<Dynamic>):Void;
	/**
		Planar Faces.
		
		Iteratively flatten faces.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input geometry. — list of (bmesh.types.BMFace)
		@param iterations Number of times to flatten faces (for when connected faces are used) — int
		@param factor Influence for making planar each iteration — float
		
		@returns dict with string keys
	**/
	static function planar_faces(bm:Dynamic, faces:Array<Dynamic>, iterations:Int, factor:Float):Dynamic;
	/**
		Region Extend.
		
		used to implement the select more/less tools.
		this puts some geometry surrounding regions of
		geometry in geom into geom.out.
		
		if use_faces is 0 then geom.out spits out verts and edges,
		otherwise it spits out faces.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param geom input geometry — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param use_contract find boundary inside the regions, not outside. — bool
		@param use_faces extend from faces instead of edges — bool
		@param use_face_step step over connected faces — bool
		
		@returns dict with string keys
	**/
	static function region_extend(bm:Dynamic, geom:Array<Dynamic>, use_contract:Dynamic, use_faces:Dynamic, use_face_step:Dynamic):Dynamic;
	/**
		Edge Rotate.
		
		Rotates edges topologically.  Also known as “spin edge” to some people.
		Simple example: [/] becomes [|] then [\].
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input edges — list of (bmesh.types.BMEdge)
		@param use_ccw rotate edge counter-clockwise if true, otherwise clockwise — bool
		
		@returns dict with string keys
	**/
	static function rotate_edges(bm:Dynamic, edges:Array<Dynamic>, use_ccw:Dynamic):Dynamic;
	/**
		Reverse Faces.
		
		Reverses the winding (vertex order) of faces.
		This has the effect of flipping the normal.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
		@param flip_multires maintain multi-res offset — bool
	**/
	static function reverse_faces(bm:Dynamic, faces:Array<Dynamic>, flip_multires:Dynamic):Void;
	/**
		Edge Bisect.
		
		Splits input edges (but doesn’t do anything else).
		This creates a 2-valence vert.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input edges — list of (bmesh.types.BMEdge)
		@param cuts number of cuts — int
		@param edge_percents Undocumented. — dict mapping vert/edge/face types to float
		
		@returns dict with string keys
	**/
	static function bisect_edges(bm:Dynamic, edges:Array<Dynamic>, cuts:Int, edge_percents:Dynamic):Dynamic;
	/**
		Mirror.
		
		Mirrors geometry along an axis.  The resulting geometry is welded on using
		merge_dist.  Pairs of original/mirrored vertices are welded using the merge_dist
		parameter (which defines the minimum distance for welding to happen).
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param geom input geometry — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param matrix matrix defining the mirror transformation — mathutils.Matrix
		@param merge_dist maximum distance for merging.  does no merging if 0. — float
		@param axis the axis to use. — enum in ['X', 'Y', 'Z'], default 'X'
		@param mirror_u mirror UVs across the u axis — bool
		@param mirror_v mirror UVs across the v axis — bool
		
		@returns dict with string keys
	**/
	static function mirror(bm:Dynamic, geom:Array<Dynamic>, matrix:Dynamic, merge_dist:Float, axis:bmesh.ops.Ops.Enum1, mirror_u:Dynamic, mirror_v:Dynamic):Dynamic;
	/**
		Find Doubles.
		
		Takes input verts and find vertices they should weld to.
		Outputs a mapping slot suitable for use with the weld verts bmop.
		
		If keep_verts is used, vertices outside that set can only be merged
		with vertices in that set.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts input vertices — list of (bmesh.types.BMVert)
		@param keep_verts list of verts to keep — list of (bmesh.types.BMVert)
		@param dist minimum distance — float
		
		@returns dict with string keys
	**/
	static function find_doubles(bm:Dynamic, verts:Array<Dynamic>, keep_verts:Array<Dynamic>, dist:Float):Dynamic;
	/**
		Remove Doubles.
		
		Finds groups of vertices closer then dist and merges them together,
		using the weld verts bmop.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts input verts — list of (bmesh.types.BMVert)
		@param dist minimum distance — float
	**/
	static function remove_doubles(bm:Dynamic, verts:Array<Dynamic>, dist:Float):Void;
	/**
		Auto Merge.
		
		Finds groups of vertices closer then dist and merges them together,
		using the weld verts bmop.  The merges must go from a vert not in
		verts to one in verts.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts input verts — list of (bmesh.types.BMVert)
		@param dist minimum distance — float
	**/
	static function automerge(bm:Dynamic, verts:Array<Dynamic>, dist:Float):Void;
	/**
		Collapse Connected.
		
		Collapses connected vertices
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input edges — list of (bmesh.types.BMEdge)
		@param uvs also collapse UVs and such — bool
	**/
	static function collapse(bm:Dynamic, edges:Array<Dynamic>, uvs:Dynamic):Void;
	/**
		Face-Data Point Merge.
		
		Merge uv/vcols at a specific vertex.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts input vertices — list of (bmesh.types.BMVert)
		@param vert_snap snap vertex — bmesh.types.BMVert
	**/
	static function pointmerge_facedata(bm:Dynamic, verts:Array<Dynamic>, vert_snap:Dynamic):Void;
	/**
		Average Vertices Facevert Data.
		
		Merge uv/vcols associated with the input vertices at
		the bounding box center. (I know, it’s not averaging but
		the vert_snap_to_bb_center is just too long).
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts input vertices — list of (bmesh.types.BMVert)
	**/
	static function average_vert_facedata(bm:Dynamic, verts:Array<Dynamic>):Void;
	/**
		Point Merge.
		
		Merge verts together at a point.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts input vertices (all verts will be merged into the first). — list of (bmesh.types.BMVert)
		@param merge_co Position to merge at. — mathutils.Vector or any sequence of 3 floats
	**/
	static function pointmerge(bm:Dynamic, verts:Array<Dynamic>, merge_co:Dynamic):Void;
	/**
		Collapse Connected UV’s.
		
		Collapses connected UV vertices.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input edges — list of (bmesh.types.BMEdge)
	**/
	static function collapse_uvs(bm:Dynamic, edges:Array<Dynamic>):Void;
	/**
		Weld Verts.
		
		Welds verts together (kind-of like remove doubles, merge, etc, all of which
		use or will use this bmop).  You pass in mappings from vertices to the vertices
		they weld with.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param targetmap Undocumented. — dict mapping vert/edge/face types to bmesh.types.BMVert/bmesh.types.BMEdge/bmesh.types.BMFace
	**/
	static function weld_verts(bm:Dynamic, targetmap:Dynamic):Void;
	/**
		Make Vertex.
		
		Creates a single vertex; this bmop was necessary
		for click-create-vertex.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param co the coordinate of the new vert — mathutils.Vector or any sequence of 3 floats
		
		@returns dict with string keys
	**/
	static function create_vert(bm:Dynamic, co:Dynamic):Dynamic;
	/**
		Join Triangles.
		
		Tries to intelligently join triangles according
		to angle threshold and delimiters.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input geometry. — list of (bmesh.types.BMFace)
		@param cmp_seam Undocumented. — bool
		@param cmp_sharp Undocumented. — bool
		@param cmp_uvs Undocumented. — bool
		@param cmp_vcols Undocumented. — bool
		@param cmp_materials Undocumented. — bool
		@param angle_face_threshold Undocumented. — float
		@param angle_shape_threshold Undocumented. — float
		
		@returns dict with string keys
	**/
	static function join_triangles(bm:Dynamic, faces:Array<Dynamic>, cmp_seam:Dynamic, cmp_sharp:Dynamic, cmp_uvs:Dynamic, cmp_vcols:Dynamic, cmp_materials:Dynamic, angle_face_threshold:Float, angle_shape_threshold:Float):Dynamic;
	/**
		Contextual Create.
		
		This is basically F-key, it creates
		new faces from vertices, makes stuff from edge nets,
		makes wire edges, etc.  It also dissolves faces.
		
		Three verts become a triangle, four become a quad.  Two
		become a wire edge.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param geom input geometry. — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param mat_nr material to use — int
		@param use_smooth smooth to use — bool
		
		@returns dict with string keys
	**/
	static function contextual_create(bm:Dynamic, geom:Array<Dynamic>, mat_nr:Int, use_smooth:Dynamic):Dynamic;
	/**
		Bridge edge loops with faces.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input edges — list of (bmesh.types.BMEdge)
		@param use_pairs Undocumented. — bool
		@param use_cyclic Undocumented. — bool
		@param use_merge Undocumented. — bool
		@param merge_factor Undocumented. — float
		@param twist_offset Undocumented. — int
		
		@returns dict with string keys
	**/
	static function bridge_loops(bm:Dynamic, edges:Array<Dynamic>, use_pairs:Dynamic, use_cyclic:Dynamic, use_merge:Dynamic, merge_factor:Float, twist_offset:Int):Dynamic;
	/**
		Grid Fill.
		
		Create faces defined by 2 disconnected edge loops (which share edges).
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input edges — list of (bmesh.types.BMEdge)
		@param mat_nr material to use — int
		@param use_smooth smooth state to use — bool
		@param use_interp_simple use simple interpolation — bool
		
		@returns dict with string keys
	**/
	static function grid_fill(bm:Dynamic, edges:Array<Dynamic>, mat_nr:Int, use_smooth:Dynamic, use_interp_simple:Dynamic):Dynamic;
	/**
		Fill Holes.
		
		Fill boundary edges with faces, copying surrounding customdata.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input edges — list of (bmesh.types.BMEdge)
		@param sides number of face sides to fill — int
		
		@returns dict with string keys
	**/
	static function holes_fill(bm:Dynamic, edges:Array<Dynamic>, sides:Int):Dynamic;
	/**
		Face Attribute Fill.
		
		Fill in faces with data from adjacent faces.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
		@param use_normals copy face winding — bool
		@param use_data copy face data — bool
		
		@returns dict with string keys
	**/
	static function face_attribute_fill(bm:Dynamic, faces:Array<Dynamic>, use_normals:Dynamic, use_data:Dynamic):Dynamic;
	/**
		Edge Loop Fill.
		
		Create faces defined by one or more non overlapping edge loops.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input edges — list of (bmesh.types.BMEdge)
		@param mat_nr material to use — int
		@param use_smooth smooth state to use — bool
		
		@returns dict with string keys
	**/
	static function edgeloop_fill(bm:Dynamic, edges:Array<Dynamic>, mat_nr:Int, use_smooth:Dynamic):Dynamic;
	/**
		Edge Net Fill.
		
		Create faces defined by enclosed edges.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input edges — list of (bmesh.types.BMEdge)
		@param mat_nr material to use — int
		@param use_smooth smooth state to use — bool
		@param sides number of sides — int
		
		@returns dict with string keys
	**/
	static function edgenet_fill(bm:Dynamic, edges:Array<Dynamic>, mat_nr:Int, use_smooth:Dynamic, sides:Int):Dynamic;
	/**
		Edgenet Prepare.
		
		Identifies several useful edge loop cases and modifies them so
		they’ll become a face when edgenet_fill is called.  The cases covered are:
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input edges — list of (bmesh.types.BMEdge)
		
		@returns dict with string keys
	**/
	static function edgenet_prepare(bm:Dynamic, edges:Array<Dynamic>):Dynamic;
	/**
		Rotate.
		
		Rotate vertices around a center, using a 3x3 rotation matrix.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param cent center of rotation — mathutils.Vector or any sequence of 3 floats
		@param matrix matrix defining rotation — mathutils.Matrix
		@param verts input vertices — list of (bmesh.types.BMVert)
		@param space matrix to define the space (typically object matrix) — mathutils.Matrix
	**/
	static function rotate(bm:Dynamic, cent:Dynamic, matrix:Dynamic, verts:Array<Dynamic>, space:Dynamic):Void;
	/**
		Translate.
		
		Translate vertices by an offset.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param vec translation offset — mathutils.Vector or any sequence of 3 floats
		@param space matrix to define the space (typically object matrix) — mathutils.Matrix
		@param verts input vertices — list of (bmesh.types.BMVert)
	**/
	static function translate(bm:Dynamic, vec:Dynamic, space:Dynamic, verts:Array<Dynamic>):Void;
	/**
		Scale.
		
		Scales vertices by an offset.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param vec scale factor — mathutils.Vector or any sequence of 3 floats
		@param space matrix to define the space (typically object matrix) — mathutils.Matrix
		@param verts input vertices — list of (bmesh.types.BMVert)
	**/
	static function scale(bm:Dynamic, vec:Dynamic, space:Dynamic, verts:Array<Dynamic>):Void;
	/**
		Transform.
		
		Transforms a set of vertices by a matrix.  Multiplies
		the vertex coordinates with the matrix.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param matrix transform matrix — mathutils.Matrix
		@param space matrix to define the space (typically object matrix) — mathutils.Matrix
		@param verts input vertices — list of (bmesh.types.BMVert)
	**/
	static function transform(bm:Dynamic, matrix:Dynamic, space:Dynamic, verts:Array<Dynamic>):Void;
	/**
		Object Load BMesh.
		
		Loads a bmesh into an object/mesh.  This is a “private”
		bmop.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param scene Undocumented. — bpy.types.Scene
		@param object Undocumented. — bpy.types.Object
	**/
	static function object_load_bmesh(bm:Dynamic, scene:Dynamic, object:Dynamic):Void;
	/**
		BMesh to Mesh.
		
		Converts a bmesh to a Mesh.  This is reserved for exiting editmode.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param mesh Undocumented. — bpy.types.Mesh
		@param object Undocumented. — bpy.types.Object
	**/
	static function bmesh_to_mesh(bm:Dynamic, mesh:Dynamic, object:Dynamic):Void;
	/**
		Mesh to BMesh.
		
		Load the contents of a mesh into the bmesh.  this bmop is private, it’s
		reserved exclusively for entering editmode.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param mesh Undocumented. — bpy.types.Mesh
		@param object Undocumented. — bpy.types.Object
		@param use_shapekey load active shapekey coordinates into verts — bool
	**/
	static function mesh_to_bmesh(bm:Dynamic, mesh:Dynamic, object:Dynamic, use_shapekey:Dynamic):Void;
	/**
		Individual Face Extrude.
		
		Extrudes faces individually.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
		@param use_normal_flip Create faces with reversed direction. — bool
		@param use_select_history pass to duplicate — bool
		
		@returns dict with string keys
	**/
	static function extrude_discrete_faces(bm:Dynamic, faces:Array<Dynamic>, use_normal_flip:Dynamic, use_select_history:Dynamic):Dynamic;
	/**
		Extrude Only Edges.
		
		Extrudes Edges into faces, note that this is very simple, there’s no fancy
		winged extrusion.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input vertices — list of (bmesh.types.BMEdge)
		@param use_normal_flip Create faces with reversed direction. — bool
		@param use_select_history pass to duplicate — bool
		
		@returns dict with string keys
	**/
	static function extrude_edge_only(bm:Dynamic, edges:Array<Dynamic>, use_normal_flip:Dynamic, use_select_history:Dynamic):Dynamic;
	/**
		Individual Vertex Extrude.
		
		Extrudes wire edges from vertices.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts input vertices — list of (bmesh.types.BMVert)
		@param use_select_history pass to duplicate — bool
		
		@returns dict with string keys
	**/
	static function extrude_vert_indiv(bm:Dynamic, verts:Array<Dynamic>, use_select_history:Dynamic):Dynamic;
	/**
		Connect Verts.
		
		Split faces by adding edges that connect verts.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts Undocumented. — list of (bmesh.types.BMVert)
		@param faces_exclude Undocumented. — list of (bmesh.types.BMFace)
		@param check_degenerate prevent splits with overlaps &amp; intersections — bool
		
		@returns dict with string keys
	**/
	static function connect_verts(bm:Dynamic, verts:Array<Dynamic>, faces_exclude:Array<Dynamic>, check_degenerate:Dynamic):Dynamic;
	/**
		Connect Verts to form Convex Faces.
		
		Ensures all faces are convex faces.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces Undocumented. — list of (bmesh.types.BMFace)
		
		@returns dict with string keys
	**/
	static function connect_verts_concave(bm:Dynamic, faces:Array<Dynamic>):Dynamic;
	/**
		Connect Verts Across non Planer Faces.
		
		Split faces by connecting edges along non planer faces.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param angle_limit total rotation angle (radians) — float
		@param faces Undocumented. — list of (bmesh.types.BMFace)
		
		@returns dict with string keys
	**/
	static function connect_verts_nonplanar(bm:Dynamic, angle_limit:Float, faces:Array<Dynamic>):Dynamic;
	/**
		Connect Verts.
		
		Split faces by adding edges that connect verts.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts Undocumented. — list of (bmesh.types.BMVert)
		@param verts_exclude Undocumented. — list of (bmesh.types.BMVert)
		@param faces_exclude Undocumented. — list of (bmesh.types.BMFace)
		
		@returns dict with string keys
	**/
	static function connect_vert_pair(bm:Dynamic, verts:Array<Dynamic>, verts_exclude:Array<Dynamic>, faces_exclude:Array<Dynamic>):Dynamic;
	/**
		Extrude Faces.
		
		Extrude operator (does not transform)
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param geom edges and faces — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param edges_exclude Undocumented. — set of vert/edge/face type
		@param use_keep_orig keep original geometry (requires geom to include edges). — bool
		@param use_normal_flip Create faces with reversed direction. — bool
		@param use_select_history pass to duplicate — bool
		
		@returns dict with string keys
	**/
	static function extrude_face_region(bm:Dynamic, geom:Array<Dynamic>, edges_exclude:Dynamic, use_keep_orig:Dynamic, use_normal_flip:Dynamic, use_select_history:Dynamic):Dynamic;
	/**
		Dissolve Verts.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts Undocumented. — list of (bmesh.types.BMVert)
		@param use_face_split Undocumented. — bool
		@param use_boundary_tear Undocumented. — bool
	**/
	static function dissolve_verts(bm:Dynamic, verts:Array<Dynamic>, use_face_split:Dynamic, use_boundary_tear:Dynamic):Void;
	/**
		Dissolve Edges.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges Undocumented. — list of (bmesh.types.BMEdge)
		@param use_verts dissolve verts left between only 2 edges. — bool
		@param use_face_split Undocumented. — bool
		
		@returns dict with string keys
	**/
	static function dissolve_edges(bm:Dynamic, edges:Array<Dynamic>, use_verts:Dynamic, use_face_split:Dynamic):Dynamic;
	/**
		Dissolve Faces.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces Undocumented. — list of (bmesh.types.BMFace)
		@param use_verts dissolve verts left between only 2 edges. — bool
		
		@returns dict with string keys
	**/
	static function dissolve_faces(bm:Dynamic, faces:Array<Dynamic>, use_verts:Dynamic):Dynamic;
	/**
		Limited Dissolve.
		
		Dissolve planar faces and co-linear edges.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param angle_limit total rotation angle (radians) — float
		@param use_dissolve_boundaries Undocumented. — bool
		@param verts Undocumented. — list of (bmesh.types.BMVert)
		@param edges Undocumented. — list of (bmesh.types.BMEdge)
		@param delimit Undocumented. — set of flags from ['NORMAL', 'MATERIAL', 'SEAM', 'SHARP', 'UV'], default {}
		
		@returns dict with string keys
	**/
	static function dissolve_limit(bm:Dynamic, angle_limit:Float, use_dissolve_boundaries:Dynamic, verts:Array<Dynamic>, edges:Array<Dynamic>, delimit:Dynamic):Dynamic;
	/**
		Degenerate Dissolve.
		
		Dissolve edges with no length, faces with no area.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param dist minimum distance to consider degenerate — float
		@param edges Undocumented. — list of (bmesh.types.BMEdge)
	**/
	static function dissolve_degenerate(bm:Dynamic, dist:Float, edges:Array<Dynamic>):Void;
	/**
		Triangulate.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces Undocumented. — list of (bmesh.types.BMFace)
		@param quad_method Undocumented. — enum in ['BEAUTY', 'FIXED', 'ALTERNATE', 'SHORT_EDGE'], default 'BEAUTY'
		@param ngon_method Undocumented. — enum in ['BEAUTY', 'EAR_CLIP'], default 'BEAUTY'
		
		@returns dict with string keys
	**/
	static function triangulate(bm:Dynamic, faces:Array<Dynamic>, quad_method:bmesh.ops.Ops.Enum2, ngon_method:bmesh.ops.Ops.Enum3):Dynamic;
	/**
		Un-Subdivide.
		
		Reduce detail in geometry containing grids.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param verts input vertices — list of (bmesh.types.BMVert)
		@param iterations Undocumented. — int
	**/
	static function unsubdivide(bm:Dynamic, verts:Array<Dynamic>, iterations:Int):Void;
	/**
		Subdivide Edges.
		
		Advanced operator for subdividing edges
		with options for face patterns, smoothing and randomization.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges Undocumented. — list of (bmesh.types.BMEdge)
		@param smooth Undocumented. — float
		@param smooth_falloff smooth falloff type — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'SHARP', 'LINEAR', 'INVERSE_SQUARE'], default 'SMOOTH'
		@param fractal Undocumented. — float
		@param along_normal Undocumented. — float
		@param cuts Undocumented. — int
		@param seed Undocumented. — int
		@param custom_patterns uses custom pointers — dict mapping vert/edge/face types to unknown internal data, not compatible with python
		@param edge_percents Undocumented. — dict mapping vert/edge/face types to float
		@param quad_corner_type quad corner type — enum in ['STRAIGHT_CUT', 'INNER_VERT', 'PATH', 'FAN'], default 'STRAIGHT_CUT'
		@param use_grid_fill fill in fully-selected faces with a grid — bool
		@param use_single_edge tessellate the case of one edge selected in a quad or triangle — bool
		@param use_only_quads only subdivide quads (for loopcut) — bool
		@param use_sphere for making new primitives only — bool
		@param use_smooth_even maintain even offset when smoothing — bool
		
		@returns dict with string keys
	**/
	static function subdivide_edges(bm:Dynamic, edges:Array<Dynamic>, smooth:Float, smooth_falloff:bmesh.ops.Ops.Enum4, fractal:Float, along_normal:Float, cuts:Int, seed:Int, custom_patterns:Dynamic, edge_percents:Dynamic, quad_corner_type:bmesh.ops.Ops.Enum5, use_grid_fill:Dynamic, use_single_edge:Dynamic, use_only_quads:Dynamic, use_sphere:Dynamic, use_smooth_even:Dynamic):Dynamic;
	/**
		Subdivide Edge-Ring.
		
		Take an edge-ring, and subdivide with interpolation options.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input vertices — list of (bmesh.types.BMEdge)
		@param interp_mode interpolation method — enum in ['LINEAR', 'PATH', 'SURFACE'], default 'LINEAR'
		@param smooth Undocumented. — float
		@param cuts Undocumented. — int
		@param profile_shape profile shape type — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'SHARP', 'LINEAR', 'INVERSE_SQUARE'], default 'SMOOTH'
		@param profile_shape_factor Undocumented. — float
		
		@returns dict with string keys
	**/
	static function subdivide_edgering(bm:Dynamic, edges:Array<Dynamic>, interp_mode:bmesh.ops.Ops.Enum6, smooth:Float, cuts:Int, profile_shape:bmesh.ops.Ops.Enum7, profile_shape_factor:Float):Dynamic;
	/**
		Bisect Plane.
		
		Bisects the mesh by a plane (cut the mesh in half).
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param geom Undocumented. — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param dist minimum distance when testing if a vert is exactly on the plane — float
		@param plane_co point on the plane — mathutils.Vector or any sequence of 3 floats
		@param plane_no direction of the plane — mathutils.Vector or any sequence of 3 floats
		@param use_snap_center snap axis aligned verts to the center — bool
		@param clear_outer when enabled. remove all geometry on the positive side of the plane — bool
		@param clear_inner when enabled. remove all geometry on the negative side of the plane — bool
		
		@returns dict with string keys
	**/
	static function bisect_plane(bm:Dynamic, geom:Array<Dynamic>, dist:Float, plane_co:Dynamic, plane_no:Dynamic, use_snap_center:Dynamic, clear_outer:Dynamic, clear_inner:Dynamic):Dynamic;
	/**
		Delete Geometry.
		
		Utility operator to delete geometry.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param geom Undocumented. — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param context geometry types to delete — enum in ['VERTS', 'EDGES', 'FACES_ONLY', 'EDGES_FACES', 'FACES', 'FACES_KEEP_BOUNDARY', 'TAGGED_ONLY'], default 'VERTS'
	**/
	static function delete(bm:Dynamic, geom:Array<Dynamic>, context:bmesh.ops.Ops.Enum8):Void;
	/**
		Duplicate Geometry.
		
		Utility operator to duplicate geometry,
		optionally into a destination mesh.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param geom Undocumented. — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param dest Undocumented. — bmesh.types.BMesh
		@param use_select_history Undocumented. — bool
		
		@returns dict with string keys
	**/
	static function duplicate(bm:Dynamic, geom:Array<Dynamic>, dest:Dynamic, use_select_history:Dynamic):Dynamic;
	/**
		Split Off Geometry.
		
		Disconnect geometry from adjacent edges and faces,
		optionally into a destination mesh.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param geom Undocumented. — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param dest Undocumented. — bmesh.types.BMesh
		@param use_only_faces when enabled. don’t duplicate loose verts/edges — bool
		
		@returns dict with string keys
	**/
	static function split(bm:Dynamic, geom:Array<Dynamic>, dest:Dynamic, use_only_faces:Dynamic):Dynamic;
	/**
		Spin.
		
		Extrude or duplicate geometry a number of times,
		rotating and possibly translating after each step
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param geom Undocumented. — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param cent rotation center — mathutils.Vector or any sequence of 3 floats
		@param axis rotation axis — mathutils.Vector or any sequence of 3 floats
		@param dvec translation delta per step — mathutils.Vector or any sequence of 3 floats
		@param angle total rotation angle (radians) — float
		@param space matrix to define the space (typically object matrix) — mathutils.Matrix
		@param steps number of steps — int
		@param use_merge Merge first/last when the angle is a full revolution. — bool
		@param use_normal_flip Create faces with reversed direction. — bool
		@param use_duplicate duplicate or extrude? — bool
		
		@returns dict with string keys
	**/
	static function spin(bm:Dynamic, geom:Array<Dynamic>, cent:Dynamic, axis:Dynamic, dvec:Dynamic, angle:Float, space:Dynamic, steps:Int, use_merge:Dynamic, use_normal_flip:Dynamic, use_duplicate:Dynamic):Dynamic;
	/**
		UV Rotation.
		
		Cycle the loop UV’s
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
		@param use_ccw rotate counter-clockwise if true, otherwise clockwise — bool
	**/
	static function rotate_uvs(bm:Dynamic, faces:Array<Dynamic>, use_ccw:Dynamic):Void;
	/**
		UV Reverse.
		
		Reverse the UV’s
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
	**/
	static function reverse_uvs(bm:Dynamic, faces:Array<Dynamic>):Void;
	/**
		Color Rotation.
		
		Cycle the loop colors
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
		@param use_ccw rotate counter-clockwise if true, otherwise clockwise — bool
	**/
	static function rotate_colors(bm:Dynamic, faces:Array<Dynamic>, use_ccw:Dynamic):Void;
	/**
		Color Reverse
		
		Reverse the loop colors.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
	**/
	static function reverse_colors(bm:Dynamic, faces:Array<Dynamic>):Void;
	/**
		Edge Split.
		
		Disconnects faces along input edges.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input edges — list of (bmesh.types.BMEdge)
		@param verts optional tag verts, use to have greater control of splits — list of (bmesh.types.BMVert)
		@param use_verts use ‘verts’ for splitting, else just find verts to split from edges — bool
		
		@returns dict with string keys
	**/
	static function split_edges(bm:Dynamic, edges:Array<Dynamic>, verts:Array<Dynamic>, use_verts:Dynamic):Dynamic;
	/**
		Create Grid.
		
		Creates a grid with a variable number of subdivisions
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param x_segments number of x segments — int
		@param y_segments number of y segments — int
		@param size size of the grid — float
		@param matrix matrix to multiply the new geometry with — mathutils.Matrix
		@param calc_uvs calculate default UVs — bool
		
		@returns dict with string keys
	**/
	static function create_grid(bm:Dynamic, x_segments:Int, y_segments:Int, size:Float, matrix:Dynamic, calc_uvs:Dynamic):Dynamic;
	/**
		Create UV Sphere.
		
		Creates a grid with a variable number of subdivisions
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param u_segments number of u segments — int
		@param v_segments number of v segment — int
		@param diameter diameter — float
		@param matrix matrix to multiply the new geometry with — mathutils.Matrix
		@param calc_uvs calculate default UVs — bool
		
		@returns dict with string keys
	**/
	static function create_uvsphere(bm:Dynamic, u_segments:Int, v_segments:Int, diameter:Float, matrix:Dynamic, calc_uvs:Dynamic):Dynamic;
	/**
		Create Ico-Sphere.
		
		Creates a grid with a variable number of subdivisions
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param subdivisions how many times to recursively subdivide the sphere — int
		@param diameter diameter — float
		@param matrix matrix to multiply the new geometry with — mathutils.Matrix
		@param calc_uvs calculate default UVs — bool
		
		@returns dict with string keys
	**/
	static function create_icosphere(bm:Dynamic, subdivisions:Int, diameter:Float, matrix:Dynamic, calc_uvs:Dynamic):Dynamic;
	/**
		Create Suzanne.
		
		Creates a monkey (standard blender primitive).
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param matrix matrix to multiply the new geometry with — mathutils.Matrix
		@param calc_uvs calculate default UVs — bool
		
		@returns dict with string keys
	**/
	static function create_monkey(bm:Dynamic, matrix:Dynamic, calc_uvs:Dynamic):Dynamic;
	/**
		Create Cone.
		
		Creates a cone with variable depth at both ends
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param cap_ends whether or not to fill in the ends with faces — bool
		@param cap_tris fill ends with triangles instead of ngons — bool
		@param segments Undocumented. — int
		@param pydiameter1 diameter of one end — float
		@param pydiameter2 diameter of the opposite — float
		@param depth distance between ends — float
		@param matrix matrix to multiply the new geometry with — mathutils.Matrix
		@param calc_uvs calculate default UVs — bool
		
		@returns dict with string keys
	**/
	static function create_cone(bm:Dynamic, cap_ends:Dynamic, cap_tris:Dynamic, segments:Int, pydiameter1:Float, pydiameter2:Float, depth:Float, matrix:Dynamic, calc_uvs:Dynamic):Dynamic;
	/**
		Creates a Circle.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param cap_ends whether or not to fill in the ends with faces — bool
		@param cap_tris fill ends with triangles instead of ngons — bool
		@param segments Undocumented. — int
		@param radius Radius of the circle. — float
		@param matrix matrix to multiply the new geometry with — mathutils.Matrix
		@param calc_uvs calculate default UVs — bool
		
		@returns dict with string keys
	**/
	static function create_circle(bm:Dynamic, cap_ends:Dynamic, cap_tris:Dynamic, segments:Int, radius:Float, matrix:Dynamic, calc_uvs:Dynamic):Dynamic;
	/**
		Create Cube
		
		Creates a cube.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param size size of the cube — float
		@param matrix matrix to multiply the new geometry with — mathutils.Matrix
		@param calc_uvs calculate default UVs — bool
		
		@returns dict with string keys
	**/
	static function create_cube(bm:Dynamic, size:Float, matrix:Dynamic, calc_uvs:Dynamic):Dynamic;
	/**
		Bevel.
		
		Bevels edges and vertices
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param geom input edges and vertices — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param offset amount to offset beveled edge — float
		@param offset_type how to measure the offset — enum in ['OFFSET', 'WIDTH', 'DEPTH', 'PERCENT'], default 'OFFSET'
		@param segments number of segments in bevel — int
		@param profile profile shape, 0-&gt;1 (.5=&gt;round) — float
		@param vertex_only only bevel vertices, not edges — bool
		@param clamp_overlap do not allow beveled edges/vertices to overlap each other — bool
		@param material material for bevel faces, -1 means get from adjacent faces — int
		@param loop_slide prefer to slide along edges to having even widths — bool
		@param mark_seam extend edge data to allow seams to run across bevels — bool
		@param mark_sharp extend edge data to allow sharp edges to run across bevels — bool
		@param strength strength of calculated normal in range (0, 1) for custom clnors — float
		@param hnmode harden normals mode used in bevel, if enabled — enum in ['NONE', 'FACE', 'ADJACENT', 'FIXED_NORMAL_SHADING'], default 'NONE'
		
		@returns dict with string keys
	**/
	static function bevel(bm:Dynamic, geom:Array<Dynamic>, offset:Float, offset_type:bmesh.ops.Ops.Enum9, segments:Int, profile:Float, vertex_only:Dynamic, clamp_overlap:Dynamic, material:Int, loop_slide:Dynamic, mark_seam:Dynamic, mark_sharp:Dynamic, strength:Float, hnmode:bmesh.ops.Ops.Enum10):Dynamic;
	/**
		Beautify Fill.
		
		Rotate edges to create more evenly spaced triangles.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
		@param edges edges that can be flipped — list of (bmesh.types.BMEdge)
		@param use_restrict_tag restrict edge rotation to mixed tagged vertices — bool
		@param method method to define what is beautiful — enum in ['AREA', 'ANGLE'], default 'AREA'
		
		@returns dict with string keys
	**/
	static function beautify_fill(bm:Dynamic, faces:Array<Dynamic>, edges:Array<Dynamic>, use_restrict_tag:Dynamic, method:bmesh.ops.Ops.Enum11):Dynamic;
	/**
		Triangle Fill.
		
		Fill edges with triangles
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param use_beauty Undocumented. — bool
		@param use_dissolve dissolve resulting faces — bool
		@param edges input edges — list of (bmesh.types.BMEdge)
		@param normal optionally pass the fill normal to use — mathutils.Vector or any sequence of 3 floats
		
		@returns dict with string keys
	**/
	static function triangle_fill(bm:Dynamic, use_beauty:Dynamic, use_dissolve:Dynamic, edges:Array<Dynamic>, normal:Dynamic):Dynamic;
	/**
		Solidify.
		
		Turns a mesh into a shell with thickness
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param geom Undocumented. — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param thickness Undocumented. — float
		
		@returns dict with string keys
	**/
	static function solidify(bm:Dynamic, geom:Array<Dynamic>, thickness:Float):Dynamic;
	/**
		Face Inset (Individual).
		
		Insets individual faces.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
		@param thickness Undocumented. — float
		@param depth Undocumented. — float
		@param use_even_offset Undocumented. — bool
		@param use_interpolate Undocumented. — bool
		@param use_relative_offset Undocumented. — bool
		
		@returns dict with string keys
	**/
	static function inset_individual(bm:Dynamic, faces:Array<Dynamic>, thickness:Float, depth:Float, use_even_offset:Dynamic, use_interpolate:Dynamic, use_relative_offset:Dynamic):Dynamic;
	/**
		Face Inset (Regions).
		
		Inset or outset face regions.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
		@param faces_exclude Undocumented. — list of (bmesh.types.BMFace)
		@param use_boundary Undocumented. — bool
		@param use_even_offset Undocumented. — bool
		@param use_interpolate Undocumented. — bool
		@param use_relative_offset Undocumented. — bool
		@param use_edge_rail Undocumented. — bool
		@param thickness Undocumented. — float
		@param depth Undocumented. — float
		@param use_outset Undocumented. — bool
		
		@returns dict with string keys
	**/
	static function inset_region(bm:Dynamic, faces:Array<Dynamic>, faces_exclude:Array<Dynamic>, use_boundary:Dynamic, use_even_offset:Dynamic, use_interpolate:Dynamic, use_relative_offset:Dynamic, use_edge_rail:Dynamic, thickness:Float, depth:Float, use_outset:Dynamic):Dynamic;
	/**
		Edgeloop Offset.
		
		Creates edge loops based on simple edge-outset method.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param edges input faces — list of (bmesh.types.BMEdge)
		@param use_cap_endpoint Undocumented. — bool
		
		@returns dict with string keys
	**/
	static function offset_edgeloops(bm:Dynamic, edges:Array<Dynamic>, use_cap_endpoint:Dynamic):Dynamic;
	/**
		Wire Frame.
		
		Makes a wire-frame copy of faces.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
		@param thickness Undocumented. — float
		@param offset Undocumented. — float
		@param use_replace Undocumented. — bool
		@param use_boundary Undocumented. — bool
		@param use_even_offset Undocumented. — bool
		@param use_crease Undocumented. — bool
		@param crease_weight Undocumented. — float
		@param use_relative_offset Undocumented. — bool
		@param material_offset Undocumented. — int
		
		@returns dict with string keys
	**/
	static function wireframe(bm:Dynamic, faces:Array<Dynamic>, thickness:Float, offset:Float, use_replace:Dynamic, use_boundary:Dynamic, use_even_offset:Dynamic, use_crease:Dynamic, crease_weight:Float, use_relative_offset:Dynamic, material_offset:Int):Dynamic;
	/**
		Pokes a face.
		
		Splits a face into a triangle fan.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param faces input faces — list of (bmesh.types.BMFace)
		@param offset center vertex offset along normal — float
		@param center_mode calculation mode for center vertex — enum in ['MEAN_WEIGHTED', 'MEAN', 'BOUNDS'], default 'MEAN_WEIGHTED'
		@param use_relative_offset apply offset — bool
		
		@returns dict with string keys
	**/
	static function poke(bm:Dynamic, faces:Array<Dynamic>, offset:Float, center_mode:bmesh.ops.Ops.Enum12, use_relative_offset:Dynamic):Dynamic;
	/**
		Convex Hull
		
		Builds a convex hull from the vertices in ‘input’.
		
		If ‘use_existing_faces’ is true, the hull will not output triangles
		that are covered by a pre-existing face.
		
		All hull vertices, faces, and edges are added to ‘geom.out’. Any
		input elements that end up inside the hull (i.e. are not used by an
		output face) are added to the ‘interior_geom’ slot. The
		‘unused_geom’ slot will contain all interior geometry that is
		completely unused. Lastly, ‘holes_geom’ contains edges and faces
		that were in the input and are part of the hull.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param input Undocumented. — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param use_existing_faces Undocumented. — bool
		
		@returns dict with string keys
	**/
	static function convex_hull(bm:Dynamic, input:Array<Dynamic>, use_existing_faces:Dynamic):Dynamic;
	/**
		Symmetrize.
		
		Makes the mesh elements in the “input” slot symmetrical. Unlike
		normal mirroring, it only copies in one direction, as specified by
		the “direction” slot. The edges and faces that cross the plane of
		symmetry are split as needed to enforce symmetry.
		
		All new vertices, edges, and faces are added to the “geom.out” slot.
		@param bm The bmesh to operate on. — bmesh.types.BMesh
		@param input Undocumented. — list of (bmesh.types.BMVert, bmesh.types.BMEdge, bmesh.types.BMFace)
		@param direction axis to use — enum in ['X', 'Y', 'Z'], default 'X'
		@param dist minimum distance — float
		
		@returns dict with string keys
	**/
	static function symmetrize(bm:Dynamic, input:Array<Dynamic>, direction:bmesh.ops.Ops.Enum13, dist:Float):Dynamic;
}