package bpy.types.compositornodesephsva;
@:pythonImport("bpy.types.CompositorNodeSepHSVA") extern class CompositorNodeSepHSVA {
	/**
		True if a registered node type
		
		@returns boolean
	**/
	static function is_registered_node_type():Dynamic;
	/**
		Input socket template
		@param index Index — int in [0, inf]
		
		@returns NodeInternalSocketTemplate
	**/
	static function input_template(index:Int):bpy.types.nodeinternalsockettemplate.NodeInternalSocketTemplate;
	/**
		Output socket template
		@param index Index — int in [0, inf]
		
		@returns NodeInternalSocketTemplate
	**/
	static function output_template(index:Int):bpy.types.nodeinternalsockettemplate.NodeInternalSocketTemplate;
	function update():Void;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:Dynamic):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:Dynamic):Dynamic;
	/**
		Node type (deprecated, use bl_static_type or bl_idname for the actual identifier string)
		
		Type: enum in [‘CUSTOM’], default ‘CUSTOM’, (readonly)
	**/
	var type(default, never) : bpy.types.node.Node.Enum3;
	/**
		
		
		Type: float array of 2 items in [-100000, 100000], default (0.0, 0.0)
	**/
	var location : Array<Float>;
	/**
		Width of the node
		
		Type: float in [-inf, inf], default 0.0
	**/
	var width : Float;
	/**
		Width of the node in hidden state
		
		Type: float in [-inf, inf], default 0.0
	**/
	var width_hidden : Float;
	/**
		Height of the node
		
		Type: float in [-inf, inf], default 0.0
	**/
	var height : Float;
	/**
		Absolute bounding box dimensions of the node
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0), (readonly)
	**/
	var dimensions(default, never) : Array<Float>;
	/**
		Unique node identifier
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Optional custom node label
		
		Type: string, default “”, (never None)
	**/
	var label : String;
	/**
		
		
		Type: NodeInputs bpy_prop_collection of NodeSocket, (readonly)
	**/
	var inputs(default, never) : bpy.types.nodeinputs.NodeInputs;
	/**
		
		
		Type: NodeOutputs bpy_prop_collection of NodeSocket, (readonly)
	**/
	var outputs(default, never) : bpy.types.nodeoutputs.NodeOutputs;
	/**
		Internal input-to-output connections for muting
		
		Type: bpy_prop_collection of NodeLink, (readonly)
	**/
	var internal_links(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Parent this node is attached to
		
		Type: Node
	**/
	var parent : bpy.types.node.Node;
	/**
		Use custom color for the node
		
		Type: boolean, default False
	**/
	var use_custom_color : Bool;
	/**
		Custom color of the node body
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		Node selection state
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_options : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_preview : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		Draw node in viewport textured draw mode
		
		Type: boolean, default False
	**/
	var show_texture : Bool;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		The node label
		
		Type: string, default “”, (never None)
	**/
	var bl_label : String;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_description : String;
	/**
		The node icon
		
		Type: enum in [‘NONE’, ‘QUESTION’, ‘ERROR’, ‘CANCEL’, ‘TRIA_RIGHT’, ‘TRIA_DOWN’, ‘TRIA_LEFT’, ‘TRIA_UP’, ‘ARROW_LEFTRIGHT’, ‘PLUS’, ‘DISCLOSURE_TRI_RIGHT’, ‘DISCLOSURE_TRI_DOWN’, ‘RADIOBUT_OFF’, ‘RADIOBUT_ON’, ‘MENU_PANEL’, ‘BLENDER’, ‘GRIP’, ‘DOT’, ‘COLLAPSEMENU’, ‘X’, ‘DUPLICATE’, ‘NODE’, ‘NODE_SEL’, ‘WINDOW’, ‘WORKSPACE’, ‘RIGHTARROW_THIN’, ‘BORDERMOVE’, ‘VIEWZOOM’, ‘ADD’, ‘REMOVE’, ‘PANEL_CLOSE’, ‘COPY_ID’, ‘EYEDROPPER’, ‘AUTO’, ‘CHECKBOX_DEHLT’, ‘CHECKBOX_HLT’, ‘UNLOCKED’, ‘LOCKED’, ‘UNPINNED’, ‘PINNED’, ‘SCREEN_BACK’, ‘RIGHTARROW’, ‘DOWNARROW_HLT’, ‘PLUGIN’, ‘HELP’, ‘GHOST_ENABLED’, ‘COLOR’, ‘UNLINKED’, ‘LINKED’, ‘HAND’, ‘ZOOM_ALL’, ‘ZOOM_SELECTED’, ‘ZOOM_PREVIOUS’, ‘ZOOM_IN’, ‘ZOOM_OUT’, ‘DRIVER_DISTANCE’, ‘DRIVER_ROTATIONAL_DIFFERENCE’, ‘DRIVER_TRANSFORM’, ‘FREEZE’, ‘STYLUS_PRESSURE’, ‘GHOST_DISABLED’, ‘FILE_NEW’, ‘FILE_TICK’, ‘QUIT’, ‘URL’, ‘RECOVER_LAST’, ‘THREE_DOTS’, ‘FULLSCREEN_ENTER’, ‘FULLSCREEN_EXIT’, ‘LIGHT’, ‘MATERIAL’, ‘TEXTURE’, ‘ANIM’, ‘WORLD’, ‘SCENE’, ‘OUTPUT’, ‘SCRIPT’, ‘PARTICLES’, ‘PHYSICS’, ‘SPEAKER’, ‘TOOL_SETTINGS’, ‘SHADERFX’, ‘BLANK1’, ‘FAKE_USER_OFF’, ‘FAKE_USER_ON’, ‘VIEW3D’, ‘GRAPH’, ‘OUTLINER’, ‘PROPERTIES’, ‘FILEBROWSER’, ‘IMAGE’, ‘INFO’, ‘SEQUENCE’, ‘TEXT’, ‘SOUND’, ‘ACTION’, ‘NLA’, ‘PREFERENCES’, ‘TIME’, ‘NODETREE’, ‘CONSOLE’, ‘CLIP’, ‘ASSET_MANAGER’, ‘NODE_COMPOSITING’, ‘NODE_TEXTURE’, ‘NODE_MATERIAL’, ‘OBJECT_DATAMODE’, ‘EDITMODE_HLT’, ‘UV’, ‘VPAINT_HLT’, ‘TPAINT_HLT’, ‘WPAINT_HLT’, ‘SCULPTMODE_HLT’, ‘POSE_HLT’, ‘PARTICLEMODE’, ‘TRACKING’, ‘TRACKING_BACKWARDS’, ‘TRACKING_FORWARDS’, ‘TRACKING_BACKWARDS_SINGLE’, ‘TRACKING_FORWARDS_SINGLE’, ‘TRACKING_CLEAR_BACKWARDS’, ‘TRACKING_CLEAR_FORWARDS’, ‘TRACKING_REFINE_BACKWARDS’, ‘TRACKING_REFINE_FORWARDS’, ‘SCENE_DATA’, ‘RENDERLAYERS’, ‘WORLD_DATA’, ‘OBJECT_DATA’, ‘MESH_DATA’, ‘CURVE_DATA’, ‘META_DATA’, ‘LATTICE_DATA’, ‘LIGHT_DATA’, ‘MATERIAL_DATA’, ‘TEXTURE_DATA’, ‘ANIM_DATA’, ‘CAMERA_DATA’, ‘PARTICLE_DATA’, ‘LIBRARY_DATA_DIRECT’, ‘GROUP’, ‘ARMATURE_DATA’, ‘COMMUNITY’, ‘BONE_DATA’, ‘CONSTRAINT’, ‘SHAPEKEY_DATA’, ‘CONSTRAINT_BONE’, ‘CAMERA_STEREO’, ‘PACKAGE’, ‘UGLYPACKAGE’, ‘EXPERIMENTAL’, ‘BRUSH_DATA’, ‘IMAGE_DATA’, ‘FILE’, ‘FCURVE’, ‘FONT_DATA’, ‘RENDER_RESULT’, ‘SURFACE_DATA’, ‘EMPTY_DATA’, ‘PRESET’, ‘RENDER_ANIMATION’, ‘RENDER_STILL’, ‘LIBRARY_DATA_BROKEN’, ‘BOIDS’, ‘STRANDS’, ‘LIBRARY_DATA_INDIRECT’, ‘GREASEPENCIL’, ‘LINE_DATA’, ‘LIBRARY_DATA_OVERRIDE’, ‘GROUP_BONE’, ‘GROUP_VERTEX’, ‘GROUP_VCOL’, ‘GROUP_UVS’, ‘FACE_MAPS’, ‘RNA’, ‘RNA_ADD’, ‘MOUSE_LMB’, ‘MOUSE_MMB’, ‘MOUSE_RMB’, ‘MOUSE_MOVE’, ‘MOUSE_LMB_DRAG’, ‘MOUSE_MMB_DRAG’, ‘MOUSE_RMB_DRAG’, ‘PRESET_NEW’, ‘DECORATE’, ‘DECORATE_KEYFRAME’, ‘DECORATE_ANIMATE’, ‘DECORATE_DRIVER’, ‘DECORATE_LINKED’, ‘DECORATE_LIBRARY_OVERRIDE’, ‘DECORATE_UNLOCKED’, ‘DECORATE_LOCKED’, ‘DECORATE_OVERRIDE’, ‘SEALED’, ‘HEART’, ‘ORPHAN_DATA’, ‘USER’, ‘SYSTEM’, ‘SETTINGS’, ‘OUTLINER_OB_EMPTY’, ‘OUTLINER_OB_MESH’, ‘OUTLINER_OB_CURVE’, ‘OUTLINER_OB_LATTICE’, ‘OUTLINER_OB_META’, ‘OUTLINER_OB_LIGHT’, ‘OUTLINER_OB_CAMERA’, ‘OUTLINER_OB_ARMATURE’, ‘OUTLINER_OB_FONT’, ‘OUTLINER_OB_SURFACE’, ‘OUTLINER_OB_SPEAKER’, ‘OUTLINER_OB_FORCE_FIELD’, ‘OUTLINER_OB_GROUP_INSTANCE’, ‘OUTLINER_OB_GREASEPENCIL’, ‘OUTLINER_OB_LIGHTPROBE’, ‘OUTLINER_OB_IMAGE’, ‘RESTRICT_COLOR_OFF’, ‘RESTRICT_COLOR_ON’, ‘HIDE_ON’, ‘HIDE_OFF’, ‘RESTRICT_SELECT_ON’, ‘RESTRICT_SELECT_OFF’, ‘RESTRICT_RENDER_ON’, ‘RESTRICT_RENDER_OFF’, ‘OUTLINER_DATA_EMPTY’, ‘OUTLINER_DATA_MESH’, ‘OUTLINER_DATA_CURVE’, ‘OUTLINER_DATA_LATTICE’, ‘OUTLINER_DATA_META’, ‘OUTLINER_DATA_LIGHT’, ‘OUTLINER_DATA_CAMERA’, ‘OUTLINER_DATA_ARMATURE’, ‘OUTLINER_DATA_FONT’, ‘OUTLINER_DATA_SURFACE’, ‘OUTLINER_DATA_SPEAKER’, ‘OUTLINER_DATA_GREASEPENCIL’, ‘GP_SELECT_POINTS’, ‘GP_SELECT_STROKES’, ‘GP_MULTIFRAME_EDITING’, ‘GP_ONLY_SELECTED’, ‘MODIFIER_OFF’, ‘MODIFIER_ON’, ‘ONIONSKIN_OFF’, ‘ONIONSKIN_ON’, ‘RESTRICT_VIEW_ON’, ‘RESTRICT_VIEW_OFF’, ‘MESH_PLANE’, ‘MESH_CUBE’, ‘MESH_CIRCLE’, ‘MESH_UVSPHERE’, ‘MESH_ICOSPHERE’, ‘MESH_GRID’, ‘MESH_MONKEY’, ‘MESH_CYLINDER’, ‘MESH_TORUS’, ‘MESH_CONE’, ‘MESH_CAPSULE’, ‘EMPTY_SINGLE_ARROW’, ‘LIGHT_POINT’, ‘LIGHT_SUN’, ‘LIGHT_SPOT’, ‘LIGHT_HEMI’, ‘LIGHT_AREA’, ‘CUBE’, ‘SPHERE’, ‘CONE’, ‘META_PLANE’, ‘META_CUBE’, ‘META_BALL’, ‘META_ELLIPSOID’, ‘META_CAPSULE’, ‘SURFACE_NCURVE’, ‘SURFACE_NCIRCLE’, ‘SURFACE_NSURFACE’, ‘SURFACE_NCYLINDER’, ‘SURFACE_NSPHERE’, ‘SURFACE_NTORUS’, ‘EMPTY_AXIS’, ‘STROKE’, ‘EMPTY_ARROWS’, ‘CURVE_BEZCURVE’, ‘CURVE_BEZCIRCLE’, ‘CURVE_NCURVE’, ‘CURVE_NCIRCLE’, ‘CURVE_PATH’, ‘LIGHTPROBE_CUBEMAP’, ‘LIGHTPROBE_PLANAR’, ‘LIGHTPROBE_GRID’, ‘COLOR_RED’, ‘COLOR_GREEN’, ‘COLOR_BLUE’, ‘TRIA_RIGHT_BAR’, ‘TRIA_DOWN_BAR’, ‘TRIA_LEFT_BAR’, ‘TRIA_UP_BAR’, ‘FORCE_FORCE’, ‘FORCE_WIND’, ‘FORCE_VORTEX’, ‘FORCE_MAGNETIC’, ‘FORCE_HARMONIC’, ‘FORCE_CHARGE’, ‘FORCE_LENNARDJONES’, ‘FORCE_TEXTURE’, ‘FORCE_CURVE’, ‘FORCE_BOID’, ‘FORCE_TURBULENCE’, ‘FORCE_DRAG’, ‘FORCE_SMOKEFLOW’, ‘IMAGE_PLANE’, ‘IMAGE_BACKGROUND’, ‘IMAGE_REFERENCE’, ‘NODE_INSERT_ON’, ‘NODE_INSERT_OFF’, ‘NODE_TOP’, ‘NODE_SIDE’, ‘NODE_CORNER’, ‘ALIGN_LEFT’, ‘ALIGN_CENTER’, ‘ALIGN_RIGHT’, ‘ALIGN_JUSTIFY’, ‘ALIGN_FLUSH’, ‘ALIGN_TOP’, ‘ALIGN_MIDDLE’, ‘ALIGN_BOTTOM’, ‘BOLD’, ‘ITALIC’, ‘UNDERLINE’, ‘SMALL_CAPS’, ‘MODIFIER’, ‘MOD_WAVE’, ‘MOD_BUILD’, ‘MOD_DECIM’, ‘MOD_MIRROR’, ‘MOD_SOFT’, ‘MOD_SUBSURF’, ‘HOOK’, ‘MOD_PHYSICS’, ‘MOD_PARTICLES’, ‘MOD_BOOLEAN’, ‘MOD_EDGESPLIT’, ‘MOD_ARRAY’, ‘MOD_UVPROJECT’, ‘MOD_DISPLACE’, ‘MOD_CURVE’, ‘MOD_LATTICE’, ‘MOD_TINT’, ‘MOD_ARMATURE’, ‘MOD_SHRINKWRAP’, ‘MOD_CAST’, ‘MOD_MESHDEFORM’, ‘MOD_BEVEL’, ‘MOD_SMOOTH’, ‘MOD_SIMPLEDEFORM’, ‘MOD_MASK’, ‘MOD_CLOTH’, ‘MOD_EXPLODE’, ‘MOD_FLUIDSIM’, ‘MOD_MULTIRES’, ‘MOD_SMOKE’, ‘MOD_SOLIDIFY’, ‘MOD_SCREW’, ‘MOD_VERTEX_WEIGHT’, ‘MOD_DYNAMICPAINT’, ‘MOD_REMESH’, ‘MOD_OCEAN’, ‘MOD_WARP’, ‘MOD_SKIN’, ‘MOD_TRIANGULATE’, ‘MOD_WIREFRAME’, ‘MOD_DATA_TRANSFER’, ‘MOD_NORMALEDIT’, ‘MOD_PARTICLE_INSTANCE’, ‘MOD_HUE_SATURATION’, ‘MOD_NOISE’, ‘MOD_OFFSET’, ‘MOD_SIMPLIFY’, ‘MOD_THICKNESS’, ‘MOD_INSTANCE’, ‘MOD_TIME’, ‘MOD_OPACITY’, ‘REC’, ‘PLAY’, ‘FF’, ‘REW’, ‘PAUSE’, ‘PREV_KEYFRAME’, ‘NEXT_KEYFRAME’, ‘PLAY_REVERSE’, ‘PREVIEW_RANGE’, ‘ACTION_TWEAK’, ‘PMARKER_ACT’, ‘PMARKER_SEL’, ‘PMARKER’, ‘MARKER_HLT’, ‘MARKER’, ‘KEYFRAME_HLT’, ‘KEYFRAME’, ‘KEYINGSET’, ‘KEY_DEHLT’, ‘KEY_HLT’, ‘MUTE_IPO_OFF’, ‘MUTE_IPO_ON’, ‘VISIBLE_IPO_OFF’, ‘VISIBLE_IPO_ON’, ‘DRIVER’, ‘SOLO_OFF’, ‘SOLO_ON’, ‘FRAME_PREV’, ‘FRAME_NEXT’, ‘NLA_PUSHDOWN’, ‘IPO_CONSTANT’, ‘IPO_LINEAR’, ‘IPO_BEZIER’, ‘IPO_SINE’, ‘IPO_QUAD’, ‘IPO_CUBIC’, ‘IPO_QUART’, ‘IPO_QUINT’, ‘IPO_EXPO’, ‘IPO_CIRC’, ‘IPO_BOUNCE’, ‘IPO_ELASTIC’, ‘IPO_BACK’, ‘IPO_EASE_IN’, ‘IPO_EASE_OUT’, ‘IPO_EASE_IN_OUT’, ‘NORMALIZE_FCURVES’, ‘VERTEXSEL’, ‘EDGESEL’, ‘FACESEL’, ‘PIVOT_BOUNDBOX’, ‘PIVOT_CURSOR’, ‘PIVOT_INDIVIDUAL’, ‘PIVOT_MEDIAN’, ‘PIVOT_ACTIVE’, ‘CENTER_ONLY’, ‘SMOOTHCURVE’, ‘SPHERECURVE’, ‘ROOTCURVE’, ‘SHARPCURVE’, ‘LINCURVE’, ‘NOCURVE’, ‘RNDCURVE’, ‘PROP_OFF’, ‘PROP_ON’, ‘PROP_CON’, ‘SCULPT_DYNTOPO’, ‘PARTICLE_POINT’, ‘PARTICLE_TIP’, ‘PARTICLE_PATH’, ‘SNAP_OFF’, ‘SNAP_ON’, ‘SNAP_NORMAL’, ‘SNAP_GRID’, ‘SNAP_VERTEX’, ‘SNAP_EDGE’, ‘SNAP_FACE’, ‘SNAP_VOLUME’, ‘SNAP_INCREMENT’, ‘STICKY_UVS_LOC’, ‘STICKY_UVS_DISABLE’, ‘STICKY_UVS_VERT’, ‘CLIPUV_DEHLT’, ‘CLIPUV_HLT’, ‘SNAP_PEEL_OBJECT’, ‘GRID’, ‘OBJECT_ORIGIN’, ‘ORIENTATION_GLOBAL’, ‘ORIENTATION_GIMBAL’, ‘ORIENTATION_LOCAL’, ‘ORIENTATION_NORMAL’, ‘ORIENTATION_VIEW’, ‘COPYDOWN’, ‘PASTEDOWN’, ‘PASTEFLIPUP’, ‘PASTEFLIPDOWN’, ‘VIS_SEL_11’, ‘VIS_SEL_10’, ‘VIS_SEL_01’, ‘VIS_SEL_00’, ‘AUTOMERGE_ON’, ‘AUTOMERGE_OFF’, ‘UV_VERTEXSEL’, ‘UV_EDGESEL’, ‘UV_FACESEL’, ‘UV_ISLANDSEL’, ‘UV_SYNC_SELECT’, ‘NORMALS_VERTEX’, ‘NORMALS_FACE’, ‘NORMALS_VERTEX_FACE’, ‘SHADING_BBOX’, ‘SHADING_WIRE’, ‘SHADING_SOLID’, ‘SHADING_RENDERED’, ‘SHADING_TEXTURE’, ‘OVERLAY’, ‘XRAY’, ‘LOCKVIEW_OFF’, ‘LOCKVIEW_ON’, ‘AXIS_SIDE’, ‘AXIS_FRONT’, ‘AXIS_TOP’, ‘NDOF_DOM’, ‘NDOF_TURN’, ‘NDOF_FLY’, ‘NDOF_TRANS’, ‘LAYER_USED’, ‘LAYER_ACTIVE’, ‘SORTALPHA’, ‘SORTBYEXT’, ‘SORTTIME’, ‘SORTSIZE’, ‘SHORTDISPLAY’, ‘LONGDISPLAY’, ‘IMGDISPLAY’, ‘BOOKMARKS’, ‘FONTPREVIEW’, ‘FILTER’, ‘NEWFOLDER’, ‘FILE_PARENT’, ‘FILE_REFRESH’, ‘FILE_FOLDER’, ‘FILE_BLANK’, ‘FILE_BLEND’, ‘FILE_IMAGE’, ‘FILE_MOVIE’, ‘FILE_SCRIPT’, ‘FILE_SOUND’, ‘FILE_FONT’, ‘FILE_TEXT’, ‘SORT_DESC’, ‘SORT_ASC’, ‘LINK_BLEND’, ‘APPEND_BLEND’, ‘IMPORT’, ‘EXPORT’, ‘LOOP_BACK’, ‘LOOP_FORWARDS’, ‘BACK’, ‘FORWARD’, ‘FILE_VOLUME’, ‘ALEMBIC’, ‘VOLUME’, ‘FILE_HIDDEN’, ‘FILE_BACKUP’, ‘DISK_DRIVE’, ‘MATPLANE’, ‘MATSPHERE’, ‘MATCUBE’, ‘MONKEY’, ‘HAIR’, ‘ALIASED’, ‘ANTIALIASED’, ‘MAT_SPHERE_SKY’, ‘MATSHADERBALL’, ‘MATCLOTH’, ‘MATFLUID’, ‘WORDWRAP_OFF’, ‘WORDWRAP_ON’, ‘SYNTAX_OFF’, ‘SYNTAX_ON’, ‘LINENUMBERS_OFF’, ‘LINENUMBERS_ON’, ‘SCRIPTPLUGINS’, ‘SEQ_SEQUENCER’, ‘SEQ_PREVIEW’, ‘SEQ_LUMA_WAVEFORM’, ‘SEQ_CHROMA_SCOPE’, ‘SEQ_HISTOGRAM’, ‘SEQ_SPLITVIEW’, ‘IMAGE_RGB’, ‘IMAGE_RGB_ALPHA’, ‘IMAGE_ALPHA’, ‘IMAGE_ZDEPTH’, ‘VIEW_PERSPECTIVE’, ‘VIEW_ORTHO’, ‘VIEW_CAMERA’, ‘VIEW_PAN’, ‘VIEW_ZOOM’, ‘BRUSH_ADD’, ‘BRUSH_BLOB’, ‘BRUSH_BLUR’, ‘BRUSH_CLAY’, ‘BRUSH_CLAY_STRIPS’, ‘BRUSH_CLONE’, ‘BRUSH_CREASE’, ‘BRUSH_DARKEN’, ‘BRUSH_FILL’, ‘BRUSH_FLATTEN’, ‘BRUSH_GRAB’, ‘BRUSH_INFLATE’, ‘BRUSH_LAYER’, ‘BRUSH_LIGHTEN’, ‘BRUSH_MASK’, ‘BRUSH_MIX’, ‘BRUSH_MULTIPLY’, ‘BRUSH_NUDGE’, ‘BRUSH_PINCH’, ‘BRUSH_SCRAPE’, ‘BRUSH_SCULPT_DRAW’, ‘BRUSH_SMEAR’, ‘BRUSH_SMOOTH’, ‘BRUSH_SNAKE_HOOK’, ‘BRUSH_SOFTEN’, ‘BRUSH_SUBTRACT’, ‘BRUSH_TEXDRAW’, ‘BRUSH_TEXFILL’, ‘BRUSH_TEXMASK’, ‘BRUSH_THUMB’, ‘BRUSH_ROTATE’, ‘BRUSH_VERTEXDRAW’, ‘MATCAP_01’, ‘MATCAP_02’, ‘MATCAP_03’, ‘MATCAP_04’, ‘MATCAP_05’, ‘MATCAP_06’, ‘MATCAP_07’, ‘MATCAP_08’, ‘MATCAP_09’, ‘MATCAP_10’, ‘MATCAP_11’, ‘MATCAP_12’, ‘MATCAP_13’, ‘MATCAP_14’, ‘MATCAP_15’, ‘MATCAP_16’, ‘MATCAP_17’, ‘MATCAP_18’, ‘MATCAP_19’, ‘MATCAP_20’, ‘MATCAP_21’, ‘MATCAP_22’, ‘MATCAP_23’, ‘MATCAP_24’, ‘GPBRUSH_SMOOTH’, ‘GPBRUSH_THICKNESS’, ‘GPBRUSH_STRENGTH’, ‘GPBRUSH_GRAB’, ‘GPBRUSH_PUSH’, ‘GPBRUSH_TWIST’, ‘GPBRUSH_PINCH’, ‘GPBRUSH_RANDOMIZE’, ‘GPBRUSH_CLONE’, ‘GPBRUSH_WEIGHT’, ‘GPBRUSH_PENCIL’, ‘GPBRUSH_PEN’, ‘GPBRUSH_INK’, ‘GPBRUSH_INKNOISE’, ‘GPBRUSH_BLOCK’, ‘GPBRUSH_MARKER’, ‘GPBRUSH_CUSTOM’, ‘GPBRUSH_FILL’, ‘GPBRUSH_ERASE_SOFT’, ‘GPBRUSH_ERASE_HARD’, ‘GPBRUSH_ERASE_STROKE’, ‘SMALL_TRI_RIGHT_VEC’, ‘KEYTYPE_KEYFRAME_VEC’, ‘KEYTYPE_BREAKDOWN_VEC’, ‘KEYTYPE_EXTREME_VEC’, ‘KEYTYPE_JITTER_VEC’, ‘KEYTYPE_MOVING_HOLD_VEC’, ‘HANDLETYPE_FREE_VEC’, ‘HANDLETYPE_ALIGNED_VEC’, ‘HANDLETYPE_VECTOR_VEC’, ‘HANDLETYPE_AUTO_VEC’, ‘HANDLETYPE_AUTO_CLAMP_VEC’, ‘COLORSET_01_VEC’, ‘COLORSET_02_VEC’, ‘COLORSET_03_VEC’, ‘COLORSET_04_VEC’, ‘COLORSET_05_VEC’, ‘COLORSET_06_VEC’, ‘COLORSET_07_VEC’, ‘COLORSET_08_VEC’, ‘COLORSET_09_VEC’, ‘COLORSET_10_VEC’, ‘COLORSET_11_VEC’, ‘COLORSET_12_VEC’, ‘COLORSET_13_VEC’, ‘COLORSET_14_VEC’, ‘COLORSET_15_VEC’, ‘COLORSET_16_VEC’, ‘COLORSET_17_VEC’, ‘COLORSET_18_VEC’, ‘COLORSET_19_VEC’, ‘COLORSET_20_VEC’, ‘EVENT_A’, ‘EVENT_B’, ‘EVENT_C’, ‘EVENT_D’, ‘EVENT_E’, ‘EVENT_F’, ‘EVENT_G’, ‘EVENT_H’, ‘EVENT_I’, ‘EVENT_J’, ‘EVENT_K’, ‘EVENT_L’, ‘EVENT_M’, ‘EVENT_N’, ‘EVENT_O’, ‘EVENT_P’, ‘EVENT_Q’, ‘EVENT_R’, ‘EVENT_S’, ‘EVENT_T’, ‘EVENT_U’, ‘EVENT_V’, ‘EVENT_W’, ‘EVENT_X’, ‘EVENT_Y’, ‘EVENT_Z’, ‘EVENT_SHIFT’, ‘EVENT_CTRL’, ‘EVENT_ALT’, ‘EVENT_OS’, ‘EVENT_F1’, ‘EVENT_F2’, ‘EVENT_F3’, ‘EVENT_F4’, ‘EVENT_F5’, ‘EVENT_F6’, ‘EVENT_F7’, ‘EVENT_F8’, ‘EVENT_F9’, ‘EVENT_F10’, ‘EVENT_F11’, ‘EVENT_F12’, ‘EVENT_ESC’, ‘EVENT_TAB’, ‘EVENT_PAGEUP’, ‘EVENT_PAGEDOWN’, ‘EVENT_HOME’, ‘EVENT_END’, ‘EVENT_RETURN’], default ‘NODE’
	**/
	var bl_icon : bpy.types.node.Node.Enum1;
	/**
		Node type (deprecated, use with care)
		
		Type: enum in [‘CUSTOM’], default ‘CUSTOM’
	**/
	var bl_static_type : bpy.types.node.Node.Enum2;
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var bl_width_default : Float;
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var bl_width_min : Float;
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var bl_width_max : Float;
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var bl_height_default : Float;
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var bl_height_min : Float;
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var bl_height_max : Float;
	/**
		Update after property changes
	**/
	function socket_value_update():Void;
	/**
		True if a registered node type
		
		@returns boolean
	**/
	static function is_registered_node_type():Dynamic;
	/**
		If non-null output is returned, the node type can be added to the tree
		@param node_tree Node Tree — NodeTree
		
		@returns boolean
	**/
	static function poll(node_tree:Dynamic):Dynamic;
	/**
		If non-null output is returned, the node can be added to the tree
		@param node_tree Node Tree — NodeTree
		
		@returns boolean
	**/
	function poll_instance(node_tree:Dynamic):Dynamic;
	/**
		Update on editor changes
	**/
	function update():Void;
	/**
		Handle creation of a link to or from the node
		@param link Link, Node link that will be inserted — NodeLink, (never None)
	**/
	function insert_link(link:bpy.types.nodelink.NodeLink):Void;
	/**
		Initialize a new instance of this node
	**/
	function init():Void;
	/**
		Initialize a new instance of this node from an existing node
		@param node Node, Existing node to copy — Node, (never None)
	**/
	function copy(node:Dynamic):Void;
	/**
		Clean up node on removal
	**/
	function free():Void;
	/**
		Draw node buttons
		@param layout Layout, Layout in the UI — UILayout, (never None)
	**/
	function draw_buttons(layout:bpy.types.uilayout.UILayout):Void;
	/**
		Draw node buttons in the sidebar
		@param layout Layout, Layout in the UI — UILayout, (never None)
	**/
	function draw_buttons_ext(layout:bpy.types.uilayout.UILayout):Void;
	/**
		Returns a dynamic label string
		
		@returns string, (never None)
	**/
	function draw_label():String;
	/**
		If non-null output is returned, the node type can be added to the tree
		@param node_tree Node Tree — NodeTree
		
		@returns boolean
	**/
	static function poll(node_tree:Dynamic):Dynamic;
	/**
		If non-null output is returned, the node type can be added to the tree
		@param node_tree Node Tree — NodeTree
		
		@returns boolean
	**/
	static function poll(node_tree:Dynamic):Dynamic;
	/**
		If non-null output is returned, the node type can be added to the tree
		@param node_tree Node Tree — NodeTree
		
		@returns boolean
	**/
	static function poll(node_tree:Dynamic):Dynamic;
	/**
		If non-null output is returned, the node type can be added to the tree
		@param node_tree Node Tree — NodeTree
		
		@returns boolean
	**/
	static function poll(node_tree:Dynamic):Dynamic;
	/**
		If non-null output is returned, the node can be added to the tree
		@param node_tree Node Tree — NodeTree
		
		@returns boolean
	**/
	function poll_instance(node_tree:Dynamic):Dynamic;
	/**
		If non-null output is returned, the node can be added to the tree
		@param node_tree Node Tree — NodeTree
		
		@returns boolean
	**/
	function poll_instance(node_tree:Dynamic):Dynamic;
	/**
		Update on editor changes
	**/
	function update():Void;
	/**
		Update on editor changes
	**/
	function update():Void;
	/**
		Draw node buttons
		@param layout Layout, Layout in the UI — UILayout, (never None)
	**/
	function draw_buttons(layout:bpy.types.uilayout.UILayout):Void;
	/**
		Draw node buttons
		@param layout Layout, Layout in the UI — UILayout, (never None)
	**/
	function draw_buttons(layout:bpy.types.uilayout.UILayout):Void;
	/**
		Draw node buttons in the sidebar
		@param layout Layout, Layout in the UI — UILayout, (never None)
	**/
	function draw_buttons_ext(layout:bpy.types.uilayout.UILayout):Void;
	/**
		Draw node buttons in the sidebar
		@param layout Layout, Layout in the UI — UILayout, (never None)
	**/
	function draw_buttons_ext(layout:bpy.types.uilayout.UILayout):Void;
	/**
		Tag the node for compositor update
	**/
	function tag_need_exec():Void;
	function update():Void;
	/**
		Update on editor changes
	**/
	function update():Void;
	/**
		Update on editor changes
	**/
	function update():Void;
	/**
		Update on editor changes
	**/
	function update():Void;
}