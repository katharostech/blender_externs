package bpy.ops.mesh;
/**
	Mesh Operators
**/
@:pythonImport("bpy.ops.mesh") extern class Module {
	/**
		Average custom normals of selected vertices
		@param average_type Type, Averaging methodCUSTOM_NORMAL Custom Normal, Take Average of vert Normals.FACE_AREA Face Area, Set all vert normals by Face Area.CORNER_ANGLE Corner Angle, Set all vert normals by Corner Angle. — enum in ['CUSTOM_NORMAL', 'FACE_AREA', 'CORNER_ANGLE'], (optional)
		@param weight Weight, Weight applied per face — int in [1, 100], (optional)
		@param threshold Threshold, Threshold value for different weights to be considered equal — float in [0, 10], (optional)
	**/
	static function average_normals(average_type:bpy.ops.mesh.Mesh.Enum1, weight:Int, threshold:Float):Void;
	/**
		Rearrange some faces to try to get less degenerated geometry
		@param angle_limit Max Angle, Angle limit — float in [0, 3.14159], (optional)
	**/
	static function beautify_fill(angle_limit:Float):Void;
	/**
		Edge Bevel
		@param offset_type Amount Type, What distance Amount measuresOFFSET Offset, Amount is offset of new edges from original.WIDTH Width, Amount is width of new face.DEPTH Depth, Amount is perpendicular distance from original edge to bevel face.PERCENT Percent, Amount is percent of adjacent edge length. — enum in ['OFFSET', 'WIDTH', 'DEPTH', 'PERCENT'], (optional)
		@param offset Amount — float in [-1e+06, 1e+06], (optional)
		@param segments Segments, Segments for curved edge — int in [1, 1000], (optional)
		@param profile Profile, Controls profile shape (0.5 = round) — float in [0, 1], (optional)
		@param vertex_only Vertex Only, Bevel only vertices — boolean, (optional)
		@param clamp_overlap Clamp Overlap, Do not allow beveled edges/vertices to overlap each other — boolean, (optional)
		@param loop_slide Loop Slide, Prefer slide along edge to even widths — boolean, (optional)
		@param mark_seam Mark Seams, Mark Seams along beveled edges — boolean, (optional)
		@param mark_sharp Mark Sharp, Mark beveled edges as sharp — boolean, (optional)
		@param material Material, Material for bevel faces (-1 means use adjacent faces) — int in [-1, inf], (optional)
		@param strength Normal Strength, Strength of calculated normal — float in [0, 1], (optional)
		@param hnmode Normal Mode, Weighting mode for Harden NormalsHN_NONE Off, Do not use Harden Normals.HN_FACE Face Area, Use faces as weight.HN_ADJ Vertex average, Use adjacent vertices as weight. — enum in ['HN_NONE', 'HN_FACE', 'HN_ADJ'], (optional)
		@param release_confirm Confirm on Release — boolean, (optional)
	**/
	static function bevel(offset_type:bpy.ops.mesh.Mesh.Enum2, offset:Float, segments:Int, profile:Float, vertex_only:Bool, clamp_overlap:Bool, loop_slide:Bool, mark_seam:Bool, mark_sharp:Bool, material:Int, strength:Float, hnmode:bpy.ops.mesh.Mesh.Enum3, release_confirm:Bool):Void;
	/**
		Cut geometry along a plane (click-drag to define plane)
		@param plane_co Plane Point, A point on the plane — float array of 3 items in [-inf, inf], (optional)
		@param plane_no Plane Normal, The direction the plane points — float array of 3 items in [-1, 1], (optional)
		@param use_fill Fill, Fill in the cut — boolean, (optional)
		@param clear_inner Clear Inner, Remove geometry behind the plane — boolean, (optional)
		@param clear_outer Clear Outer, Remove geometry in front of the plane — boolean, (optional)
		@param threshold Axis Threshold, Preserves the existing geometry along the cut plane — float in [0, 10], (optional)
		@param xstart X Start — int in [-inf, inf], (optional)
		@param xend X End — int in [-inf, inf], (optional)
		@param ystart Y Start — int in [-inf, inf], (optional)
		@param yend Y End — int in [-inf, inf], (optional)
		@param cursor Cursor, Mouse cursor style to use during the modal operator — int in [0, inf], (optional)
	**/
	static function bisect(plane_co:Array<Float>, plane_no:Array<Float>, use_fill:Bool, clear_inner:Bool, clear_outer:Bool, threshold:Float, xstart:Int, xend:Int, ystart:Int, yend:Int, cursor:Int):Void;
	/**
		Blend in shape from a shape key
		@param shape Shape, Shape key to use for blending — enum in [], (optional)
		@param blend Blend, Blending factor — float in [-1000, 1000], (optional)
		@param add Add, Add rather than blend between shapes — boolean, (optional)
	**/
	static function blend_from_shape(shape:bpy.ops.mesh.Mesh.Enum4, blend:Float, add:Bool):Void;
	/**
		Make faces between two or more edge loops
		@param type Connect Loops, Method of bridging multiple loops — enum in ['SINGLE', 'CLOSED', 'PAIRS'], (optional)
		@param use_merge Merge, Merge rather than creating faces — boolean, (optional)
		@param merge_factor Merge Factor — float in [0, 1], (optional)
		@param twist_offset Twist, Twist offset for closed loops — int in [-1000, 1000], (optional)
		@param number_cuts Number of Cuts — int in [0, 1000], (optional)
		@param interpolation Interpolation, Interpolation method — enum in ['LINEAR', 'PATH', 'SURFACE'], (optional)
		@param smoothness Smoothness, Smoothness factor — float in [0, 1000], (optional)
		@param profile_shape_factor Profile Factor, How much intermediary new edges are shrunk/expanded — float in [-1000, 1000], (optional)
		@param profile_shape Profile Shape, Shape of the profileSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR'], (optional)
	**/
	static function bridge_edge_loops(type:bpy.ops.mesh.Mesh.Enum5, use_merge:Bool, merge_factor:Float, twist_offset:Int, number_cuts:Int, interpolation:bpy.ops.mesh.Mesh.Enum6, smoothness:Float, profile_shape_factor:Float, profile_shape:bpy.ops.mesh.Mesh.Enum7):Void;
	/**
		Flip direction of vertex colors inside faces
	**/
	static function colors_reverse():Void;
	/**
		Rotate vertex colors inside faces
		@param use_ccw Counter Clockwise — boolean, (optional)
	**/
	static function colors_rotate(use_ccw:Bool):Void;
	/**
		Enclose selected vertices in a convex polyhedron
		@param delete_unused Delete Unused, Delete selected elements that are not used by the hull — boolean, (optional)
		@param use_existing_faces Use Existing Faces, Skip hull triangles that are covered by a pre-existing face — boolean, (optional)
		@param make_holes Make Holes, Delete selected faces that are used by the hull — boolean, (optional)
		@param join_triangles Join Triangles, Merge adjacent triangles into quads — boolean, (optional)
		@param face_threshold Max Face Angle, Face angle limit — float in [0, 3.14159], (optional)
		@param shape_threshold Max Shape Angle, Shape angle limit — float in [0, 3.14159], (optional)
		@param uvs Compare UVs — boolean, (optional)
		@param vcols Compare VCols — boolean, (optional)
		@param seam Compare Seam — boolean, (optional)
		@param sharp Compare Sharp — boolean, (optional)
		@param materials Compare Materials — boolean, (optional)
	**/
	static function convex_hull(delete_unused:Bool, use_existing_faces:Bool, make_holes:Bool, join_triangles:Bool, face_threshold:Float, shape_threshold:Float, uvs:Bool, vcols:Bool, seam:Bool, sharp:Bool, materials:Bool):Void;
	/**
		Add a custom split normals layer, if none exists yet
	**/
	static function customdata_custom_splitnormals_add():Void;
	/**
		Remove the custom split normals layer, if it exists
	**/
	static function customdata_custom_splitnormals_clear():Void;
	/**
		Clear vertex sculpt masking data from the mesh
	**/
	static function customdata_mask_clear():Void;
	/**
		Add a vertex skin layer
	**/
	static function customdata_skin_add():Void;
	/**
		Clear vertex skin layer
	**/
	static function customdata_skin_clear():Void;
	/**
		Simplify geometry by collapsing edges
		@param ratio Ratio — float in [0, 1], (optional)
		@param use_vertex_group Vertex Group, Use active vertex group as an influence — boolean, (optional)
		@param vertex_group_factor Weight, Vertex group strength — float in [0, 1000], (optional)
		@param invert_vertex_group Invert, Invert vertex group influence — boolean, (optional)
		@param use_symmetry Symmetry, Maintain symmetry on an axis — boolean, (optional)
		@param symmetry_axis Axis, Axis of symmetry — enum in ['X', 'Y', 'Z'], (optional)
	**/
	static function decimate(ratio:Float, use_vertex_group:Bool, vertex_group_factor:Float, invert_vertex_group:Bool, use_symmetry:Bool, symmetry_axis:bpy.ops.mesh.Mesh.Enum8):Void;
	/**
		Delete selected vertices, edges or faces
		@param type Type, Method used for deleting mesh data — enum in ['VERT', 'EDGE', 'FACE', 'EDGE_FACE', 'ONLY_FACE'], (optional)
	**/
	static function delete(type:bpy.ops.mesh.Mesh.Enum9):Void;
	/**
		Delete an edge loop by merging the faces on each side
		@param use_face_split Face Split, Split off face corners to maintain surrounding geometry — boolean, (optional)
	**/
	static function delete_edgeloop(use_face_split:Bool):Void;
	/**
		Delete loose vertices, edges or faces
		@param use_verts Vertices, Remove loose vertices — boolean, (optional)
		@param use_edges Edges, Remove loose edges — boolean, (optional)
		@param use_faces Faces, Remove loose faces — boolean, (optional)
	**/
	static function delete_loose(use_verts:Bool, use_edges:Bool, use_faces:Bool):Void;
	/**
		Dissolve zero area faces and zero length edges
		@param threshold Merge Distance, Minimum distance between elements to merge — float in [1e-06, 50], (optional)
	**/
	static function dissolve_degenerate(threshold:Float):Void;
	/**
		Dissolve edges, merging faces
		@param use_verts Dissolve Verts, Dissolve remaining vertices — boolean, (optional)
		@param use_face_split Face Split, Split off face corners to maintain surrounding geometry — boolean, (optional)
	**/
	static function dissolve_edges(use_verts:Bool, use_face_split:Bool):Void;
	/**
		Dissolve faces
		@param use_verts Dissolve Verts, Dissolve remaining vertices — boolean, (optional)
	**/
	static function dissolve_faces(use_verts:Bool):Void;
	/**
		Dissolve selected edges and verts, limited by the angle of surrounding geometry
		@param angle_limit Max Angle, Angle limit — float in [0, 3.14159], (optional)
		@param use_dissolve_boundaries All Boundaries, Dissolve all vertices inbetween face boundaries — boolean, (optional)
		@param delimit Delimit, Delimit dissolve operationNORMAL Normal, Delimit by face directions.MATERIAL Material, Delimit by face material.SEAM Seam, Delimit by edge seams.SHARP Sharp, Delimit by sharp edges.UV UVs, Delimit by UV coordinates. — enum set in {'NORMAL', 'MATERIAL', 'SEAM', 'SHARP', 'UV'}, (optional)
	**/
	static function dissolve_limited(angle_limit:Float, use_dissolve_boundaries:Bool, delimit:Dynamic):Void;
	/**
		Dissolve geometry based on the selection mode
		@param use_verts Dissolve Verts, Dissolve remaining vertices — boolean, (optional)
		@param use_face_split Face Split, Split off face corners to maintain surrounding geometry — boolean, (optional)
		@param use_boundary_tear Tear Boundary, Split off face corners instead of merging faces — boolean, (optional)
	**/
	static function dissolve_mode(use_verts:Bool, use_face_split:Bool, use_boundary_tear:Bool):Void;
	/**
		Dissolve verts, merge edges and faces
		@param use_face_split Face Split, Split off face corners to maintain surrounding geometry — boolean, (optional)
		@param use_boundary_tear Tear Boundary, Split off face corners instead of merging faces — boolean, (optional)
	**/
	static function dissolve_verts(use_face_split:Bool, use_boundary_tear:Bool):Void;
	/**
		Duplicate and extrude selected vertices, edges or faces towards the mouse cursor
		@param rotate_source Rotate Source, Rotate initial selection giving better shape — boolean, (optional)
	**/
	static function dupli_extrude_cursor(rotate_source:Bool):Void;
	/**
		Duplicate selected vertices, edges or faces
		@param mode Mode — int in [0, inf], (optional)
	**/
	static function duplicate(mode:Int):Void;
	/**
		Duplicate mesh and move
		@param MESH_OT_duplicate Duplicate, Duplicate selected vertices, edges or faces — MESH_OT_duplicate, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function duplicate_move(MESH_OT_duplicate:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Collapse selected edges
	**/
	static function edge_collapse():Void;
	/**
		Add an edge or face to selected
	**/
	static function edge_face_add():Void;
	/**
		Rotate selected edge or adjoining faces
		@param use_ccw Counter Clockwise — boolean, (optional)
	**/
	static function edge_rotate(use_ccw:Bool):Void;
	/**
		Split selected edges so that each neighbor face gets its own copy
	**/
	static function edge_split():Void;
	/**
		Select an edge ring
		@param extend Extend, Extend the selection — boolean, (optional)
		@param deselect Deselect, Remove from the selection — boolean, (optional)
		@param toggle Toggle Select, Toggle the selection — boolean, (optional)
		@param ring Select Ring, Select ring — boolean, (optional)
	**/
	static function edgering_select(extend:Bool, deselect:Bool, toggle:Bool, ring:Bool):Void;
	/**
		Select all sharp-enough edges
		@param sharpness Sharpness — float in [0.000174533, 3.14159], (optional)
	**/
	static function edges_select_sharp(sharpness:Float):Void;
	/**
		Extrude selection
		@param use_normal_flip Flip Normals — boolean, (optional)
		@param mirror Mirror Editing — boolean, (optional)
	**/
	static function extrude_context(use_normal_flip:Bool, mirror:Bool):Void;
	/**
		Extrude context and move result
		@param MESH_OT_extrude_context Extrude Context, Extrude selection — MESH_OT_extrude_context, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function extrude_context_move(MESH_OT_extrude_context:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Extrude individual edges only
		@param use_normal_flip Flip Normals — boolean, (optional)
		@param mirror Mirror Editing — boolean, (optional)
	**/
	static function extrude_edges_indiv(use_normal_flip:Bool, mirror:Bool):Void;
	/**
		Extrude edges and move result
		@param MESH_OT_extrude_edges_indiv Extrude Only Edges, Extrude individual edges only — MESH_OT_extrude_edges_indiv, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function extrude_edges_move(MESH_OT_extrude_edges_indiv:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Extrude individual faces only
		@param mirror Mirror Editing — boolean, (optional)
	**/
	static function extrude_faces_indiv(mirror:Bool):Void;
	/**
		Extrude faces and move result
		@param MESH_OT_extrude_faces_indiv Extrude Individual Faces, Extrude individual faces only — MESH_OT_extrude_faces_indiv, (optional)
		@param TRANSFORM_OT_shrink_fatten Shrink/Fatten, Shrink/fatten selected vertices along normals — TRANSFORM_OT_shrink_fatten, (optional)
	**/
	static function extrude_faces_move(MESH_OT_extrude_faces_indiv:Dynamic, TRANSFORM_OT_shrink_fatten:Dynamic):Void;
	/**
		Extrude region of faces
		@param use_normal_flip Flip Normals — boolean, (optional)
		@param mirror Mirror Editing — boolean, (optional)
	**/
	static function extrude_region(use_normal_flip:Bool, mirror:Bool):Void;
	/**
		Extrude region and move result
		@param MESH_OT_extrude_region Extrude Region, Extrude region of faces — MESH_OT_extrude_region, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function extrude_region_move(MESH_OT_extrude_region:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Extrude along normals and move result
		@param MESH_OT_extrude_region Extrude Region, Extrude region of faces — MESH_OT_extrude_region, (optional)
		@param TRANSFORM_OT_shrink_fatten Shrink/Fatten, Shrink/fatten selected vertices along normals — TRANSFORM_OT_shrink_fatten, (optional)
	**/
	static function extrude_region_shrink_fatten(MESH_OT_extrude_region:Dynamic, TRANSFORM_OT_shrink_fatten:Dynamic):Void;
	/**
		Extrude selected vertices, edges or faces repeatedly
		@param offset Offset — float in [0, inf], (optional)
		@param steps Steps — int in [0, 1000000], (optional)
	**/
	static function extrude_repeat(offset:Float, steps:Int):Void;
	/**
		Extrude vertices and move result
		@param MESH_OT_extrude_verts_indiv Extrude Only Vertices, Extrude individual vertices only — MESH_OT_extrude_verts_indiv, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function extrude_vertices_move(MESH_OT_extrude_verts_indiv:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Extrude individual vertices only
		@param mirror Mirror Editing — boolean, (optional)
	**/
	static function extrude_verts_indiv(mirror:Bool):Void;
	/**
		Flatten selected faces
		@param factor Factor — float in [-10, 10], (optional)
		@param repeat Iterations — int in [1, 10000], (optional)
	**/
	static function face_make_planar(factor:Float, repeat:Int):Void;
	/**
		Weld loose edges into faces (splitting them into new faces)
	**/
	static function face_split_by_edges():Void;
	/**
		Copy mirror UV coordinates on the X axis based on a mirrored mesh
		@param direction Axis Direction — enum in ['POSITIVE', 'NEGATIVE'], (optional)
		@param precision Precision, Tolerance for finding vertex duplicates — int in [1, 16], (optional)
	**/
	static function faces_mirror_uv(direction:bpy.ops.mesh.Mesh.Enum10, precision:Int):Void;
	/**
		Select linked faces by angle
		@param sharpness Sharpness — float in [0.000174533, 3.14159], (optional)
	**/
	static function faces_select_linked_flat(sharpness:Float):Void;
	/**
		Display faces flat
	**/
	static function faces_shade_flat():Void;
	/**
		Display faces smooth (using vertex normals)
	**/
	static function faces_shade_smooth():Void;
	/**
		Fill a selected edge loop with faces
		@param use_beauty Beauty, Use best triangulation division — boolean, (optional)
	**/
	static function fill(use_beauty:Bool):Void;
	/**
		Fill grid from two loops
		@param span Span, Number of grid columns — int in [1, 1000], (optional)
		@param offset Offset, Vertex that is the corner of the grid — int in [-1000, 1000], (optional)
		@param use_interp_simple Simple Blending, Use simple interpolation of grid vertices — boolean, (optional)
	**/
	static function fill_grid(span:Int, offset:Int, use_interp_simple:Bool):Void;
	/**
		Fill in holes (boundary edge loops)
		@param sides Sides, Number of sides in hole required to fill (zero fills all holes) — int in [0, 1000], (optional)
	**/
	static function fill_holes(sides:Int):Void;
	/**
		Flip the direction of selected faces’ normals (and of their vertices)
	**/
	static function flip_normals():Void;
	/**
		Hide (un)selected vertices, edges or faces
		@param unselected Unselected, Hide unselected rather than selected — boolean, (optional)
	**/
	static function hide(unselected:Bool):Void;
	/**
		Inset new faces into selected faces
		@param use_boundary Boundary, Inset face boundaries — boolean, (optional)
		@param use_even_offset Offset Even, Scale the offset to give more even thickness — boolean, (optional)
		@param use_relative_offset Offset Relative, Scale the offset by surrounding geometry — boolean, (optional)
		@param use_edge_rail Edge Rail, Inset the region along existing edges — boolean, (optional)
		@param thickness Thickness — float in [0, inf], (optional)
		@param depth Depth — float in [-inf, inf], (optional)
		@param use_outset Outset, Outset rather than inset — boolean, (optional)
		@param use_select_inset Select Outer, Select the new inset faces — boolean, (optional)
		@param use_individual Individual, Individual Face Inset — boolean, (optional)
		@param use_interpolate Interpolate, Blend face data across the inset — boolean, (optional)
		@param release_confirm Confirm on Release — boolean, (optional)
	**/
	static function inset(use_boundary:Bool, use_even_offset:Bool, use_relative_offset:Bool, use_edge_rail:Bool, thickness:Float, depth:Float, use_outset:Bool, use_select_inset:Bool, use_individual:Bool, use_interpolate:Bool, release_confirm:Bool):Void;
	/**
		Cut an intersection into faces
		@param mode SourceSELECT Self Intersect, Self intersect selected faces.SELECT_UNSELECT Selected/Unselected, Intersect selected with unselected faces. — enum in ['SELECT', 'SELECT_UNSELECT'], (optional)
		@param separate_mode Separate ModeALL All, Separate all geometry from intersections.CUT Cut, Cut into geometry keeping each side separate (Selected/Unselected only).NONE Merge, Merge all geometry from the intersection. — enum in ['ALL', 'CUT', 'NONE'], (optional)
		@param threshold Merge threshold — float in [0, 0.01], (optional)
	**/
	static function intersect(mode:bpy.ops.mesh.Mesh.Enum11, separate_mode:bpy.ops.mesh.Mesh.Enum12, threshold:Float):Void;
	/**
		Cut solid geometry from selected to unselected
		@param operation Boolean — enum in ['INTERSECT', 'UNION', 'DIFFERENCE'], (optional)
		@param use_swap Swap, Use with difference intersection to swap which side is kept — boolean, (optional)
		@param threshold Merge threshold — float in [0, 0.01], (optional)
	**/
	static function intersect_boolean(operation:bpy.ops.mesh.Mesh.Enum13, use_swap:Bool, threshold:Float):Void;
	/**
		Use other objects outlines &amp; boundaries to project knife cuts
		@param cut_through Cut through, Cut through all faces, not just visible ones — boolean, (optional)
	**/
	static function knife_project(cut_through:Bool):Void;
	/**
		Cut new topology
		@param use_occlude_geometry Occlude Geometry, Only cut the front most geometry — boolean, (optional)
		@param only_selected Only Selected, Only cut selected geometry — boolean, (optional)
		@param wait_for_input Wait for Input — boolean, (optional)
	**/
	static function knife_tool(use_occlude_geometry:Bool, only_selected:Bool, wait_for_input:Bool):Void;
	/**
		Select a loop of connected edges by connection type
		@param ring Ring — boolean, (optional)
	**/
	static function loop_multi_select(ring:Bool):Void;
	/**
		Select a loop of connected edges
		@param extend Extend Select, Extend the selection — boolean, (optional)
		@param deselect Deselect, Remove from the selection — boolean, (optional)
		@param toggle Toggle Select, Toggle the selection — boolean, (optional)
		@param ring Select Ring, Select ring — boolean, (optional)
	**/
	static function loop_select(extend:Bool, deselect:Bool, toggle:Bool, ring:Bool):Void;
	/**
		Select region of faces inside of a selected loop of edges
		@param select_bigger Select Bigger, Select bigger regions instead of smaller ones — boolean, (optional)
	**/
	static function loop_to_region(select_bigger:Bool):Void;
	/**
		Add a new loop between existing loops
		@param number_cuts Number of Cuts — int in [1, 1000000], (optional)
		@param smoothness Smoothness, Smoothness factor — float in [-1000, 1000], (optional)
		@param falloff Falloff, Falloff type the featherSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR'], (optional)
		@param object_index Object Index — int in [-1, inf], (optional)
		@param edge_index Edge Index — int in [-1, inf], (optional)
	**/
	static function loopcut(number_cuts:Int, smoothness:Float, falloff:bpy.ops.mesh.Mesh.Enum14, object_index:Int, edge_index:Int):Void;
	/**
		Cut mesh loop and slide it
		@param MESH_OT_loopcut Loop Cut, Add a new loop between existing loops — MESH_OT_loopcut, (optional)
		@param TRANSFORM_OT_edge_slide Edge Slide, Slide an edge loop along a mesh — TRANSFORM_OT_edge_slide, (optional)
	**/
	static function loopcut_slide(MESH_OT_loopcut:Dynamic, TRANSFORM_OT_edge_slide:Dynamic):Void;
	/**
		(Un)mark selected edges as Freestyle feature edges
		@param clear Clear — boolean, (optional)
	**/
	static function mark_freestyle_edge(clear:Bool):Void;
	/**
		(Un)mark selected faces for exclusion from Freestyle feature edge detection
		@param clear Clear — boolean, (optional)
	**/
	static function mark_freestyle_face(clear:Bool):Void;
	/**
		(Un)mark selected edges as a seam
		@param clear Clear — boolean, (optional)
	**/
	static function mark_seam(clear:Bool):Void;
	/**
		(Un)mark selected edges as sharp
		@param clear Clear — boolean, (optional)
		@param use_verts Vertices, Consider vertices instead of edges to select which edges to (un)tag as sharp — boolean, (optional)
	**/
	static function mark_sharp(clear:Bool, use_verts:Bool):Void;
	/**
		Merge selected vertices
		@param type Type, Merge method to use — enum in ['FIRST', 'LAST', 'CENTER', 'CURSOR', 'COLLAPSE'], (optional)
		@param uvs UVs, Move UVs according to merge — boolean, (optional)
	**/
	static function merge(type:bpy.ops.mesh.Mesh.Enum15, uvs:Bool):Void;
	/**
		Merge custom normals of selected vertices
	**/
	static function merge_normals():Void;
	/**
		Set/Get strength of face (used in Weighted Normal modifier)
		@param set Set value, Set Value of faces — boolean, (optional)
	**/
	static function mod_weighted_strength(set:Bool):Void;
	/**
		Make face and vertex normals point either outside or inside the mesh
		@param inside Inside — boolean, (optional)
	**/
	static function normals_make_consistent(inside:Bool):Void;
	/**
		Custom normals tools using Normal Vector of UI
		@param mode Mode, Mode of tools taking input from InterfaceCOPY Copy Normal, Copy normal to buffer.PASTE Paste Normal, Paste normal from buffer.ADD Add Normal, Add normal vector with selection.MULTIPLY Multiply Normal, Multiply normal vector with selection.RESET Reset Normal, Reset buffer and/or normal of selected element. — enum in ['COPY', 'PASTE', 'ADD', 'MULTIPLY', 'RESET'], (optional)
		@param absolute Absolute Coordinates, Copy Absolute coordinates or Normal vector — boolean, (optional)
	**/
	static function normals_tools(mode:bpy.ops.mesh.Mesh.Enum16, absolute:Bool):Void;
	/**
		Create offset edge loop from the current selection
		@param use_cap_endpoint Cap Endpoint, Extend loop around end-points — boolean, (optional)
	**/
	static function offset_edge_loops(use_cap_endpoint:Bool):Void;
	/**
		Offset edge loop slide
		@param MESH_OT_offset_edge_loops Offset Edge Loop, Create offset edge loop from the current selection — MESH_OT_offset_edge_loops, (optional)
		@param TRANSFORM_OT_edge_slide Edge Slide, Slide an edge loop along a mesh — TRANSFORM_OT_edge_slide, (optional)
	**/
	static function offset_edge_loops_slide(MESH_OT_offset_edge_loops:Dynamic, TRANSFORM_OT_edge_slide:Dynamic):Void;
	/**
		Point selected custom normals to specified Target
		@param mode Mode, How to define coordinates to point custom normals toCOORDINATES Coordinates, Use static coordinates (defined by various means).MOUSE Mouse, Follow mouse cursor. — enum in ['COORDINATES', 'MOUSE'], (optional)
		@param invert Invert, Invert affected normals — boolean, (optional)
		@param align Align, Make all affected normals parallel — boolean, (optional)
		@param target_location Target, Target location to which normals will point — float array of 3 items in [-inf, inf], (optional)
		@param spherize Spherize, Interpolate between original and new normals — boolean, (optional)
		@param spherize_strength Spherize Strength, Ratio of spherized normal to original normal — float in [0, 1], (optional)
	**/
	static function point_normals(mode:bpy.ops.mesh.Mesh.Enum17, invert:Bool, align:Bool, target_location:Array<Float>, spherize:Bool, spherize_strength:Float):Void;
	/**
		Split a face into a fan
		@param offset Poke Offset, Poke Offset — float in [-1000, 1000], (optional)
		@param use_relative_offset Offset Relative, Scale the offset by surrounding geometry — boolean, (optional)
		@param center_mode Poke Center, Poke Face Center CalculationMEAN_WEIGHTED Weighted Mean, Weighted Mean Face Center.MEAN Mean, Mean Face Center.BOUNDS Bounds, Face Bounds Center. — enum in ['MEAN_WEIGHTED', 'MEAN', 'BOUNDS'], (optional)
	**/
	static function poke(offset:Float, use_relative_offset:Bool, center_mode:bpy.ops.mesh.Mesh.Enum18):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function polybuild_dissolve_at_cursor():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function polybuild_face_at_cursor(mirror:Bool, proportional:bpy.ops.mesh.Mesh.Enum19, proportional_edit_falloff:bpy.ops.mesh.Mesh.Enum20, proportional_size:Float, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param MESH_OT_polybuild_face_at_cursor Poly Build Face at Cursor — MESH_OT_polybuild_face_at_cursor, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function polybuild_face_at_cursor_move(MESH_OT_polybuild_face_at_cursor:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function polybuild_split_at_cursor(mirror:Bool, proportional:bpy.ops.mesh.Mesh.Enum21, proportional_edit_falloff:bpy.ops.mesh.Mesh.Enum22, proportional_size:Float, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param MESH_OT_polybuild_split_at_cursor Poly Build Split at Cursor — MESH_OT_polybuild_split_at_cursor, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function polybuild_split_at_cursor_move(MESH_OT_polybuild_split_at_cursor:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Construct a circle mesh
		@param vertices Vertices — int in [3, 10000000], (optional)
		@param radius Radius — float in [0, inf], (optional)
		@param fill_type Fill TypeNOTHING Nothing, Don’t fill at all.NGON Ngon, Use ngons.TRIFAN Triangle Fan, Use triangle fans. — enum in ['NOTHING', 'NGON', 'TRIFAN'], (optional)
		@param calc_uvs Generate UVs, Generate a default UV map — boolean, (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_circle_add(vertices:Int, radius:Float, fill_type:bpy.ops.mesh.Mesh.Enum23, calc_uvs:Bool, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a conic mesh
		@param vertices Vertices — int in [3, 10000000], (optional)
		@param radius1 Radius 1 — float in [0, inf], (optional)
		@param radius2 Radius 2 — float in [0, inf], (optional)
		@param depth Depth — float in [0, inf], (optional)
		@param end_fill_type Base Fill TypeNOTHING Nothing, Don’t fill at all.NGON Ngon, Use ngons.TRIFAN Triangle Fan, Use triangle fans. — enum in ['NOTHING', 'NGON', 'TRIFAN'], (optional)
		@param calc_uvs Generate UVs, Generate a default UV map — boolean, (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_cone_add(vertices:Int, radius1:Float, radius2:Float, depth:Float, end_fill_type:bpy.ops.mesh.Mesh.Enum24, calc_uvs:Bool, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a cube mesh
		@param size Size — float in [0, inf], (optional)
		@param calc_uvs Generate UVs, Generate a default UV map — boolean, (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_cube_add(size:Float, calc_uvs:Bool, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a cube mesh
		@param calc_uvs Generate UVs, Generate a default UV map — boolean, (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param matrix Matrix — float multi-dimensional array of 4 * 4 items in [-inf, inf], (optional)
	**/
	static function primitive_cube_add_gizmo(calc_uvs:Bool, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>, matrix:Array<Float>):Void;
	/**
		Construct a cylinder mesh
		@param vertices Vertices — int in [3, 10000000], (optional)
		@param radius Radius — float in [0, inf], (optional)
		@param depth Depth — float in [0, inf], (optional)
		@param end_fill_type Cap Fill TypeNOTHING Nothing, Don’t fill at all.NGON Ngon, Use ngons.TRIFAN Triangle Fan, Use triangle fans. — enum in ['NOTHING', 'NGON', 'TRIFAN'], (optional)
		@param calc_uvs Generate UVs, Generate a default UV map — boolean, (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_cylinder_add(vertices:Int, radius:Float, depth:Float, end_fill_type:bpy.ops.mesh.Mesh.Enum25, calc_uvs:Bool, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a grid mesh
		@param x_subdivisions X Subdivisions — int in [2, 10000000], (optional)
		@param y_subdivisions Y Subdivisions — int in [2, 10000000], (optional)
		@param size Size — float in [0, inf], (optional)
		@param calc_uvs Generate UVs, Generate a default UV map — boolean, (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_grid_add(x_subdivisions:Int, y_subdivisions:Int, size:Float, calc_uvs:Bool, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct an Icosphere mesh
		@param subdivisions Subdivisions — int in [1, 10], (optional)
		@param radius Radius — float in [0, inf], (optional)
		@param calc_uvs Generate UVs, Generate a default UV map — boolean, (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_ico_sphere_add(subdivisions:Int, radius:Float, calc_uvs:Bool, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a Suzanne mesh
		@param size Size — float in [0, inf], (optional)
		@param calc_uvs Generate UVs, Generate a default UV map — boolean, (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_monkey_add(size:Float, calc_uvs:Bool, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a filled planar mesh with 4 vertices
		@param size Size — float in [0, inf], (optional)
		@param calc_uvs Generate UVs, Generate a default UV map — boolean, (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_plane_add(size:Float, calc_uvs:Bool, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Add a torus mesh
		@param view_align Align to View — boolean, (optional)
		@param location Location — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation — float array of 3 items in [-inf, inf], (optional)
		@param major_segments Major Segments, Number of segments for the main ring of the torus — int in [3, 256], (optional)
		@param minor_segments Minor Segments, Number of segments for the minor ring of the torus — int in [3, 256], (optional)
		@param mode Torus DimensionsMAJOR_MINOR Major/Minor, Use the major/minor radii for torus dimensions.EXT_INT Exterior/Interior, Use the exterior/interior radii for torus dimensions. — enum in ['MAJOR_MINOR', 'EXT_INT'], (optional)
		@param major_radius Major Radius, Radius from the origin to the center of the cross sections — float in [0.01, 100], (optional)
		@param minor_radius Minor Radius, Radius of the torus’ cross section — float in [0.01, 100], (optional)
		@param abso_major_rad Exterior Radius, Total Exterior Radius of the torus — float in [0.01, 100], (optional)
		@param abso_minor_rad Interior Radius, Total Interior Radius of the torus — float in [0.01, 100], (optional)
		@param generate_uvs Generate UVs, Generate a default UV map — boolean, (optional)
	**/
	static function primitive_torus_add(view_align:Bool, location:Array<Float>, rotation:Array<Float>, major_segments:Int, minor_segments:Int, mode:bpy.ops.mesh.Mesh.Enum26, major_radius:Float, minor_radius:Float, abso_major_rad:Float, abso_minor_rad:Float, generate_uvs:Bool):Void;
	/**
		Construct a UV sphere mesh
		@param segments Segments — int in [3, 100000], (optional)
		@param ring_count Rings — int in [3, 100000], (optional)
		@param radius Radius — float in [0, inf], (optional)
		@param calc_uvs Generate UVs, Generate a default UV map — boolean, (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_uv_sphere_add(segments:Int, ring_count:Int, radius:Float, calc_uvs:Bool, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Triangulate selected faces
		@param quad_method Quad Method, Method for splitting the quads into trianglesBEAUTY Beauty , Split the quads in nice triangles, slower method.FIXED Fixed, Split the quads on the first and third vertices.FIXED_ALTERNATE Fixed Alternate, Split the quads on the 2nd and 4th vertices.SHORTEST_DIAGONAL Shortest Diagonal, Split the quads based on the distance between the vertices. — enum in ['BEAUTY', 'FIXED', 'FIXED_ALTERNATE', 'SHORTEST_DIAGONAL'], (optional)
		@param ngon_method Polygon Method, Method for splitting the polygons into trianglesBEAUTY Beauty, Arrange the new triangles evenly (slow).CLIP Clip, Split the polygons with an ear clipping algorithm. — enum in ['BEAUTY', 'CLIP'], (optional)
	**/
	static function quads_convert_to_tris(quad_method:bpy.ops.mesh.Mesh.Enum27, ngon_method:bpy.ops.mesh.Mesh.Enum28):Void;
	/**
		Select boundary edges around the selected faces
	**/
	static function region_to_loop():Void;
	/**
		Remove duplicate vertices
		@param threshold Merge Distance, Minimum distance between elements to merge — float in [1e-06, 50], (optional)
		@param use_unselected Unselected, Merge selected to other unselected vertices — boolean, (optional)
	**/
	static function remove_doubles(threshold:Float, use_unselected:Bool):Void;
	/**
		Reveal all hidden vertices, edges and faces
		@param select Select — boolean, (optional)
	**/
	static function reveal(select:Bool):Void;
	/**
		Disconnect vertex or edges from connected geometry
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
		@param use_fill Fill, Fill the ripped region — boolean, (optional)
	**/
	static function rip(mirror:Bool, proportional:bpy.ops.mesh.Mesh.Enum29, proportional_edit_falloff:bpy.ops.mesh.Mesh.Enum30, proportional_size:Float, release_confirm:Bool, use_accurate:Bool, use_fill:Bool):Void;
	/**
		Extend vertices along the edge closest to the cursor
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function rip_edge(mirror:Bool, proportional:bpy.ops.mesh.Mesh.Enum31, proportional_edit_falloff:bpy.ops.mesh.Mesh.Enum32, proportional_size:Float, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Extend vertices and move the result
		@param MESH_OT_rip_edge Extend Vertices, Extend vertices along the edge closest to the cursor — MESH_OT_rip_edge, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function rip_edge_move(MESH_OT_rip_edge:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Rip polygons and move the result
		@param MESH_OT_rip Rip, Disconnect vertex or edges from connected geometry — MESH_OT_rip, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function rip_move(MESH_OT_rip:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Extrude selected vertices in screw-shaped rotation around the cursor in indicated viewport
		@param steps Steps, Steps — int in [1, 100000], (optional)
		@param turns Turns, Turns — int in [1, 100000], (optional)
		@param center Center, Center in global view space — float array of 3 items in [-inf, inf], (optional)
		@param axis Axis, Axis in global view space — float array of 3 items in [-1, 1], (optional)
	**/
	static function screw(steps:Int, turns:Int, center:Array<Float>, axis:Array<Float>):Void;
	/**
		(De)select all vertices, edges or faces
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.mesh.Mesh.Enum33):Void;
	/**
		Select all data in the mesh on a single axis
		@param orientation Axis Mode, Axis orientationGLOBAL Global, Align the transformation axes to world space.LOCAL Local, Align the transformation axes to the selected objects’ local space.NORMAL Normal, Align the transformation axes to average normal of selected elements (bone Y axis for pose mode).GIMBAL Gimbal, Align each axis to the Euler rotation axis as used for input.VIEW View, Align the transformation axes to the window.CURSOR Cursor, Align the transformation axes to the 3D cursor. — enum in ['GLOBAL', 'LOCAL', 'NORMAL', 'GIMBAL', 'VIEW', 'CURSOR'], (optional)
		@param sign Axis Sign, Side to select — enum in ['POS', 'NEG', 'ALIGN'], (optional)
		@param axis Axis, Select the axis to compare each vertex on — enum in ['X', 'Y', 'Z'], (optional)
		@param threshold Threshold — float in [1e-06, 50], (optional)
	**/
	static function select_axis(orientation:bpy.ops.mesh.Mesh.Enum34, sign:bpy.ops.mesh.Mesh.Enum35, axis:bpy.ops.mesh.Mesh.Enum36, threshold:Float):Void;
	/**
		Select vertices or faces by the number of polygon sides
		@param number Number of Vertices — int in [3, inf], (optional)
		@param type Type, Type of comparison to make — enum in ['LESS', 'EQUAL', 'GREATER', 'NOTEQUAL'], (optional)
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function select_face_by_sides(number:Int, type:bpy.ops.mesh.Mesh.Enum37, extend:Bool):Void;
	/**
		Select faces where all edges have more than 2 face users
	**/
	static function select_interior_faces():Void;
	/**
		Deselect vertices, edges or faces at the boundary of each selection region
		@param use_face_step Face Step, Connected faces (instead of edges) — boolean, (optional)
	**/
	static function select_less(use_face_step:Bool):Void;
	/**
		Select all vertices connected to the current selection
		@param delimit Delimit, Delimit selected regionNORMAL Normal, Delimit by face directions.MATERIAL Material, Delimit by face material.SEAM Seam, Delimit by edge seams.SHARP Sharp, Delimit by sharp edges.UV UVs, Delimit by UV coordinates. — enum set in {'NORMAL', 'MATERIAL', 'SEAM', 'SHARP', 'UV'}, (optional)
	**/
	static function select_linked(delimit:Dynamic):Void;
	/**
		(De)select all vertices linked to the edge under the mouse cursor
		@param deselect Deselect — boolean, (optional)
		@param delimit Delimit, Delimit selected regionNORMAL Normal, Delimit by face directions.MATERIAL Material, Delimit by face material.SEAM Seam, Delimit by edge seams.SHARP Sharp, Delimit by sharp edges.UV UVs, Delimit by UV coordinates. — enum set in {'NORMAL', 'MATERIAL', 'SEAM', 'SHARP', 'UV'}, (optional)
	**/
	static function select_linked_pick(deselect:Bool, delimit:Dynamic):Void;
	/**
		Select loose geometry based on the selection mode
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function select_loose(extend:Bool):Void;
	/**
		Select mesh items at mirrored locations
		@param axis Axis — enum set in {'X', 'Y', 'Z'}, (optional)
		@param extend Extend, Extend the existing selection — boolean, (optional)
	**/
	static function select_mirror(axis:Dynamic, extend:Bool):Void;
	/**
		Change selection mode
		@param use_extend Extend — boolean, (optional)
		@param use_expand Expand — boolean, (optional)
		@param type Type — enum in ['VERT', 'EDGE', 'FACE'], (optional)
		@param action Action, Selection action to executeDISABLE Disable, Disable selected markers.ENABLE Enable, Enable selected markers.TOGGLE Toggle, Toggle disabled flag for selected markers. — enum in ['DISABLE', 'ENABLE', 'TOGGLE'], (optional)
	**/
	static function select_mode(use_extend:Bool, use_expand:Bool, type:bpy.ops.mesh.Mesh.Enum38, action:bpy.ops.mesh.Mesh.Enum39):Void;
	/**
		Select more vertices, edges or faces connected to initial selection
		@param use_face_step Face Step, Connected faces (instead of edges) — boolean, (optional)
	**/
	static function select_more(use_face_step:Bool):Void;
	/**
		Select the next element (using selection order)
	**/
	static function select_next_item():Void;
	/**
		Select all non-manifold vertices or edges
		@param extend Extend, Extend the selection — boolean, (optional)
		@param use_wire Wire, Wire edges — boolean, (optional)
		@param use_boundary Boundaries, Boundary edges — boolean, (optional)
		@param use_multi_face Multiple Faces, Edges shared by 3+ faces — boolean, (optional)
		@param use_non_contiguous Non Contiguous, Edges between faces pointing in alternate directions — boolean, (optional)
		@param use_verts Vertices, Vertices connecting multiple face regions — boolean, (optional)
	**/
	static function select_non_manifold(extend:Bool, use_wire:Bool, use_boundary:Bool, use_multi_face:Bool, use_non_contiguous:Bool, use_verts:Bool):Void;
	/**
		Deselect every Nth element starting from the active vertex, edge or face
		@param nth Nth Element, Skip every Nth element — int in [2, inf], (optional)
		@param skip Skip, Number of elements to skip at once — int in [1, inf], (optional)
		@param offset Offset, Offset from the starting point — int in [-inf, inf], (optional)
	**/
	static function select_nth(nth:Int, skip:Int, offset:Int):Void;
	/**
		Select the previous element (using selection order)
	**/
	static function select_prev_item():Void;
	/**
		Randomly select vertices
		@param percent Percent, Percentage of objects to select randomly — float in [0, 100], (optional)
		@param seed Random Seed, Seed for the random number generator — int in [0, inf], (optional)
		@param action Action, Selection action to executeSELECT Select, Select all elements.DESELECT Deselect, Deselect all elements. — enum in ['SELECT', 'DESELECT'], (optional)
	**/
	static function select_random(percent:Float, seed:Int, action:bpy.ops.mesh.Mesh.Enum40):Void;
	/**
		Select similar vertices, edges or faces by property types
		@param type Type — enum in ['NORMAL', 'FACE', 'VGROUP', 'EDGE', 'LENGTH', 'DIR', 'FACE', 'FACE_ANGLE', 'CREASE', 'BEVEL', 'SEAM', 'SHARP', 'FREESTYLE_EDGE', 'MATERIAL', 'AREA', 'SIDES', 'PERIMETER', 'NORMAL', 'COPLANAR', 'SMOOTH', 'FACE_MAP', 'FREESTYLE_FACE'], (optional)
		@param compare Compare — enum in ['EQUAL', 'GREATER', 'LESS'], (optional)
		@param threshold Threshold — float in [0, 1], (optional)
	**/
	static function select_similar(type:bpy.ops.mesh.Mesh.Enum41, compare:bpy.ops.mesh.Mesh.Enum42, threshold:Float):Void;
	/**
		Select similar face regions to the current selection
	**/
	static function select_similar_region():Void;
	/**
		Select vertices without a group
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function select_ungrouped(extend:Bool):Void;
	/**
		Separate selected geometry into a new mesh
		@param type Type — enum in ['SELECTED', 'MATERIAL', 'LOOSE'], (optional)
	**/
	static function separate(type:bpy.ops.mesh.Mesh.Enum43):Void;
	/**
		Set the custom normals from the selected faces ones
		@param keep_sharp Keep Sharp Edges, Do not set sharp edges to face — boolean, (optional)
	**/
	static function set_normals_from_faces(keep_sharp:Bool):Void;
	/**
		Apply selected vertex locations to all other shape keys
	**/
	static function shape_propagate_to_all():Void;
	/**
		Select shortest path between two selections
		@param use_face_step Face Stepping, Traverse connected faces (includes diagonals and edge-rings) — boolean, (optional)
		@param use_topology_distance Topology Distance, Find the minimum number of steps, ignoring spatial distance — boolean, (optional)
		@param use_fill Fill Region, Select all paths between the source/destination elements — boolean, (optional)
		@param nth Nth Element, Skip every Nth element — int in [1, inf], (optional)
		@param skip Skip, Number of elements to skip at once — int in [1, inf], (optional)
		@param offset Offset, Offset from the starting point — int in [-inf, inf], (optional)
	**/
	static function shortest_path_pick(use_face_step:Bool, use_topology_distance:Bool, use_fill:Bool, nth:Int, skip:Int, offset:Int):Void;
	/**
		Selected shortest path between two vertices/edges/faces
		@param use_face_step Face Stepping, Traverse connected faces (includes diagonals and edge-rings) — boolean, (optional)
		@param use_topology_distance Topology Distance, Find the minimum number of steps, ignoring spatial distance — boolean, (optional)
		@param use_fill Fill Region, Select all paths between the source/destination elements — boolean, (optional)
		@param nth Nth Element, Skip every Nth element — int in [1, inf], (optional)
		@param skip Skip, Number of elements to skip at once — int in [1, inf], (optional)
		@param offset Offset, Offset from the starting point — int in [-inf, inf], (optional)
	**/
	static function shortest_path_select(use_face_step:Bool, use_topology_distance:Bool, use_fill:Bool, nth:Int, skip:Int, offset:Int):Void;
	/**
		Smoothen custom normals based on adjacent vertex normals
		@param factor Factor, Specifies weight of smooth vs original normal — float in [0, 1], (optional)
	**/
	static function smoothen_normals(factor:Float):Void;
	/**
		Create a solid skin by extruding, compensating for sharp angles
		@param thickness Thickness — float in [-10000, 10000], (optional)
	**/
	static function solidify(thickness:Float):Void;
	/**
		The order of selected vertices/edges/faces is modified, based on a given method
		@param type Type, Type of re-ordering operation to applyVIEW_ZAXIS View Z Axis, Sort selected elements from farthest to nearest one in current view.VIEW_XAXIS View X Axis, Sort selected elements from left to right one in current view.CURSOR_DISTANCE Cursor Distance, Sort selected elements from nearest to farthest from 3D cursor.MATERIAL Material, Sort selected elements from smallest to greatest material index (faces only!).SELECTED Selected, Move all selected elements in first places, preserving their relative order (WARNING: this will affect unselected elements’ indices as well!).RANDOMIZE Randomize, Randomize order of selected elements.REVERSE Reverse, Reverse current order of selected elements. — enum in ['VIEW_ZAXIS', 'VIEW_XAXIS', 'CURSOR_DISTANCE', 'MATERIAL', 'SELECTED', 'RANDOMIZE', 'REVERSE'], (optional)
		@param elements Elements, Which elements to affect (vertices, edges and/or faces) — enum set in {'VERT', 'EDGE', 'FACE'}, (optional)
		@param reverse Reverse, Reverse the sorting effect — boolean, (optional)
		@param seed Seed, Seed for random-based operations — int in [0, inf], (optional)
	**/
	static function sort_elements(type:bpy.ops.mesh.Mesh.Enum44, elements:Dynamic, reverse:Bool, seed:Int):Void;
	/**
		Extrude selected vertices in a circle around the cursor in indicated viewport
		@param steps Steps, Steps — int in [0, 1000000], (optional)
		@param dupli Dupli, Make Duplicates — boolean, (optional)
		@param angle Angle, Rotation for each step — float in [-inf, inf], (optional)
		@param use_auto_merge Auto Merge, Merge first/last when the angle is a full revolution — boolean, (optional)
		@param use_normal_flip Flip Normals — boolean, (optional)
		@param center Center, Center in global view space — float array of 3 items in [-inf, inf], (optional)
		@param axis Axis, Axis in global view space — float array of 3 items in [-1, 1], (optional)
	**/
	static function spin(steps:Int, dupli:Bool, angle:Float, use_auto_merge:Bool, use_normal_flip:Bool, center:Array<Float>, axis:Array<Float>):Void;
	/**
		Split off selected geometry from connected unselected geometry
	**/
	static function split():Void;
	/**
		Split custom normals of selected vertices
	**/
	static function split_normals():Void;
	/**
		Subdivide selected edges
		@param number_cuts Number of Cuts — int in [1, 100], (optional)
		@param smoothness Smoothness, Smoothness factor — float in [0, 1000], (optional)
		@param ngon Create N-Gons, When disabled, newly created faces are limited to 3-4 sided faces — boolean, (optional)
		@param quadcorner Quad Corner Type, How to subdivide quad corners (anything other than Straight Cut will prevent ngons) — enum in ['INNERVERT', 'PATH', 'STRAIGHT_CUT', 'FAN'], (optional)
		@param fractal Fractal, Fractal randomness factor — float in [0, 1e+06], (optional)
		@param fractal_along_normal Along Normal, Apply fractal displacement along normal only — float in [0, 1], (optional)
		@param seed Random Seed, Seed for the random number generator — int in [0, inf], (optional)
	**/
	static function subdivide(number_cuts:Int, smoothness:Float, ngon:Bool, quadcorner:bpy.ops.mesh.Mesh.Enum45, fractal:Float, fractal_along_normal:Float, seed:Int):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param number_cuts Number of Cuts — int in [0, 1000], (optional)
		@param interpolation Interpolation, Interpolation method — enum in ['LINEAR', 'PATH', 'SURFACE'], (optional)
		@param smoothness Smoothness, Smoothness factor — float in [0, 1000], (optional)
		@param profile_shape_factor Profile Factor, How much intermediary new edges are shrunk/expanded — float in [-1000, 1000], (optional)
		@param profile_shape Profile Shape, Shape of the profileSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR'], (optional)
	**/
	static function subdivide_edgering(number_cuts:Int, interpolation:bpy.ops.mesh.Mesh.Enum46, smoothness:Float, profile_shape_factor:Float, profile_shape:bpy.ops.mesh.Mesh.Enum47):Void;
	/**
		Enforce symmetry (both form and topological) across an axis
		@param direction Direction, Which sides to copy from and to — enum in ['NEGATIVE_X', 'POSITIVE_X', 'NEGATIVE_Y', 'POSITIVE_Y', 'NEGATIVE_Z', 'POSITIVE_Z'], (optional)
		@param threshold Threshold, Limit for snap middle vertices to the axis center — float in [0, 10], (optional)
	**/
	static function symmetrize(direction:bpy.ops.mesh.Mesh.Enum48, threshold:Float):Void;
	/**
		Snap vertex pairs to their mirrored locations
		@param direction Direction, Which sides to copy from and to — enum in ['NEGATIVE_X', 'POSITIVE_X', 'NEGATIVE_Y', 'POSITIVE_Y', 'NEGATIVE_Z', 'POSITIVE_Z'], (optional)
		@param threshold Threshold, Distance within which matching vertices are searched — float in [0, 10], (optional)
		@param factor Factor, Mix factor of the locations of the vertices — float in [0, 1], (optional)
		@param use_center Center, Snap middle vertices to the axis center — boolean, (optional)
	**/
	static function symmetry_snap(direction:bpy.ops.mesh.Mesh.Enum49, threshold:Float, factor:Float, use_center:Bool):Void;
	/**
		Join triangles into quads
		@param face_threshold Max Face Angle, Face angle limit — float in [0, 3.14159], (optional)
		@param shape_threshold Max Shape Angle, Shape angle limit — float in [0, 3.14159], (optional)
		@param uvs Compare UVs — boolean, (optional)
		@param vcols Compare VCols — boolean, (optional)
		@param seam Compare Seam — boolean, (optional)
		@param sharp Compare Sharp — boolean, (optional)
		@param materials Compare Materials — boolean, (optional)
	**/
	static function tris_convert_to_quads(face_threshold:Float, shape_threshold:Float, uvs:Bool, vcols:Bool, seam:Bool, sharp:Bool, materials:Bool):Void;
	/**
		UnSubdivide selected edges &amp; faces
		@param iterations Iterations, Number of times to unsubdivide — int in [1, 1000], (optional)
	**/
	static function unsubdivide(iterations:Int):Void;
	/**
		Add UV Map
	**/
	static function uv_texture_add():Void;
	/**
		Remove UV Map
	**/
	static function uv_texture_remove():Void;
	/**
		Flip direction of UV coordinates inside faces
	**/
	static function uvs_reverse():Void;
	/**
		Rotate UV coordinates inside faces
		@param use_ccw Counter Clockwise — boolean, (optional)
	**/
	static function uvs_rotate(use_ccw:Bool):Void;
	/**
		Connect selected vertices of faces, splitting the face
	**/
	static function vert_connect():Void;
	/**
		Make all faces convex
	**/
	static function vert_connect_concave():Void;
	/**
		Split non-planar faces that exceed the angle threshold
		@param angle_limit Max Angle, Angle limit — float in [0, 3.14159], (optional)
	**/
	static function vert_connect_nonplanar(angle_limit:Float):Void;
	/**
		Connect vertices by their selection order, creating edges, splitting faces
	**/
	static function vert_connect_path():Void;
	/**
		Add vertex color layer
	**/
	static function vertex_color_add():Void;
	/**
		Remove vertex color layer
	**/
	static function vertex_color_remove():Void;
	/**
		Flatten angles of selected vertices
		@param factor Smoothing, Smoothing factor — float in [-10, 10], (optional)
		@param repeat Repeat, Number of times to smooth the mesh — int in [1, 1000], (optional)
		@param xaxis X-Axis, Smooth along the X axis — boolean, (optional)
		@param yaxis Y-Axis, Smooth along the Y axis — boolean, (optional)
		@param zaxis Z-Axis, Smooth along the Z axis — boolean, (optional)
	**/
	static function vertices_smooth(factor:Float, repeat:Int, xaxis:Bool, yaxis:Bool, zaxis:Bool):Void;
	/**
		Laplacian smooth of selected vertices
		@param repeat Number of iterations to smooth the mesh — int in [1, 1000], (optional)
		@param lambda_factor Lambda factor — float in [1e-07, 1000], (optional)
		@param lambda_border Lambda factor in border — float in [1e-07, 1000], (optional)
		@param use_x Smooth X Axis, Smooth object along X axis — boolean, (optional)
		@param use_y Smooth Y Axis, Smooth object along Y axis — boolean, (optional)
		@param use_z Smooth Z Axis, Smooth object along Z axis — boolean, (optional)
		@param preserve_volume Preserve Volume, Apply volume preservation after smooth — boolean, (optional)
	**/
	static function vertices_smooth_laplacian(repeat:Int, lambda_factor:Float, lambda_border:Float, use_x:Bool, use_y:Bool, use_z:Bool, preserve_volume:Bool):Void;
	/**
		Create a solid wire-frame from faces
		@param use_boundary Boundary, Inset face boundaries — boolean, (optional)
		@param use_even_offset Offset Even, Scale the offset to give more even thickness — boolean, (optional)
		@param use_relative_offset Offset Relative, Scale the offset by surrounding geometry — boolean, (optional)
		@param use_replace Replace, Remove original faces — boolean, (optional)
		@param thickness Thickness — float in [0, 10000], (optional)
		@param offset Offset — float in [0, 10000], (optional)
		@param use_crease Crease, Crease hub edges for improved subsurf — boolean, (optional)
		@param crease_weight Crease weight — float in [0, 1000], (optional)
	**/
	static function wireframe(use_boundary:Bool, use_even_offset:Bool, use_relative_offset:Bool, use_replace:Bool, thickness:Float, offset:Float, use_crease:Bool, crease_weight:Float):Void;
}