package bmesh.types;
/**
	The BMesh data structure
**/
@:native("bmesh.types.BMesh") extern class BMesh {
	/**
		Calculate triangle tessellation from quads/ngons.
		
		@returns list of BMLoop tuples
	**/
	function calc_loop_triangles():bmesh.types.bmloop.BMLoop;
	/**
		Calculate mesh volume based on face normals.
		@param signed when signed is true, negative values may be returned. — bool
		
		@returns float
	**/
	function calc_volume(signed:Dynamic):Float;
	/**
		Clear all mesh data.
	**/
	function clear():Void;
	/**
		
		
		@returns BMesh
	**/
	function copy():bmesh.types.bmesh.BMesh;
	/**
		Explicitly free the BMesh data from memory, causing exceptions on further access.
	**/
	function free():Void;
	/**
		Initialize this bmesh from existing mesh datablock.
		@param mesh The mesh data to load. — Mesh
		@param use_shape_key Use the locations from a shape key. — boolean
		@param shape_key_index The shape key index to use. — int
	**/
	function from_mesh(mesh:Dynamic, use_shape_key:Bool, shape_key_index:Int):Void;
	/**
		Initialize this bmesh from existing object datablock (currently only meshes are supported).
		@param object The object data to load. — Object
		@param deform Apply deformation modifiers. — boolean
		@param render Use render settings. — boolean
		@param cage Get the mesh as a deformed cage. — boolean
		@param face_normals Calculate face normals. — boolean
	**/
	function from_object(object:Dynamic, deform:Bool, render:Bool, cage:Bool, face_normals:Bool):Void;
	/**
		Update mesh normals.
	**/
	function normal_update():Void;
	/**
		Flush selection, independent of the current selection mode.
		@param select flush selection or de-selected elements. — boolean
	**/
	function select_flush(select:Bool):Void;
	/**
		flush selection based on the current mode current BMesh.select_mode.
	**/
	function select_flush_mode():Void;
	/**
		Writes this BMesh data into an existing Mesh datablock.
		@param mesh The mesh data to write into. — Mesh
	**/
	function to_mesh(mesh:Dynamic):Void;
	/**
		Transform the mesh (optionally filtering flagged data only).
		@param matrix transform matrix. — 4x4 mathutils.Matrix
		@param filter set of values in (‘SELECT’, ‘HIDE’, ‘SEAM’, ‘SMOOTH’, ‘TAG’). — set
	**/
	function transform(matrix:Dynamic, filter:Dynamic):Void;
	/**
		This meshes edge sequence (read-only).
		
		Type: BMEdgeSeq
	**/
	var edges : bmesh.types.bmedgeseq.BMEdgeSeq;
	/**
		This meshes face sequence (read-only).
		
		Type: BMFaceSeq
	**/
	var faces : bmesh.types.bmfaceseq.BMFaceSeq;
	/**
		True when this element is valid (hasn’t been removed).
		
		Type: boolean
	**/
	var is_valid : Bool;
	/**
		True when this mesh is owned by blender (typically the editmode BMesh).
		
		Type: boolean
	**/
	var is_wrapped : Bool;
	/**
		This meshes loops (read-only).
		
		Type: BMLoopSeq
	**/
	var loops : bmesh.types.bmloopseq.BMLoopSeq;
	/**
		Sequence of selected items (the last is displayed as active).
		
		Type: BMEditSelSeq
	**/
	var select_history : bmesh.types.bmeditselseq.BMEditSelSeq;
	/**
		The selection mode, values can be {‘VERT’, ‘EDGE’, ‘FACE’}, can’t be assigned an empty set.
		
		Type: set
	**/
	var select_mode : Dynamic;
	/**
		This meshes vert sequence (read-only).
		
		Type: BMVertSeq
	**/
	var verts : bmesh.types.bmvertseq.BMVertSeq;
}/**
	The BMesh vertex type
**/
@:native("bmesh.types.BMVert") extern class BMVert {
	/**
		Return the angle between this vert’s two connected edges.
		@param fallback return this when the vert doesn’t have 2 edges
		                                            (instead of raising a ValueError). — any
		
		@returns float
	**/
	function calc_edge_angle(fallback:Dynamic):Float;
	/**
		Return a multiplier calculated based on the sharpness of the vertex.
		Where a flat surface gives 1.0, and higher values sharper edges.
		This is used to maintain shell thickness when offsetting verts along their normals.
		
		@returns float
	**/
	function calc_shell_factor():Float;
	/**
		Copy values from another element of matching type.
	**/
	function copy_from(other:Dynamic):Void;
	/**
		Interpolate the customdata from a face onto this loop (the loops vert should overlap the face).
		@param face The face to interpolate data from. — BMFace
	**/
	function copy_from_face_interp(face:Dynamic):Void;
	/**
		Interpolate the customdata from a vert between 2 other verts.
		@param vert_pair The vert to interpolate data from. — BMVert
	**/
	function copy_from_vert_interp(vert_pair:Dynamic):Void;
	/**
		Set the hide state.
		This is different from the hide attribute because it updates the selection and hide state of associated geometry.
		@param hide Hidden or visible. — boolean
	**/
	function hide_set(hide:Bool):Void;
	/**
		Update vertex normal.
	**/
	function normal_update():Void;
	/**
		Set the selection.
		This is different from the select attribute because it updates the selection state of associated geometry.
		@param select Select or de-select. — boolean
	**/
	function select_set(select:Bool):Void;
	/**
		The coordinates for this vertex as a 3D, wrapped vector.
		
		Type: mathutils.Vector
	**/
	var co : mathutils.vector.Vector;
	/**
		Hidden state of this element.
		
		Type: boolean
	**/
	var hide : Bool;
	/**
		Index of this element.
		
		Type: int
	**/
	var index : Int;
	/**
		True when this vertex is connected to boundary edges (read-only).
		
		Type: boolean
	**/
	var is_boundary : Bool;
	/**
		True when this vertex is manifold (read-only).
		
		Type: boolean
	**/
	var is_manifold : Bool;
	/**
		True when this element is valid (hasn’t been removed).
		
		Type: boolean
	**/
	var is_valid : Bool;
	/**
		True when this vertex is not connected to any faces (read-only).
		
		Type: boolean
	**/
	var is_wire : Bool;
	/**
		Edges connected to this vertex (read-only).
		
		Type: BMElemSeq of BMEdge
	**/
	var link_edges : bmesh.types.bmelemseq.BMElemSeq;
	/**
		Faces connected to this vertex (read-only).
		
		Type: BMElemSeq of BMFace
	**/
	var link_faces : bmesh.types.bmelemseq.BMElemSeq;
	/**
		Loops that use this vertex (read-only).
		
		Type: BMElemSeq of BMLoop
	**/
	var link_loops : bmesh.types.bmelemseq.BMElemSeq;
	/**
		The normal for this vertex as a 3D, wrapped vector.
		
		Type: mathutils.Vector
	**/
	var normal : mathutils.vector.Vector;
	/**
		Selected state of this element.
		
		Type: boolean
	**/
	var select : Bool;
	/**
		Generic attribute scripts can use for own logic
		
		Type: boolean
	**/
	var tag : Bool;
}/**
	The BMesh edge connecting 2 verts
**/
@:native("bmesh.types.BMEdge") extern class BMEdge {
	/**
		
		@param fallback return this when the edge doesn’t have 2 faces
		                                            (instead of raising a ValueError). — any
		
		@returns float
	**/
	function calc_face_angle(fallback:Dynamic):Float;
	/**
		
		@param fallback return this when the edge doesn’t have 2 faces
		                                            (instead of raising a ValueError). — any
		
		@returns float
	**/
	function calc_face_angle_signed(fallback:Dynamic):Float;
	/**
		
		
		@returns float
	**/
	function calc_length():Float;
	/**
		Return the tangent at this edge relative to a face (pointing inward into the face).
		This uses the face normal for calculation.
		@param loop The loop used for tangent calculation. — BMLoop
		
		@returns mathutils.Vector
	**/
	function calc_tangent(loop:Dynamic):mathutils.vector.Vector;
	/**
		Copy values from another element of matching type.
	**/
	function copy_from(other:Dynamic):Void;
	/**
		Set the hide state.
		This is different from the hide attribute because it updates the selection and hide state of associated geometry.
		@param hide Hidden or visible. — boolean
	**/
	function hide_set(hide:Bool):Void;
	/**
		Update edges vertex normals.
	**/
	function normal_update():Void;
	/**
		Return the other vertex on this edge or None if the vertex is not used by this edge.
		@param vert a vert in this edge. — BMVert
		
		@returns BMVert or None
	**/
	function other_vert(vert:Dynamic):bmesh.types.bmvert.BMVert;
	/**
		Set the selection.
		This is different from the select attribute because it updates the selection state of associated geometry.
		@param select Select or de-select. — boolean
	**/
	function select_set(select:Bool):Void;
	/**
		Hidden state of this element.
		
		Type: boolean
	**/
	var hide : Bool;
	/**
		Index of this element.
		
		Type: int
	**/
	var index : Int;
	/**
		True when this edge is at the boundary of a face (read-only).
		
		Type: boolean
	**/
	var is_boundary : Bool;
	/**
		True when this edge is manifold, between two faces with the same winding (read-only).
		
		Type: boolean
	**/
	var is_contiguous : Bool;
	/**
		True when this edge joins two convex faces, depends on a valid face normal (read-only).
		
		Type: boolean
	**/
	var is_convex : Bool;
	/**
		True when this edge is manifold (read-only).
		
		Type: boolean
	**/
	var is_manifold : Bool;
	/**
		True when this element is valid (hasn’t been removed).
		
		Type: boolean
	**/
	var is_valid : Bool;
	/**
		True when this edge is not connected to any faces (read-only).
		
		Type: boolean
	**/
	var is_wire : Bool;
	/**
		Faces connected to this edge, (read-only).
		
		Type: BMElemSeq of BMFace
	**/
	var link_faces : bmesh.types.bmelemseq.BMElemSeq;
	/**
		Loops connected to this edge, (read-only).
		
		Type: BMElemSeq of BMLoop
	**/
	var link_loops : bmesh.types.bmelemseq.BMElemSeq;
	/**
		Seam for UV unwrapping.
		
		Type: boolean
	**/
	var seam : Bool;
	/**
		Selected state of this element.
		
		Type: boolean
	**/
	var select : Bool;
	/**
		Smooth state of this element.
		
		Type: boolean
	**/
	var smooth : Bool;
	/**
		Generic attribute scripts can use for own logic
		
		Type: boolean
	**/
	var tag : Bool;
	/**
		Verts this edge uses (always 2), (read-only).
		
		Type: BMElemSeq of BMVert
	**/
	var verts : bmesh.types.bmelemseq.BMElemSeq;
}/**
	The BMesh face with 3 or more sides
**/
@:native("bmesh.types.BMFace") extern class BMFace {
	/**
		Return the area of the face.
		
		@returns float
	**/
	function calc_area():Float;
	/**
		Return bounds center of the face.
		
		@returns mathutils.Vector
	**/
	function calc_center_bounds():mathutils.vector.Vector;
	/**
		Return median center of the face.
		
		@returns mathutils.Vector
	**/
	function calc_center_median():mathutils.vector.Vector;
	/**
		Return median center of the face weighted by edge lengths.
		
		@returns mathutils.Vector
	**/
	function calc_center_median_weighted():mathutils.vector.Vector;
	/**
		Return the perimeter of the face.
		
		@returns float
	**/
	function calc_perimeter():Float;
	/**
		Return face tangent based on longest edge.
		
		@returns mathutils.Vector
	**/
	function calc_tangent_edge():mathutils.vector.Vector;
	/**
		Return face tangent based on the edge farthest from any vertex.
		
		@returns mathutils.Vector
	**/
	function calc_tangent_edge_diagonal():mathutils.vector.Vector;
	/**
		Return face tangent based on the two longest disconnected edges.
		
		@returns mathutils.Vector
	**/
	function calc_tangent_edge_pair():mathutils.vector.Vector;
	/**
		Return face tangent based on the two most distent vertices.
		
		@returns mathutils.Vector
	**/
	function calc_tangent_vert_diagonal():mathutils.vector.Vector;
	/**
		Make a copy of this face.
		@param verts When set, the faces verts will be duplicated too. — boolean
		@param edges When set, the faces edges will be duplicated too. — boolean
		
		@returns BMFace
	**/
	function copy(verts:Bool, edges:Bool):bmesh.types.bmface.BMFace;
	/**
		Copy values from another element of matching type.
	**/
	function copy_from(other:Dynamic):Void;
	/**
		Interpolate the customdata from another face onto this one (faces should overlap).
		@param face The face to interpolate data from. — BMFace
		@param vert When True, also copy vertex data. — boolean
	**/
	function copy_from_face_interp(face:Dynamic, vert:Bool):Void;
	/**
		Set the hide state.
		This is different from the hide attribute because it updates the selection and hide state of associated geometry.
		@param hide Hidden or visible. — boolean
	**/
	function hide_set(hide:Bool):Void;
	/**
		Reverses winding of a face, which flips its normal.
	**/
	function normal_flip():Void;
	/**
		Update face’s normal.
	**/
	function normal_update():Void;
	/**
		Set the selection.
		This is different from the select attribute because it updates the selection state of associated geometry.
		@param select Select or de-select. — boolean
	**/
	function select_set(select:Bool):Void;
	/**
		Edges of this face, (read-only).
		
		Type: BMElemSeq of BMEdge
	**/
	var edges : bmesh.types.bmelemseq.BMElemSeq;
	/**
		Hidden state of this element.
		
		Type: boolean
	**/
	var hide : Bool;
	/**
		Index of this element.
		
		Type: int
	**/
	var index : Int;
	/**
		True when this element is valid (hasn’t been removed).
		
		Type: boolean
	**/
	var is_valid : Bool;
	/**
		Loops of this face, (read-only).
		
		Type: BMElemSeq of BMLoop
	**/
	var loops : bmesh.types.bmelemseq.BMElemSeq;
	/**
		The face’s material index.
		
		Type: int
	**/
	var material_index : Int;
	/**
		The normal for this face as a 3D, wrapped vector.
		
		Type: mathutils.Vector
	**/
	var normal : mathutils.vector.Vector;
	/**
		Selected state of this element.
		
		Type: boolean
	**/
	var select : Bool;
	/**
		Smooth state of this element.
		
		Type: boolean
	**/
	var smooth : Bool;
	/**
		Generic attribute scripts can use for own logic
		
		Type: boolean
	**/
	var tag : Bool;
	/**
		Verts of this face, (read-only).
		
		Type: BMElemSeq of BMVert
	**/
	var verts : bmesh.types.bmelemseq.BMElemSeq;
}/**
	This is normally accessed from BMFace.loops where each face loop represents a corner of the face.
**/
@:native("bmesh.types.BMLoop") extern class BMLoop {
	/**
		Return the angle at this loops corner of the face.
		This is calculated so sharper corners give lower angles.
		
		@returns float
	**/
	function calc_angle():Float;
	/**
		Return normal at this loops corner of the face.
		Falls back to the face normal for straight lines.
		
		@returns mathutils.Vector
	**/
	function calc_normal():mathutils.vector.Vector;
	/**
		Return the tangent at this loops corner of the face (pointing inward into the face).
		Falls back to the face normal for straight lines.
		
		@returns mathutils.Vector
	**/
	function calc_tangent():mathutils.vector.Vector;
	/**
		Copy values from another element of matching type.
	**/
	function copy_from(other:Dynamic):Void;
	/**
		Interpolate the customdata from a face onto this loop (the loops vert should overlap the face).
		@param face The face to interpolate data from. — BMFace
		@param vert When enabled, interpolate the loops vertex data (optional). — boolean
		@param multires When enabled, interpolate the loops multires data (optional). — boolean
	**/
	function copy_from_face_interp(face:Dynamic, vert:Bool, multires:Bool):Void;
	/**
		The loop’s edge (between this loop and the next), (read-only).
		
		Type: BMEdge
	**/
	var edge : bmesh.types.bmedge.BMEdge;
	/**
		The face this loop makes (read-only).
		
		Type: BMFace
	**/
	var face : bmesh.types.bmface.BMFace;
	/**
		Index of this element.
		
		Type: int
	**/
	var index : Int;
	/**
		True when this loop is at the convex corner of a face, depends on a valid face normal (read-only).
		
		Type: boolean
	**/
	var is_convex : Bool;
	/**
		True when this element is valid (hasn’t been removed).
		
		Type: boolean
	**/
	var is_valid : Bool;
	/**
		The next face corner (read-only).
		
		Type: BMLoop
	**/
	var link_loop_next : bmesh.types.bmloop.BMLoop;
	/**
		The previous face corner (read-only).
		
		Type: BMLoop
	**/
	var link_loop_prev : bmesh.types.bmloop.BMLoop;
	/**
		The next loop around the edge (read-only).
		
		Type: BMLoop
	**/
	var link_loop_radial_next : bmesh.types.bmloop.BMLoop;
	/**
		The previous loop around the edge (read-only).
		
		Type: BMLoop
	**/
	var link_loop_radial_prev : bmesh.types.bmloop.BMLoop;
	/**
		Loops connected to this loop, (read-only).
		
		Type: BMElemSeq of BMLoop
	**/
	var link_loops : bmesh.types.bmelemseq.BMElemSeq;
	/**
		Generic attribute scripts can use for own logic
		
		Type: boolean
	**/
	var tag : Bool;
	/**
		The loop’s vertex (read-only).
		
		Type: BMVert
	**/
	var vert : bmesh.types.bmvert.BMVert;
}/**
	General sequence type used for accessing any sequence of
	BMVert, BMEdge, BMFace, BMLoop.
	
	When accessed via BMesh.verts, BMesh.edges, BMesh.faces
	there are also functions to create/remomove items.
**/
@:native("bmesh.types.BMElemSeq") extern class BMElemSeq {
	/**
		Initialize the index values of this sequence.
		
		This is the equivalent of looping over all elements and assigning the index values.
	**/
	function index_update():Void;
}@:native("bmesh.types.BMVertSeq") extern class BMVertSeq {
	/**
		Ensure internal data needed for int subscription is initialized with verts/edges/faces, eg bm.verts[index].
		
		This needs to be called again after adding/removing data in this sequence.
	**/
	function ensure_lookup_table():Void;
	/**
		Initialize the index values of this sequence.
		
		This is the equivalent of looping over all elements and assigning the index values.
	**/
	function index_update():Void;
	/**
		Create a new vertex.
		@param co The initial location of the vertex (optional argument). — float triplet
		@param example Existing vert to initialize settings. — BMVert
		
		@returns BMVert
	**/
	function pyNew(co:Float, example:Dynamic):bmesh.types.bmvert.BMVert;
	/**
		Remove a vert.
	**/
	function remove(vert:Dynamic):Void;
	/**
		Sort the elements of this sequence, using an optional custom sort key.
		Indices of elements are not changed, BMElemeSeq.index_update() can be used for that.
		@param key The key that sets the ordering of the elements. — 
		@param reverse Reverse the order of the elements — 
	**/
	function sort(key:Dynamic, reverse:Dynamic):Void;
	/**
		custom-data layers (read-only).
		
		Type: BMLayerAccessVert
	**/
	var layers : bmesh.types.bmlayeraccessvert.BMLayerAccessVert;
}@:native("bmesh.types.BMEdgeSeq") extern class BMEdgeSeq {
	/**
		Ensure internal data needed for int subscription is initialized with verts/edges/faces, eg bm.verts[index].
		
		This needs to be called again after adding/removing data in this sequence.
	**/
	function ensure_lookup_table():Void;
	/**
		Return an edge which uses the verts passed.
		@param verts Sequence of verts. — BMVert
		@param fallback Return this value if nothing is found. — 
		
		@returns BMEdge
	**/
	function get(verts:Dynamic, fallback:Dynamic):bmesh.types.bmedge.BMEdge;
	/**
		Initialize the index values of this sequence.
		
		This is the equivalent of looping over all elements and assigning the index values.
	**/
	function index_update():Void;
	/**
		Create a new edge from a given pair of verts.
		@param verts Vertex pair. — pair of BMVert
		@param example Existing edge to initialize settings (optional argument). — BMEdge
		
		@returns BMEdge
	**/
	function pyNew(verts:Dynamic, example:Dynamic):bmesh.types.bmedge.BMEdge;
	/**
		Remove an edge.
	**/
	function remove(edge:Dynamic):Void;
	/**
		Sort the elements of this sequence, using an optional custom sort key.
		Indices of elements are not changed, BMElemeSeq.index_update() can be used for that.
		@param key The key that sets the ordering of the elements. — 
		@param reverse Reverse the order of the elements — 
	**/
	function sort(key:Dynamic, reverse:Dynamic):Void;
	/**
		custom-data layers (read-only).
		
		Type: BMLayerAccessEdge
	**/
	var layers : bmesh.types.bmlayeraccessedge.BMLayerAccessEdge;
}@:native("bmesh.types.BMFaceSeq") extern class BMFaceSeq {
	/**
		Ensure internal data needed for int subscription is initialized with verts/edges/faces, eg bm.verts[index].
		
		This needs to be called again after adding/removing data in this sequence.
	**/
	function ensure_lookup_table():Void;
	/**
		Return a face which uses the verts passed.
		@param verts Sequence of verts. — BMVert
		@param fallback Return this value if nothing is found. — 
		
		@returns BMFace
	**/
	function get(verts:Dynamic, fallback:Dynamic):bmesh.types.bmface.BMFace;
	/**
		Initialize the index values of this sequence.
		
		This is the equivalent of looping over all elements and assigning the index values.
	**/
	function index_update():Void;
	/**
		Create a new face from a given set of verts.
		@param verts Sequence of 3 or more verts. — BMVert
		@param example Existing face to initialize settings (optional argument). — BMFace
		
		@returns BMFace
	**/
	function pyNew(verts:Dynamic, example:Dynamic):bmesh.types.bmface.BMFace;
	/**
		Remove a face.
	**/
	function remove(face:Dynamic):Void;
	/**
		Sort the elements of this sequence, using an optional custom sort key.
		Indices of elements are not changed, BMElemeSeq.index_update() can be used for that.
		@param key The key that sets the ordering of the elements. — 
		@param reverse Reverse the order of the elements — 
	**/
	function sort(key:Dynamic, reverse:Dynamic):Void;
	/**
		active face.
		
		Type: BMFace or None
	**/
	var active : bmesh.types.bmface.BMFace;
	/**
		custom-data layers (read-only).
		
		Type: BMLayerAccessFace
	**/
	var layers : bmesh.types.bmlayeraccessface.BMLayerAccessFace;
}@:native("bmesh.types.BMLoopSeq") extern class BMLoopSeq {
	/**
		custom-data layers (read-only).
		
		Type: BMLayerAccessLoop
	**/
	var layers : bmesh.types.bmlayeraccessloop.BMLayerAccessLoop;
}/**
	Internal BMesh type for looping over verts/faces/edges,
	used for iterating over BMElemSeq types.
**/
@:native("bmesh.types.BMIter") extern class BMIter {

}@:native("bmesh.types.BMEditSelSeq") extern class BMEditSelSeq {
	/**
		Add an element to the selection history (no action taken if its already added).
	**/
	function add(element:Dynamic):Void;
	/**
		Empties the selection history.
	**/
	function clear():Void;
	/**
		Discard an element from the selection history.
		
		Like remove but doesn’t raise an error when the elements not in the selection list.
	**/
	function discard(element:Dynamic):Void;
	/**
		Remove an element from the selection history.
	**/
	function remove(element:Dynamic):Void;
	/**
		Ensures all elements in the selection history are selected.
	**/
	function validate():Void;
	/**
		The last selected element or None (read-only).
		
		Type: BMVert, BMEdge or BMFace
	**/
	var active : bmesh.types.bmvert.BMVert;
}@:native("bmesh.types.BMEditSelIter") extern class BMEditSelIter {

}/**
	Exposes custom-data layer attributes.
**/
@:native("bmesh.types.BMLayerAccessVert") extern class BMLayerAccessVert {
	/**
		Bevel weight float in [0 - 1].
		
		Type: BMLayerCollection
	**/
	var bevel_weight : bmesh.types.bmlayercollection.BMLayerCollection;
	/**
		Vertex deform weight BMDeformVert (TODO).
		
		type: BMLayerCollection
	**/
	var deform : Dynamic;
	/**
		Generic float custom-data layer.
		
		type: BMLayerCollection
	**/
	var float : Dynamic;
	/**
		Generic int custom-data layer.
		
		type: BMLayerCollection
	**/
	var int : Dynamic;
	/**
		Accessor for paint mask layer.
		
		type: BMLayerCollection
	**/
	var paint_mask : Dynamic;
	/**
		Vertex shapekey absolute location (as a 3D Vector).
		
		Type: BMLayerCollection
	**/
	var shape : bmesh.types.bmlayercollection.BMLayerCollection;
	/**
		Accessor for skin layer.
		
		type: BMLayerCollection
	**/
	var skin : Dynamic;
	/**
		Generic string custom-data layer (exposed as bytes, 255 max length).
		
		type: BMLayerCollection
	**/
	var string : Dynamic;
}/**
	Exposes custom-data layer attributes.
**/
@:native("bmesh.types.BMLayerAccessEdge") extern class BMLayerAccessEdge {
	/**
		Bevel weight float in [0 - 1].
		
		Type: BMLayerCollection
	**/
	var bevel_weight : bmesh.types.bmlayercollection.BMLayerCollection;
	/**
		Edge crease for subsurf - float in [0 - 1].
		
		Type: BMLayerCollection
	**/
	var crease : bmesh.types.bmlayercollection.BMLayerCollection;
	/**
		Generic float custom-data layer.
		
		type: BMLayerCollection
	**/
	var float : Dynamic;
	/**
		Accessor for Freestyle edge layer.
		
		type: BMLayerCollection
	**/
	var freestyle : Dynamic;
	/**
		Generic int custom-data layer.
		
		type: BMLayerCollection
	**/
	var int : Dynamic;
	/**
		Generic string custom-data layer (exposed as bytes, 255 max length).
		
		type: BMLayerCollection
	**/
	var string : Dynamic;
}/**
	Exposes custom-data layer attributes.
**/
@:native("bmesh.types.BMLayerAccessFace") extern class BMLayerAccessFace {
	/**
		FaceMap custom-data layer.
		
		type: BMLayerCollection
	**/
	var face_map : Dynamic;
	/**
		Generic float custom-data layer.
		
		type: BMLayerCollection
	**/
	var float : Dynamic;
	/**
		Accessor for Freestyle face layer.
		
		type: BMLayerCollection
	**/
	var freestyle : Dynamic;
	/**
		Generic int custom-data layer.
		
		type: BMLayerCollection
	**/
	var int : Dynamic;
	/**
		Generic string custom-data layer (exposed as bytes, 255 max length).
		
		type: BMLayerCollection
	**/
	var string : Dynamic;
}/**
	Exposes custom-data layer attributes.
**/
@:native("bmesh.types.BMLayerAccessLoop") extern class BMLayerAccessLoop {
	/**
		Accessor for vertex color layer.
		
		type: BMLayerCollection
	**/
	var color : Dynamic;
	/**
		Generic float custom-data layer.
		
		type: BMLayerCollection
	**/
	var float : Dynamic;
	/**
		Generic int custom-data layer.
		
		type: BMLayerCollection
	**/
	var int : Dynamic;
	/**
		Generic string custom-data layer (exposed as bytes, 255 max length).
		
		type: BMLayerCollection
	**/
	var string : Dynamic;
	/**
		Accessor for BMLoopUV UV (as a 2D Vector).
		
		type: BMLayerCollection
	**/
	var uv : Dynamic;
}/**
	Gives access to a collection of custom-data layers of the same type and behaves like python dictionaries, except for the ability to do list like index access.
**/
@:native("bmesh.types.BMLayerCollection") extern class BMLayerCollection {
	/**
		Returns the value of the layer matching the key or default
		when not found (matches pythons dictionary function of the same name).
		@param key The key associated with the layer. — string
		@param pyDefault Optional argument for the value to return if
		                                                    key is not found. — Undefined
	**/
	function get(key:String, pyDefault:Dynamic):Void;
	/**
		Return the identifiers of collection members
		(matching pythons dict.items() functionality).
		
		@returns list of tuples
	**/
	function items():Array<Dynamic>;
	/**
		Return the identifiers of collection members
		(matching pythons dict.keys() functionality).
		
		@returns list of strings
	**/
	function keys():Array<Dynamic>;
	/**
		Create a new layer
		@param name Optional name argument (will be made unique). — string
		
		@returns BMLayerItem
	**/
	function pyNew(name:String):bmesh.types.bmlayeritem.BMLayerItem;
	/**
		Remove a layer
		@param layer The layer to remove. — BMLayerItem
	**/
	function remove(layer:Dynamic):Void;
	/**
		Return the values of collection
		(matching pythons dict.values() functionality).
		
		@returns list
	**/
	function values():Array<Dynamic>;
	/**
		Create a new layer or return an existing active layer
		
		@returns BMLayerItem
	**/
	function verify():bmesh.types.bmlayeritem.BMLayerItem;
	/**
		The active layer of this type (read-only).
		
		Type: BMLayerItem
	**/
	var active : bmesh.types.bmlayeritem.BMLayerItem;
	/**
		True if there can exists only one layer of this type (read-only).
		
		Type: boolean
	**/
	var is_singleton : Bool;
}/**
	Exposes a single custom data layer, their main purpose is for use as item accessors to custom-data when used with vert/edge/face/loop data.
**/
@:native("bmesh.types.BMLayerItem") extern class BMLayerItem {
	/**
		Return a copy of the layer
		@param other Another layer to copy from. — 
		@param other BMLayerItem — 
	**/
	function copy_from(other:Dynamic, other:Dynamic):Void;
	/**
		The layers unique name (read-only).
		
		Type: string
	**/
	var name : String;
}@:native("bmesh.types.BMLoopUV") extern class BMLoopUV {
	/**
		UV pin state.
		
		Type: boolean
	**/
	var pin_uv : Bool;
	/**
		UV select state.
		
		Type: boolean
	**/
	var select : Bool;
	/**
		UV edge select state.
		
		Type: boolean
	**/
	var select_edge : Bool;
	/**
		Loops UV (as a 2D Vector).
		
		Type: mathutils.Vector
	**/
	var uv : mathutils.vector.Vector;
}@:native("bmesh.types.BMDeformVert") extern class BMDeformVert {
	/**
		Clears all weights.
	**/
	function clear():Void;
	/**
		Returns the deform weight matching the key or default
		when not found (matches pythons dictionary function of the same name).
		@param key The key associated with deform weight. — int
		@param pyDefault Optional argument for the value to return if
		                                                    key is not found. — Undefined
	**/
	function get(key:Int, pyDefault:Dynamic):Void;
	/**
		Return (group, weight) pairs for this vertex
		(matching pythons dict.items() functionality).
		
		@returns list of tuples
	**/
	function items():Array<Dynamic>;
	/**
		Return the group indices used by this vertex
		(matching pythons dict.keys() functionality).
		
		@returns list of ints
	**/
	function keys():Array<Dynamic>;
	/**
		Return the weights of the deform vertex
		(matching pythons dict.values() functionality).
		
		@returns list of floats
	**/
	function values():Array<Dynamic>;
}