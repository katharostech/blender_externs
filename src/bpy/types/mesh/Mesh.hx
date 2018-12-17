package bpy.types.mesh;
/**
	Mesh data-block defining geometric surfaces
**/
@:native("bpy.types.Mesh") extern class Mesh {
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Maximum angle between face normals that will be considered as smooth (unused if custom split normals data are available)
		
		Type: float in [0, 3.14159], default 3.14159
	**/
	var auto_smooth_angle : Float;
	/**
		Adjust active object’s texture space automatically when transforming object
		
		Type: boolean, default False
	**/
	var auto_texspace : Bool;
	/**
		Cycles mesh settings
		
		Type: CyclesMeshSettings, (readonly)
	**/
	var cycles(default, never) : bpy.types.cyclesmeshsettings.CyclesMeshSettings;
	/**
		Edges of the mesh
		
		Type: MeshEdges bpy_prop_collection of MeshEdge, (readonly)
	**/
	var edges(default, never) : bpy.types.meshedges.MeshEdges;
	/**
		
		
		Type: MeshFaceMapLayers bpy_prop_collection of MeshFaceMapLayer, (readonly)
	**/
	var face_maps(default, never) : bpy.types.meshfacemaplayers.MeshFaceMapLayers;
	/**
		True if there are custom split normals data in this mesh
		
		Type: boolean, default False, (readonly)
	**/
	var has_custom_normals(default, never) : Bool;
	/**
		True when used in editmode
		
		Type: boolean, default False, (readonly)
	**/
	var is_editmode(default, never) : Bool;
	/**
		Tessellation of mesh polygons into triangles
		
		Type: MeshLoopTriangle bpy_prop_collection of MeshLoopTriangle, (readonly)
	**/
	var loop_triangles(default, never) : bpy.types.meshlooptriangle.MeshLoopTriangle;
	/**
		Loops of the mesh (polygon corners)
		
		Type: MeshLoops bpy_prop_collection of MeshLoop, (readonly)
	**/
	var loops(default, never) : bpy.types.meshloops.MeshLoops;
	/**
		
		
		Type: IDMaterials bpy_prop_collection of Material, (readonly)
	**/
	var materials(default, never) : bpy.types.idmaterials.IDMaterials;
	/**
		
		
		Type: PolygonFloatProperties bpy_prop_collection of MeshPolygonFloatPropertyLayer, (readonly)
	**/
	var polygon_layers_float(default, never) : bpy.types.polygonfloatproperties.PolygonFloatProperties;
	/**
		
		
		Type: PolygonIntProperties bpy_prop_collection of MeshPolygonIntPropertyLayer, (readonly)
	**/
	var polygon_layers_int(default, never) : bpy.types.polygonintproperties.PolygonIntProperties;
	/**
		
		
		Type: PolygonStringProperties bpy_prop_collection of MeshPolygonStringPropertyLayer, (readonly)
	**/
	var polygon_layers_string(default, never) : bpy.types.polygonstringproperties.PolygonStringProperties;
	/**
		Polygons of the mesh
		
		Type: MeshPolygons bpy_prop_collection of MeshPolygon, (readonly)
	**/
	var polygons(default, never) : bpy.types.meshpolygons.MeshPolygons;
	/**
		
		
		Type: Key, (readonly)
	**/
	var shape_keys(default, never) : bpy.types.key.Key;
	/**
		Display the mesh with double or single sided lighting (OpenGL only)
		
		Type: boolean, default False
	**/
	var show_double_sided : Bool;
	/**
		All skin vertices
		
		Type: bpy_prop_collection of MeshSkinVertexLayer, (readonly)
	**/
	var skin_vertices(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Derive texture coordinates from another mesh
		
		Type: Mesh
	**/
	var texco_mesh : bpy.types.mesh.Mesh;
	/**
		Texture space location
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var texspace_location : Array<Float>;
	/**
		Texture space size
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var texspace_size : Array<Float>;
	/**
		Use another mesh for texture indices (vertex indices must be aligned)
		
		Type: Mesh
	**/
	var texture_mesh : bpy.types.mesh.Mesh;
	/**
		Selected edge count in editmode
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var total_edge_sel(default, never) : Int;
	/**
		Selected face count in editmode
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var total_face_sel(default, never) : Int;
	/**
		Selected vertex count in editmode
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var total_vert_sel(default, never) : Int;
	/**
		Auto smooth (based on smooth/sharp faces/edges and angle between faces), or use custom split normals data if available
		
		Type: boolean, default False
	**/
	var use_auto_smooth : Bool;
	/**
		Adjust active object’s texture space automatically when transforming object
		
		Type: boolean, default False
	**/
	var use_auto_texspace : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_customdata_edge_bevel : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_customdata_edge_crease : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_customdata_vertex_bevel : Bool;
	/**
		Use topology based mirroring (for when both sides of mesh have matching, unique topology)
		
		Type: boolean, default False
	**/
	var use_mirror_topology : Bool;
	/**
		X Axis mirror editing
		
		Type: boolean, default False
	**/
	var use_mirror_x : Bool;
	/**
		Face selection masking for painting
		
		Type: boolean, default False
	**/
	var use_paint_mask : Bool;
	/**
		Vertex selection masking for painting (weight paint only)
		
		Type: boolean, default False
	**/
	var use_paint_mask_vertex : Bool;
	/**
		UV loop layer to be used as cloning source
		
		Type: MeshUVLoopLayer
	**/
	var uv_layer_clone : bpy.types.meshuvlooplayer.MeshUVLoopLayer;
	/**
		Clone UV loop layer index
		
		Type: int in [0, inf], default 0
	**/
	var uv_layer_clone_index : Int;
	/**
		UV loop layer to mask the painted area
		
		Type: MeshUVLoopLayer
	**/
	var uv_layer_stencil : bpy.types.meshuvlooplayer.MeshUVLoopLayer;
	/**
		Mask UV loop layer index
		
		Type: int in [0, inf], default 0
	**/
	var uv_layer_stencil_index : Int;
	/**
		All UV loop layers
		
		Type: UVLoopLayers bpy_prop_collection of MeshUVLoopLayer, (readonly)
	**/
	var uv_layers(default, never) : bpy.types.uvlooplayers.UVLoopLayers;
	/**
		All vertex colors
		
		Type: LoopColors bpy_prop_collection of MeshLoopColorLayer, (readonly)
	**/
	var vertex_colors(default, never) : bpy.types.loopcolors.LoopColors;
	/**
		
		
		Type: VertexFloatProperties bpy_prop_collection of MeshVertexFloatPropertyLayer, (readonly)
	**/
	var vertex_layers_float(default, never) : bpy.types.vertexfloatproperties.VertexFloatProperties;
	/**
		
		
		Type: VertexIntProperties bpy_prop_collection of MeshVertexIntPropertyLayer, (readonly)
	**/
	var vertex_layers_int(default, never) : bpy.types.vertexintproperties.VertexIntProperties;
	/**
		
		
		Type: VertexStringProperties bpy_prop_collection of MeshVertexStringPropertyLayer, (readonly)
	**/
	var vertex_layers_string(default, never) : bpy.types.vertexstringproperties.VertexStringProperties;
	/**
		Vertex paint mask
		
		Type: bpy_prop_collection of MeshPaintMaskLayer, (readonly)
	**/
	var vertex_paint_masks(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Vertices of the mesh
		
		Type: MeshVertices bpy_prop_collection of MeshVertex, (readonly)
	**/
	var vertices(default, never) : bpy.types.meshvertices.MeshVertices;
	/**
		(readonly)
	**/
	var edge_keys(default, never) : Dynamic;
	/**
		Transform mesh vertices by a matrix (Warning: inverts normals if matrix is negative)
		@param matrix Matrix — float multi-dimensional array of 4 * 4 items in [-inf, inf]
		@param shape_keys Transform Shape Keys — boolean, (optional)
	**/
	function transform(matrix:Array<Float>, shape_keys:Bool):Void;
	/**
		Invert winding of all polygons (clears tessellation, does not handle custom normals)
	**/
	function flip_normals():Void;
	/**
		Calculate vertex normals
	**/
	function calc_normals():Void;
	/**
		Empty split vertex normals
	**/
	function create_normals_split():Void;
	/**
		Calculate split vertex normals, which preserve sharp edges
	**/
	function calc_normals_split():Void;
	/**
		Free split vertex normals
	**/
	function free_normals_split():Void;
	/**
		Split faces based on the edge angle
		@param free_loop_normals Free Loop Notmals, Free loop normals custom data layer — boolean, (optional)
	**/
	function split_faces(free_loop_normals:Bool):Void;
	/**
		Compute tangents and bitangent signs, to be used together with the split normals to get a complete tangent space for normal mapping (split normals are also computed if not yet present)
		@param uvmap Name of the UV map to use for tangent space computation — string, (optional, never None)
	**/
	function calc_tangents(uvmap:String):Void;
	/**
		Free tangents
	**/
	function free_tangents():Void;
	/**
		Calculate loop triangle tessellation (supports editmode too)
	**/
	function calc_loop_triangles():Void;
	/**
		Calculate smooth groups from sharp edges
		@param use_bitflags Produce bitflags groups instead of simple numeric values — boolean, (optional)
	**/
	function calc_smooth_groups(use_bitflags:Bool):Void;
	/**
		Define custom split normals of this mesh (use zero-vectors to keep auto ones)
		@param normals Normals — float multi-dimensional array of 1 * 3 items in [-1, 1]
	**/
	function normals_split_custom_set(normals:Array<Float>):Void;
	/**
		Define custom split normals of this mesh, from vertices’ normals (use zero-vectors to keep auto ones)
		@param normals Normals — float multi-dimensional array of 1 * 3 items in [-1, 1]
	**/
	function normals_split_custom_set_from_vertices(normals:Array<Float>):Void;
	/**
		update
		@param calc_edges Calculate Edges, Force recalculation of edges — boolean, (optional)
		@param calc_edges_loose Calculate Loose Edges, Calculate the loose state of each edge — boolean, (optional)
		@param calc_loop_triangles Calculate Triangules, Force recalculation of triangle tessellation — boolean, (optional)
	**/
	function update(calc_edges:Bool, calc_edges_loose:Bool, calc_loop_triangles:Bool):Void;
	/**
		update_gpu_tag
	**/
	function update_gpu_tag():Void;
	/**
		unit_test_compare
		@param mesh Mesh to compare to — Mesh, (optional)
		
		@returns string, (never None)
	**/
	function unit_test_compare(mesh:Dynamic):String;
	/**
		Validate geometry, return True when the mesh has had invalid geometry corrected/removed
		@param verbose Verbose, Output information about the errors found — boolean, (optional)
		@param clean_customdata Clean Custom Data, Remove temp/cached custom-data layers, like e.g. normals… — boolean, (optional)
		
		@returns boolean
	**/
	function validate(verbose:Bool, clean_customdata:Bool):Bool;
	/**
		Validate material indices of polygons, return True when the mesh has had invalid indices corrected (to default 0)
		
		@returns boolean
	**/
	function validate_material_indices():Bool;
	/**
		Make a mesh from a list of vertices/edges/faces
		Until we have a nicer way to make geometry, use this.
		@param vertices float triplets each representing (X, Y, Z)
		                                                    eg: [(0.0, 1.0, 0.5), …]. — iterable object
		@param edges int pairs, each pair contains two indices to the
		                                                    vertices argument. eg: [(1, 2), …] — iterable object
		@param faces iterator of faces, each faces contains three or more indices to
		                                                    the vertices argument. eg: [(5, 6, 8, 9), (1, 2, 3), …] — iterable object
	**/
	function from_pydata(vertices:Dynamic, edges:Dynamic, faces:Dynamic):Void;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:String):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:String):Dynamic;
	/**
		Unique data-block ID name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Unique data-block ID name, including library one is any
		
		Type: string, default “”, (readonly, never None)
	**/
	var name_full(default, never) : String;
	/**
		Whether this ID is runtime-only, evaluated data-block, or actual data from .blend file
		
		Type: boolean, default False, (readonly)
	**/
	var is_evaluated(default, never) : Bool;
	/**
		Actual data-block from .blend file (Main database) that generated that evaluated one
		
		Type: ID, (readonly)
	**/
	var original(default, never) : bpy.types.id.ID;
	/**
		Number of times this data-block is referenced
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var users(default, never) : Int;
	/**
		Save this data-block even if it has no users
		
		Type: boolean, default False
	**/
	var use_fake_user : Bool;
	/**
		Tools can use this to tag data for their own purposes (initial state is undefined)
		
		Type: boolean, default False
	**/
	var tag : Bool;
	/**
		Is this ID block linked indirectly
		
		Type: boolean, default False, (readonly)
	**/
	var is_library_indirect(default, never) : Bool;
	/**
		Library file the data-block is linked from
		
		Type: Library, (readonly)
	**/
	var library(default, never) : bpy.types.library.Library;
	/**
		Static override data
		
		Type: IDOverrideStatic, (readonly)
	**/
	var override_static(default, never) : bpy.types.idoverridestatic.IDOverrideStatic;
	/**
		Preview image and icon of this data-block (None if not supported for this type of data)
		
		Type: ImagePreview, (readonly)
	**/
	var preview(default, never) : bpy.types.imagepreview.ImagePreview;
	/**
		Create a copy of this data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function copy():bpy.types.id.ID;
	/**
		Create an overridden local copy of this linked data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function override_create():bpy.types.id.ID;
	/**
		Clear the user count of a data-block so its not saved, on reload the data will be removed
		
		This function is for advanced use only, misuse can crash blender since the user
		count is used to prevent data being removed when it is used.
	**/
	function user_clear():Void;
	/**
		Replace all usage in the .blend file of this ID by new given one
		@param new_id New ID to use — ID, (never None)
	**/
	function user_remap(new_id:bpy.types.id.ID):Void;
	/**
		Make this datablock local, return local one (may be a copy of the original, in case it is also indirectly used)
		@param clear_proxy Whether to clear proxies (the default behavior, note that if object has to be duplicated to be made local, proxies are always cleared) — boolean, (optional)
		
		@returns ID
	**/
	function make_local(clear_proxy:Bool):bpy.types.id.ID;
	/**
		Count the number of times that ID uses/references given one
		@param id ID to count usages — ID, (never None)
		
		@returns int in [0, inf]
	**/
	function user_of_id(id:bpy.types.id.ID):Int;
	/**
		Create animation data to this ID, note that not all ID types support this
		
		@returns AnimData
	**/
	function animation_data_create():bpy.types.animdata.AnimData;
	/**
		Clear animation on this this ID
	**/
	function animation_data_clear():Void;
	/**
		Tag the ID to update its display data, e.g. when calling bpy.types.Scene.update
		@param refresh Type of updates to perform — enum set in {'OBJECT', 'DATA', 'TIME'}, (optional)
	**/
	function update_tag(refresh:Dynamic):Void;
}