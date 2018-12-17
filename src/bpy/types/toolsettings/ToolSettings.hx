package bpy.types.toolsettings;
@:enum abstract Enum1(String) from String to String {
	var CURSOR : String = "CURSOR";
	var VIEW : String = "VIEW";
	var SURFACE : String = "SURFACE";
}@:enum abstract Enum2(String) from String to String {
	var CURSOR : String = "CURSOR";
	var VIEW : String = "VIEW";
	var SURFACE : String = "SURFACE";
}@:enum abstract Enum3(String) from String to String {
	var CURSOR : String = "CURSOR";
	var VIEW : String = "VIEW";
	var SURFACE : String = "SURFACE";
}@:enum abstract Enum4(String) from String to String {
	var CURSOR : String = "CURSOR";
	var VIEW : String = "VIEW";
	var SURFACE : String = "SURFACE";
}@:enum abstract Enum5(String) from String to String {
	var ADD_REPLACE_KEYS : String = "ADD_REPLACE_KEYS";
	var REPLACE_KEYS : String = "REPLACE_KEYS";
}@:enum abstract Enum6(String) from String to String {
	var SELECT : String = "SELECT";
	var SEAM : String = "SEAM";
	var SHARP : String = "SHARP";
	var CREASE : String = "CREASE";
	var BEVEL : String = "BEVEL";
	var FREESTYLE : String = "FREESTYLE";
}@:enum abstract Enum7(String) from String to String {
	var Weak : String = "Weak";
	var Medium : String = "Medium";
	var Strong : String = "Strong";
}@:enum abstract Enum8(String) from String to String {
	var POINT : String = "POINT";
	var STROKE : String = "STROKE";
}@:enum abstract Enum9(String) from String to String {
	var ORIGIN : String = "ORIGIN";
	var CURSOR : String = "CURSOR";
	var SURFACE : String = "SURFACE";
	var STROKE : String = "STROKE";
}@:enum abstract Enum10(String) from String to String {
	var NONE : String = "NONE";
	var ENDS : String = "ENDS";
	var FIRST : String = "FIRST";
}@:enum abstract Enum11(String) from String to String {
	var KEYFRAME : String = "KEYFRAME";
	var BREAKDOWN : String = "BREAKDOWN";
	var MOVING_HOLD : String = "MOVING_HOLD";
	var EXTREME : String = "EXTREME";
	var JITTER : String = "JITTER";
}@:enum abstract Enum12(String) from String to String {
	var DISABLED : String = "DISABLED";
	var ENABLED : String = "ENABLED";
	var PROJECTED : String = "PROJECTED";
	var CONNECTED : String = "CONNECTED";
}@:enum abstract Enum13(String) from String to String {
	var SMOOTH : String = "SMOOTH";
	var SPHERE : String = "SPHERE";
	var ROOT : String = "ROOT";
	var INVERSE_SQUARE : String = "INVERSE_SQUARE";
	var SHARP : String = "SHARP";
	var LINEAR : String = "LINEAR";
	var CONSTANT : String = "CONSTANT";
	var RANDOM : String = "RANDOM";
}@:enum abstract Enum14(String) from String to String {
	var GRID : String = "GRID";
	var NODE_X : String = "NODE_X";
	var NODE_Y : String = "NODE_Y";
	var NODE_XY : String = "NODE_XY";
}@:enum abstract Enum15(String) from String to String {
	var CLOSEST : String = "CLOSEST";
	var CENTER : String = "CENTER";
	var MEDIAN : String = "MEDIAN";
	var ACTIVE : String = "ACTIVE";
}@:enum abstract Enum16(String) from String to String {
	var INCREMENT : String = "INCREMENT";
	var VERTEX : String = "VERTEX";
}@:enum abstract Enum17(String) from String to String {
	var BOUNDING_BOX_CENTER : String = "BOUNDING_BOX_CENTER";
	var CURSOR : String = "CURSOR";
	var INDIVIDUAL_ORIGINS : String = "INDIVIDUAL_ORIGINS";
	var MEDIAN_POINT : String = "MEDIAN_POINT";
	var ACTIVE_ELEMENT : String = "ACTIVE_ELEMENT";
}@:enum abstract Enum18(String) from String to String {
	var LAPLACIAN : String = "LAPLACIAN";
	var HC : String = "HC";
}@:enum abstract Enum19(String) from String to String {
	var PINCH : String = "PINCH";
	var RELAX : String = "RELAX";
	var GRAB : String = "GRAB";
}@:enum abstract Enum20(String) from String to String {
	var VERTEX : String = "VERTEX";
	var EDGE : String = "EDGE";
	var FACE : String = "FACE";
	var ISLAND : String = "ISLAND";
}@:enum abstract Enum21(String) from String to String {
	var ALL : String = "ALL";
	var BONE_DEFORM : String = "BONE_DEFORM";
	var OTHER_DEFORM : String = "OTHER_DEFORM";
}@:enum abstract Enum22(String) from String to String {
	var NONE : String = "NONE";
	var ACTIVE : String = "ACTIVE";
	var ALL : String = "ALL";
}@:native("bpy.types.ToolSettings") extern class ToolSettings {
	/**
		
		
		Type: enum in [‘CURSOR’, ‘VIEW’, ‘SURFACE’], default ‘VIEW’
	**/
	var annotation_stroke_placement_image_editor : bpy.types.toolsettings.ToolSettings.Enum1;
	/**
		
		
		Type: enum in [‘CURSOR’, ‘VIEW’, ‘SURFACE’], default ‘VIEW’
	**/
	var annotation_stroke_placement_sequencer_preview : bpy.types.toolsettings.ToolSettings.Enum2;
	/**
		
		
		Type: enum in [‘CURSOR’, ‘VIEW’, ‘SURFACE’], default ‘VIEW’
	**/
	var pyannotation_stroke_placement_view2d : bpy.types.toolsettings.ToolSettings.Enum3;
	/**
		How annotation strokes are orientated in 3D space
		
		Type: enum in [‘CURSOR’, ‘VIEW’, ‘SURFACE’], default ‘VIEW’
	**/
	var pyannotation_stroke_placement_view3d : bpy.types.toolsettings.ToolSettings.Enum4;
	/**
		Thickness of annotation strokes
		
		Type: int in [1, 10], default 0
	**/
	var annotation_thickness : Int;
	/**
		Mode of automatic keyframe insertion for Objects and Bones
		
		Type: enum in [‘ADD_REPLACE_KEYS’, ‘REPLACE_KEYS’], default ‘ADD_REPLACE_KEYS’
	**/
	var auto_keying_mode : bpy.types.toolsettings.ToolSettings.Enum5;
	/**
		
		
		Type: CurvePaintSettings, (readonly, never None)
	**/
	var curve_paint_settings(default, never) : bpy.types.curvepaintsettings.CurvePaintSettings;
	/**
		Limit for removing duplicates and ‘Auto Merge’
		
		Type: float in [0, 1], default 0.0
	**/
	var double_threshold : Float;
	/**
		Changing edges seam re-calculates UV unwrap
		
		Type: boolean, default False
	**/
	var edge_path_live_unwrap : Bool;
	/**
		The edge flag to tag when selecting the shortest path
		
		Type: enum in [‘SELECT’, ‘SEAM’, ‘SHARP’, ‘CREASE’, ‘BEVEL’, ‘FREESTYLE’], default ‘SELECT’
	**/
	var edge_path_mode : bpy.types.toolsettings.ToolSettings.Enum6;
	/**
		Set strength of face to specified value
		
		Type: enum in [‘Weak’, ‘Medium’, ‘Strong’], default ‘Medium’
	**/
	var face_strength : bpy.types.toolsettings.ToolSettings.Enum7;
	/**
		Settings for Grease Pencil Interpolation tools
		
		Type: GPencilInterpolateSettings, (readonly)
	**/
	var gpencil_interpolate(default, never) : bpy.types.gpencilinterpolatesettings.GPencilInterpolateSettings;
	/**
		
		
		Type: GpPaint, (readonly)
	**/
	var gpencil_paint(default, never) : bpy.types.gppaint.GpPaint;
	/**
		Settings for stroke sculpting tools and brushes
		
		Type: GPencilSculptSettings, (readonly)
	**/
	var gpencil_sculpt(default, never) : bpy.types.gpencilsculptsettings.GPencilSculptSettings;
	/**
		
		
		Type: enum in [‘POINT’, ‘STROKE’], default ‘POINT’
	**/
	var gpencil_selectmode : bpy.types.toolsettings.ToolSettings.Enum8;
	/**
		
		
		Type: enum in [‘ORIGIN’, ‘CURSOR’, ‘SURFACE’, ‘STROKE’], default ‘ORIGIN’
	**/
	var pygpencil_stroke_placement_view3d : bpy.types.toolsettings.ToolSettings.Enum9;
	/**
		
		
		Type: enum in [‘NONE’, ‘ENDS’, ‘FIRST’], default ‘NONE’
	**/
	var gpencil_stroke_snap_mode : bpy.types.toolsettings.ToolSettings.Enum10;
	/**
		
		
		Type: ImagePaint, (readonly)
	**/
	var image_paint(default, never) : bpy.types.imagepaint.ImagePaint;
	/**
		Type of keyframes to create when inserting keyframes
		
		Type: enum in [‘KEYFRAME’, ‘BREAKDOWN’, ‘MOVING_HOLD’, ‘EXTREME’, ‘JITTER’], default ‘KEYFRAME’
	**/
	var keyframe_type : bpy.types.toolsettings.ToolSettings.Enum11;
	/**
		Prevent marker editing
		
		Type: boolean, default False
	**/
	var lock_markers : Bool;
	/**
		Restrict select to the current mode
		
		Type: boolean, default False
	**/
	var lock_object_mode : Bool;
	/**
		Which mesh elements selection works on
		
		Type: boolean array of 3 items, default (False, False, False)
	**/
	var mesh_select_mode : Array<Bool>;
	/**
		Normal Vector used to copy, add or multiply
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var normal_vector : Array<Float>;
	/**
		
		
		Type: ParticleEdit, (readonly)
	**/
	var particle_edit(default, never) : bpy.types.particleedit.ParticleEdit;
	/**
		Proportional Editing mode, allows transforms with distance fall-off
		
		Type: enum in [‘DISABLED’, ‘ENABLED’, ‘PROJECTED’, ‘CONNECTED’], default ‘DISABLED’
	**/
	var proportional_edit : bpy.types.toolsettings.ToolSettings.Enum12;
	/**
		Falloff type for proportional editing mode
		
		Type: enum in [‘SMOOTH’, ‘SPHERE’, ‘ROOT’, ‘INVERSE_SQUARE’, ‘SHARP’, ‘LINEAR’, ‘CONSTANT’, ‘RANDOM’], default ‘SMOOTH’
	**/
	var proportional_edit_falloff : bpy.types.toolsettings.ToolSettings.Enum13;
	/**
		Display size for proportional editing circle
		
		Type: float in [1e-05, 5000], default 0.0
	**/
	var proportional_size : Float;
	/**
		
		
		Type: Sculpt, (readonly)
	**/
	var sculpt(default, never) : bpy.types.sculpt.Sculpt;
	/**
		Display only faces with the currently displayed image assigned
		
		Type: boolean, default False
	**/
	var show_uv_local_view : Bool;
	/**
		Type of element to snap to
		
		Type: enum set in {‘INCREMENT’, ‘VERTEX’, ‘EDGE’, ‘FACE’, ‘VOLUME’}, default {‘INCREMENT’}
	**/
	var snap_elements : Dynamic;
	/**
		Type of element to snap to
		
		Type: enum in [‘GRID’, ‘NODE_X’, ‘NODE_Y’, ‘NODE_XY’], default ‘GRID’
	**/
	var snap_node_element : bpy.types.toolsettings.ToolSettings.Enum14;
	/**
		Which part to snap onto the target
		
		Type: enum in [‘CLOSEST’, ‘CENTER’, ‘MEDIAN’, ‘ACTIVE’], default ‘CLOSEST’
	**/
	var snap_target : bpy.types.toolsettings.ToolSettings.Enum15;
	/**
		Type of element to snap to
		
		Type: enum in [‘INCREMENT’, ‘VERTEX’], default ‘INCREMENT’
	**/
	var snap_uv_element : bpy.types.toolsettings.ToolSettings.Enum16;
	/**
		
		
		Type: MeshStatVis, (readonly, never None)
	**/
	var statvis(default, never) : bpy.types.meshstatvis.MeshStatVis;
	/**
		Pivot center for rotation/scaling
		
		Type: enum in [‘BOUNDING_BOX_CENTER’, ‘CURSOR’, ‘INDIVIDUAL_ORIGINS’, ‘MEDIAN_POINT’, ‘ACTIVE_ELEMENT’], default ‘BOUNDING_BOX_CENTER’
	**/
	var transform_pivot_point : bpy.types.toolsettings.ToolSettings.Enum17;
	/**
		
		
		Type: UnifiedPaintSettings, (readonly, never None)
	**/
	var unified_paint_settings(default, never) : bpy.types.unifiedpaintsettings.UnifiedPaintSettings;
	/**
		Ensure all bone-deforming vertex groups add up to 1.0 while weight painting
		
		Type: boolean, default False
	**/
	var use_auto_normalize : Bool;
	/**
		
		
		Type: enum set in {‘TRANSLATE’, ‘ROTATE’, ‘SCALE’}, default {‘TRANSLATE’}
	**/
	var use_gizmo_mode : Dynamic;
	/**
		When creating new frames, the strokes from the previous/active frame are included as the basis for the new one
		
		Type: boolean, default False
	**/
	var use_gpencil_draw_additive : Bool;
	/**
		When draw new strokes, the new stroke is drawn below of all strokes in the layer
		
		Type: boolean, default False
	**/
	var use_gpencil_draw_onback : Bool;
	/**
		Only use the first and last parts of the stroke for snapping
		
		Type: boolean, default False
	**/
	var use_gpencil_stroke_endpoints : Bool;
	/**
		Show compact list of color instead of thumbnails
		
		Type: boolean, default False
	**/
	var use_gpencil_thumbnail_list : Bool;
	/**
		When creating new strokes, the weight data is added according to the current vertex group and weight, if no vertex group selected, weight is not added
		
		Type: boolean, default False
	**/
	var use_gpencil_weight_data_add : Bool;
	/**
		For channels with cyclic extrapolation, keyframe insertion is automatically remapped inside the cycle time range, and keeps ends in sync
		
		Type: boolean, default False
	**/
	var use_keyframe_cycle_aware : Bool;
	/**
		Automatic keyframe insertion for Objects and Bones
		
		Type: boolean, default False
	**/
	var use_keyframe_insert_auto : Bool;
	/**
		Automatic keyframe insertion using active Keying Set only
		
		Type: boolean, default False
	**/
	var use_keyframe_insert_keyingset : Bool;
	/**
		Automatically merge vertices moved to the same location
		
		Type: boolean, default False
	**/
	var use_mesh_automerge : Bool;
	/**
		Paint across the weights of all selected bones, maintaining their relative influence
		
		Type: boolean, default False
	**/
	var use_multipaint : Bool;
	/**
		Proportional editing in action editor
		
		Type: boolean, default False
	**/
	var use_proportional_action : Bool;
	/**
		Proportional editing mask mode
		
		Type: boolean, default False
	**/
	var use_proportional_edit_mask : Bool;
	/**
		Proportional editing object mode
		
		Type: boolean, default False
	**/
	var use_proportional_edit_objects : Bool;
	/**
		Proportional editing in FCurve editor
		
		Type: boolean, default False
	**/
	var use_proportional_fcurve : Bool;
	/**
		Add a new NLA Track + Strip for every loop/pass made over the animation to allow non-destructive tweaking
		
		Type: boolean, default False
	**/
	var use_record_with_nla : Bool;
	/**
		Snap during transform
		
		Type: boolean, default False
	**/
	var use_snap : Bool;
	/**
		Align rotation with the snapping target
		
		Type: boolean, default False
	**/
	var use_snap_align_rotation : Bool;
	/**
		Absolute grid alignment while translating (based on the pivot center)
		
		Type: boolean, default False
	**/
	var use_snap_grid_absolute : Bool;
	/**
		Consider objects as whole when finding volume center
		
		Type: boolean, default False
	**/
	var use_snap_peel_object : Bool;
	/**
		Project individual elements on the surface of other objects
		
		Type: boolean, default False
	**/
	var use_snap_project : Bool;
	/**
		Snap onto itself (Edit Mode Only)
		
		Type: boolean, default False
	**/
	var use_snap_self : Bool;
	/**
		Manipulate center points (object, pose and weight paint mode only)
		
		Type: boolean, default False
	**/
	var use_transform_pivot_point_align : Bool;
	/**
		Enable brush for UV sculpting
		
		Type: boolean, default False
	**/
	var use_uv_sculpt : Bool;
	/**
		Keep UV and edit mode mesh selection in sync
		
		Type: boolean, default False
	**/
	var use_uv_select_sync : Bool;
	/**
		Algorithm used for UV relaxation
		
		Type: enum in [‘LAPLACIAN’, ‘HC’], default ‘LAPLACIAN’
	**/
	var uv_relax_method : bpy.types.toolsettings.ToolSettings.Enum18;
	/**
		
		
		Type: UvSculpt, (readonly)
	**/
	var uv_sculpt(default, never) : bpy.types.uvsculpt.UvSculpt;
	/**
		Brush operates on all islands
		
		Type: boolean, default False
	**/
	var uv_sculpt_all_islands : Bool;
	/**
		Disable editing of boundary edges
		
		Type: boolean, default False
	**/
	var uv_sculpt_lock_borders : Bool;
	/**
		Select Tools for the UV sculpt brushes
		
		Type: enum in [‘PINCH’, ‘RELAX’, ‘GRAB’], default ‘PINCH’
	**/
	var uv_sculpt_tool : bpy.types.toolsettings.ToolSettings.Enum19;
	/**
		UV selection and display mode
		
		Type: enum in [‘VERTEX’, ‘EDGE’, ‘FACE’, ‘ISLAND’], default ‘VERTEX’
	**/
	var uv_select_mode : bpy.types.toolsettings.ToolSettings.Enum20;
	/**
		Filter Vertex groups for Display
		
		Type: enum in [‘ALL’, ‘BONE_DEFORM’, ‘OTHER_DEFORM’], default ‘ALL’
	**/
	var vertex_group_subset : bpy.types.toolsettings.ToolSettings.Enum21;
	/**
		Display unweighted vertices
		
		Type: enum in [‘NONE’, ‘ACTIVE’, ‘ALL’], default ‘NONE’
	**/
	var vertex_group_user : bpy.types.toolsettings.ToolSettings.Enum22;
	/**
		Weight to assign in vertex groups
		
		Type: float in [0, 1], default 0.0
	**/
	var vertex_group_weight : Float;
	/**
		
		
		Type: VertexPaint, (readonly)
	**/
	var vertex_paint(default, never) : bpy.types.vertexpaint.VertexPaint;
	/**
		
		
		Type: VertexPaint, (readonly)
	**/
	var weight_paint(default, never) : bpy.types.vertexpaint.VertexPaint;
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