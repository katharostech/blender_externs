package bpy.types.view3doverlay;
/**
	Settings for display of overlays in the 3D viewport
**/
@:native("bpy.types.View3DOverlay") extern class View3DOverlay {
	/**
		Opacity when rendering transparent wires
		
		Type: float in [0, 1], default 0.0
	**/
	var backwire_opacity : Float;
	/**
		Fade layer opacity for Grease Pencil layers except the active one
		
		Type: float in [0, 1], default 0.5
	**/
	var gpencil_fade_layer : Float;
	/**
		Canvas grid opacity
		
		Type: float in [0.1, 1], default 0.9
	**/
	var gpencil_grid_opacity : Float;
	/**
		Paper opacity
		
		Type: float in [0, 1], default 0.5
	**/
	var gpencil_paper_opacity : Float;
	/**
		Number of grid lines to display in perspective view
		
		Type: int in [0, 1024], default 16
	**/
	var grid_lines : Int;
	/**
		Distance between 3D View grid lines
		
		Type: float in [0, inf], default 1.0
	**/
	var grid_scale : Float;
	/**
		Grid cell size scaled by scene unit system settings
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var grid_scale_unit(default, never) : Float;
	/**
		Number of subdivisions between grid lines
		
		Type: int in [1, 1024], default 10
	**/
	var grid_subdivisions : Int;
	/**
		Display size for normals in the 3D view
		
		Type: float in [1e-05, 1000], default 0.0
	**/
	var normals_length : Float;
	/**
		Show annotations for this view
		
		Type: boolean, default False
	**/
	var show_annotation : Bool;
	/**
		Show the X axis line in perspective view
		
		Type: boolean, default False
	**/
	var show_axis_x : Bool;
	/**
		Show the Y axis line in perspective view
		
		Type: boolean, default False
	**/
	var show_axis_y : Bool;
	/**
		Show the Z axis line in perspective view
		
		Type: boolean, default False
	**/
	var show_axis_z : Bool;
	/**
		Use back face culling to hide the back side of faces
		
		Type: boolean, default False
	**/
	var show_backface_culling : Bool;
	/**
		Display bones
		
		Type: boolean, default False
	**/
	var show_bones : Bool;
	/**
		Display 3D Cursor Overlay
		
		Type: boolean, default False
	**/
	var show_cursor : Bool;
	/**
		Display Bezier handles in editmode
		
		Type: boolean, default False
	**/
	var show_curve_handles : Bool;
	/**
		Display 3D curve normals in editmode
		
		Type: boolean, default False
	**/
	var show_curve_normals : Bool;
	/**
		Display weights created for the Bevel modifier
		
		Type: boolean, default False
	**/
	var show_edge_bevel_weight : Bool;
	/**
		Display creases created for Subdivision Surface modifier
		
		Type: boolean, default False
	**/
	var show_edge_crease : Bool;
	/**
		Display UV unwrapping seams
		
		Type: boolean, default False
	**/
	var show_edge_seams : Bool;
	/**
		Display sharp edges, used with the Edge Split modifier
		
		Type: boolean, default False
	**/
	var show_edge_sharp : Bool;
	/**
		Display selected edges using highlights in the 3D view and UV editor
		
		Type: boolean, default False
	**/
	var show_edges : Bool;
	/**
		Display selected edge angle, using global values when set in the transform panel
		
		Type: boolean, default False
	**/
	var show_extra_edge_angle : Bool;
	/**
		Display selected edge lengths, using global values when set in the transform panel
		
		Type: boolean, default False
	**/
	var show_extra_edge_length : Bool;
	/**
		Display the angles in the selected edges, using global values when set in the transform panel
		
		Type: boolean, default False
	**/
	var show_extra_face_angle : Bool;
	/**
		Display the area of selected faces, using global values when set in the transform panel
		
		Type: boolean, default False
	**/
	var show_extra_face_area : Bool;
	/**
		Display the index numbers of selected vertices, edges, and faces
		
		Type: boolean, default False
	**/
	var show_extra_indices : Bool;
	/**
		Object details, including empty wire, cameras and other visual guides
		
		Type: boolean, default False
	**/
	var show_extras : Bool;
	/**
		Display face center
		
		Type: boolean, default False
	**/
	var show_face_center : Bool;
	/**
		Display face normals as lines
		
		Type: boolean, default False
	**/
	var show_face_normals : Bool;
	/**
		Show the Face Orientation Overlay
		
		Type: boolean, default False
	**/
	var show_face_orientation : Bool;
	/**
		Display all faces as shades in the 3D view and UV editor
		
		Type: boolean, default False
	**/
	var show_faces : Bool;
	/**
		Show the ground plane grid in perspective view
		
		Type: boolean, default False
	**/
	var show_floor : Bool;
	/**
		Display Freestyle edge marks, used with the Freestyle renderer
		
		Type: boolean, default False
	**/
	var show_freestyle_edge_marks : Bool;
	/**
		Display Freestyle face marks, used with the Freestyle renderer
		
		Type: boolean, default False
	**/
	var show_freestyle_face_marks : Bool;
	/**
		Show look development balls and palette
		
		Type: boolean, default False
	**/
	var show_look_dev : Bool;
	/**
		Show the Motion Paths Overlay
		
		Type: boolean, default False
	**/
	var show_motion_paths : Bool;
	/**
		Show object center dots
		
		Type: boolean, default False
	**/
	var show_object_origins : Bool;
	/**
		Show the object origin center dot for all (selected and unselected) objects
		
		Type: boolean, default False
	**/
	var show_object_origins_all : Bool;
	/**
		Use hidden wireframe display
		
		Type: boolean, default False
	**/
	var show_occlude_wire : Bool;
	/**
		Show the Onion Skinning Overlay
		
		Type: boolean, default False
	**/
	var show_onion_skins : Bool;
	/**
		Show an outline highlight around selected objects in non-wireframe views
		
		Type: boolean, default False
	**/
	var show_outline_selected : Bool;
	/**
		Display overlays like gizmos and outlines
		
		Type: boolean, default False
	**/
	var show_overlays : Bool;
	/**
		Use wireframe display in painting modes
		
		Type: boolean, default False
	**/
	var show_paint_wire : Bool;
	/**
		Show dashed lines indicating parent or constraint relationships
		
		Type: boolean, default False
	**/
	var show_relationship_lines : Bool;
	/**
		Display vertex-per-face normals as lines
		
		Type: boolean, default False
	**/
	var show_split_normals : Bool;
	/**
		Display statistical information about the mesh
		
		Type: boolean, default False
	**/
	var show_statvis : Bool;
	/**
		Display overlay text
		
		Type: boolean, default False
	**/
	var show_text : Bool;
	/**
		Display bones as transparent
		
		Type: boolean, default False
	**/
	var show_transparent_bones : Bool;
	/**
		Display vertex normals as lines
		
		Type: boolean, default False
	**/
	var show_vertex_normals : Bool;
	/**
		Display weights in editmode
		
		Type: boolean, default False
	**/
	var show_weight : Bool;
	/**
		Show face edges wires
		
		Type: boolean, default False
	**/
	var show_wireframes : Bool;
	/**
		Show contour lines formed by points with the same interpolated weight
		
		Type: boolean, default False
	**/
	var show_wpaint_contours : Bool;
	/**
		Show the bone selection overlay
		
		Type: boolean, default False
	**/
	var show_xray_bone : Bool;
	/**
		Opacity of the texture paint mode overlay
		
		Type: float in [0, 1], default 0.8
	**/
	var texture_paint_mode_opacity : Float;
	/**
		Show edit lines when editing strokes
		
		Type: boolean, default False
	**/
	var use_gpencil_edit_lines : Bool;
	/**
		Toggle fading of Grease Pencil layers except the active one
		
		Type: boolean, default False
	**/
	var use_gpencil_fade_layers : Bool;
	/**
		Display a grid over grease pencil paper
		
		Type: boolean, default False
	**/
	var use_gpencil_grid : Bool;
	/**
		Only show edit lines for additional frames
		
		Type: boolean, default False
	**/
	var use_gpencil_multiedit_line_only : Bool;
	/**
		Show ghosts of the keyframes before and after the current frame
		
		Type: boolean, default False
	**/
	var use_gpencil_onion_skin : Bool;
	/**
		Cover all viewport with a full color layer to improve visibility while drawing over complex scenes
		
		Type: boolean, default False
	**/
	var use_gpencil_paper : Bool;
	/**
		Opacity for edit vertices
		
		Type: float in [0, 1], default 0.0
	**/
	var vertex_opacity : Float;
	/**
		Opacity of the vertex paint mode overlay
		
		Type: float in [0, 1], default 0.8
	**/
	var vertex_paint_mode_opacity : Float;
	/**
		Opacity of the weight paint mode overlay
		
		Type: float in [0, 1], default 1.0
	**/
	var weight_paint_mode_opacity : Float;
	/**
		Adjust the number of wires displayed (1 for all wires)
		
		Type: float in [0, 1], default 0.5
	**/
	var wireframe_threshold : Float;
	/**
		Opacity to use for bone selection
		
		Type: float in [0, 1], default 0.5
	**/
	var xray_alpha_bone : Float;
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
}