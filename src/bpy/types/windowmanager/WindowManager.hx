package bpy.types.windowmanager;
@:enum abstract Enum1(String) from String to String {
	var  : String = "";
}@:enum abstract Enum2(String) from String to String {
	var NONE : String = "NONE";
	var QUESTION : String = "QUESTION";
	var ERROR : String = "ERROR";
	var CANCEL : String = "CANCEL";
	var TRIA_RIGHT : String = "TRIA_RIGHT";
	var TRIA_DOWN : String = "TRIA_DOWN";
	var TRIA_LEFT : String = "TRIA_LEFT";
	var TRIA_UP : String = "TRIA_UP";
	var ARROW_LEFTRIGHT : String = "ARROW_LEFTRIGHT";
	var PLUS : String = "PLUS";
	var DISCLOSURE_TRI_RIGHT : String = "DISCLOSURE_TRI_RIGHT";
	var DISCLOSURE_TRI_DOWN : String = "DISCLOSURE_TRI_DOWN";
	var RADIOBUT_OFF : String = "RADIOBUT_OFF";
	var RADIOBUT_ON : String = "RADIOBUT_ON";
	var MENU_PANEL : String = "MENU_PANEL";
	var BLENDER : String = "BLENDER";
	var GRIP : String = "GRIP";
	var DOT : String = "DOT";
	var COLLAPSEMENU : String = "COLLAPSEMENU";
	var X : String = "X";
	var DUPLICATE : String = "DUPLICATE";
	var NODE : String = "NODE";
	var NODE_SEL : String = "NODE_SEL";
	var WINDOW : String = "WINDOW";
	var WORKSPACE : String = "WORKSPACE";
	var RIGHTARROW_THIN : String = "RIGHTARROW_THIN";
	var BORDERMOVE : String = "BORDERMOVE";
	var VIEWZOOM : String = "VIEWZOOM";
	var ADD : String = "ADD";
	var REMOVE : String = "REMOVE";
	var PANEL_CLOSE : String = "PANEL_CLOSE";
	var COPY_ID : String = "COPY_ID";
	var EYEDROPPER : String = "EYEDROPPER";
	var AUTO : String = "AUTO";
	var CHECKBOX_DEHLT : String = "CHECKBOX_DEHLT";
	var CHECKBOX_HLT : String = "CHECKBOX_HLT";
	var UNLOCKED : String = "UNLOCKED";
	var LOCKED : String = "LOCKED";
	var UNPINNED : String = "UNPINNED";
	var PINNED : String = "PINNED";
	var SCREEN_BACK : String = "SCREEN_BACK";
	var RIGHTARROW : String = "RIGHTARROW";
	var DOWNARROW_HLT : String = "DOWNARROW_HLT";
	var PLUGIN : String = "PLUGIN";
	var HELP : String = "HELP";
	var GHOST_ENABLED : String = "GHOST_ENABLED";
	var COLOR : String = "COLOR";
	var UNLINKED : String = "UNLINKED";
	var LINKED : String = "LINKED";
	var HAND : String = "HAND";
	var ZOOM_ALL : String = "ZOOM_ALL";
	var ZOOM_SELECTED : String = "ZOOM_SELECTED";
	var ZOOM_PREVIOUS : String = "ZOOM_PREVIOUS";
	var ZOOM_IN : String = "ZOOM_IN";
	var ZOOM_OUT : String = "ZOOM_OUT";
	var DRIVER_DISTANCE : String = "DRIVER_DISTANCE";
	var DRIVER_ROTATIONAL_DIFFERENCE : String = "DRIVER_ROTATIONAL_DIFFERENCE";
	var DRIVER_TRANSFORM : String = "DRIVER_TRANSFORM";
	var FREEZE : String = "FREEZE";
	var STYLUS_PRESSURE : String = "STYLUS_PRESSURE";
	var GHOST_DISABLED : String = "GHOST_DISABLED";
	var FILE_NEW : String = "FILE_NEW";
	var FILE_TICK : String = "FILE_TICK";
	var QUIT : String = "QUIT";
	var URL : String = "URL";
	var RECOVER_LAST : String = "RECOVER_LAST";
	var THREE_DOTS : String = "THREE_DOTS";
	var FULLSCREEN_ENTER : String = "FULLSCREEN_ENTER";
	var FULLSCREEN_EXIT : String = "FULLSCREEN_EXIT";
	var LIGHT : String = "LIGHT";
	var MATERIAL : String = "MATERIAL";
	var TEXTURE : String = "TEXTURE";
	var ANIM : String = "ANIM";
	var WORLD : String = "WORLD";
	var SCENE : String = "SCENE";
	var OUTPUT : String = "OUTPUT";
	var SCRIPT : String = "SCRIPT";
	var PARTICLES : String = "PARTICLES";
	var PHYSICS : String = "PHYSICS";
	var SPEAKER : String = "SPEAKER";
	var TOOL_SETTINGS : String = "TOOL_SETTINGS";
	var SHADERFX : String = "SHADERFX";
	var BLANK1 : String = "BLANK1";
	var FAKE_USER_OFF : String = "FAKE_USER_OFF";
	var FAKE_USER_ON : String = "FAKE_USER_ON";
	var VIEW3D : String = "VIEW3D";
	var GRAPH : String = "GRAPH";
	var OUTLINER : String = "OUTLINER";
	var PROPERTIES : String = "PROPERTIES";
	var FILEBROWSER : String = "FILEBROWSER";
	var IMAGE : String = "IMAGE";
	var INFO : String = "INFO";
	var SEQUENCE : String = "SEQUENCE";
	var TEXT : String = "TEXT";
	var SOUND : String = "SOUND";
	var ACTION : String = "ACTION";
	var NLA : String = "NLA";
	var PREFERENCES : String = "PREFERENCES";
	var TIME : String = "TIME";
	var NODETREE : String = "NODETREE";
	var CONSOLE : String = "CONSOLE";
	var CLIP : String = "CLIP";
	var ASSET_MANAGER : String = "ASSET_MANAGER";
	var NODE_COMPOSITING : String = "NODE_COMPOSITING";
	var NODE_TEXTURE : String = "NODE_TEXTURE";
	var NODE_MATERIAL : String = "NODE_MATERIAL";
	var OBJECT_DATAMODE : String = "OBJECT_DATAMODE";
	var EDITMODE_HLT : String = "EDITMODE_HLT";
	var UV : String = "UV";
	var VPAINT_HLT : String = "VPAINT_HLT";
	var TPAINT_HLT : String = "TPAINT_HLT";
	var WPAINT_HLT : String = "WPAINT_HLT";
	var SCULPTMODE_HLT : String = "SCULPTMODE_HLT";
	var POSE_HLT : String = "POSE_HLT";
	var PARTICLEMODE : String = "PARTICLEMODE";
	var TRACKING : String = "TRACKING";
	var TRACKING_BACKWARDS : String = "TRACKING_BACKWARDS";
	var TRACKING_FORWARDS : String = "TRACKING_FORWARDS";
	var TRACKING_BACKWARDS_SINGLE : String = "TRACKING_BACKWARDS_SINGLE";
	var TRACKING_FORWARDS_SINGLE : String = "TRACKING_FORWARDS_SINGLE";
	var TRACKING_CLEAR_BACKWARDS : String = "TRACKING_CLEAR_BACKWARDS";
	var TRACKING_CLEAR_FORWARDS : String = "TRACKING_CLEAR_FORWARDS";
	var TRACKING_REFINE_BACKWARDS : String = "TRACKING_REFINE_BACKWARDS";
	var TRACKING_REFINE_FORWARDS : String = "TRACKING_REFINE_FORWARDS";
	var SCENE_DATA : String = "SCENE_DATA";
	var RENDERLAYERS : String = "RENDERLAYERS";
	var WORLD_DATA : String = "WORLD_DATA";
	var OBJECT_DATA : String = "OBJECT_DATA";
	var MESH_DATA : String = "MESH_DATA";
	var CURVE_DATA : String = "CURVE_DATA";
	var META_DATA : String = "META_DATA";
	var LATTICE_DATA : String = "LATTICE_DATA";
	var LIGHT_DATA : String = "LIGHT_DATA";
	var MATERIAL_DATA : String = "MATERIAL_DATA";
	var TEXTURE_DATA : String = "TEXTURE_DATA";
	var ANIM_DATA : String = "ANIM_DATA";
	var CAMERA_DATA : String = "CAMERA_DATA";
	var PARTICLE_DATA : String = "PARTICLE_DATA";
	var LIBRARY_DATA_DIRECT : String = "LIBRARY_DATA_DIRECT";
	var GROUP : String = "GROUP";
	var ARMATURE_DATA : String = "ARMATURE_DATA";
	var COMMUNITY : String = "COMMUNITY";
	var BONE_DATA : String = "BONE_DATA";
	var CONSTRAINT : String = "CONSTRAINT";
	var SHAPEKEY_DATA : String = "SHAPEKEY_DATA";
	var CONSTRAINT_BONE : String = "CONSTRAINT_BONE";
	var CAMERA_STEREO : String = "CAMERA_STEREO";
	var PACKAGE : String = "PACKAGE";
	var UGLYPACKAGE : String = "UGLYPACKAGE";
	var EXPERIMENTAL : String = "EXPERIMENTAL";
	var BRUSH_DATA : String = "BRUSH_DATA";
	var IMAGE_DATA : String = "IMAGE_DATA";
	var FILE : String = "FILE";
	var FCURVE : String = "FCURVE";
	var FONT_DATA : String = "FONT_DATA";
	var RENDER_RESULT : String = "RENDER_RESULT";
	var SURFACE_DATA : String = "SURFACE_DATA";
	var EMPTY_DATA : String = "EMPTY_DATA";
	var PRESET : String = "PRESET";
	var RENDER_ANIMATION : String = "RENDER_ANIMATION";
	var RENDER_STILL : String = "RENDER_STILL";
	var LIBRARY_DATA_BROKEN : String = "LIBRARY_DATA_BROKEN";
	var BOIDS : String = "BOIDS";
	var STRANDS : String = "STRANDS";
	var LIBRARY_DATA_INDIRECT : String = "LIBRARY_DATA_INDIRECT";
	var GREASEPENCIL : String = "GREASEPENCIL";
	var LINE_DATA : String = "LINE_DATA";
	var LIBRARY_DATA_OVERRIDE : String = "LIBRARY_DATA_OVERRIDE";
	var GROUP_BONE : String = "GROUP_BONE";
	var GROUP_VERTEX : String = "GROUP_VERTEX";
	var GROUP_VCOL : String = "GROUP_VCOL";
	var GROUP_UVS : String = "GROUP_UVS";
	var FACE_MAPS : String = "FACE_MAPS";
	var RNA : String = "RNA";
	var RNA_ADD : String = "RNA_ADD";
	var MOUSE_LMB : String = "MOUSE_LMB";
	var MOUSE_MMB : String = "MOUSE_MMB";
	var MOUSE_RMB : String = "MOUSE_RMB";
	var MOUSE_MOVE : String = "MOUSE_MOVE";
	var MOUSE_LMB_DRAG : String = "MOUSE_LMB_DRAG";
	var MOUSE_MMB_DRAG : String = "MOUSE_MMB_DRAG";
	var MOUSE_RMB_DRAG : String = "MOUSE_RMB_DRAG";
	var PRESET_NEW : String = "PRESET_NEW";
	var DECORATE : String = "DECORATE";
	var DECORATE_KEYFRAME : String = "DECORATE_KEYFRAME";
	var DECORATE_ANIMATE : String = "DECORATE_ANIMATE";
	var DECORATE_DRIVER : String = "DECORATE_DRIVER";
	var DECORATE_LINKED : String = "DECORATE_LINKED";
	var DECORATE_LIBRARY_OVERRIDE : String = "DECORATE_LIBRARY_OVERRIDE";
	var DECORATE_UNLOCKED : String = "DECORATE_UNLOCKED";
	var DECORATE_LOCKED : String = "DECORATE_LOCKED";
	var DECORATE_OVERRIDE : String = "DECORATE_OVERRIDE";
	var SEALED : String = "SEALED";
	var HEART : String = "HEART";
	var ORPHAN_DATA : String = "ORPHAN_DATA";
	var USER : String = "USER";
	var SYSTEM : String = "SYSTEM";
	var SETTINGS : String = "SETTINGS";
	var OUTLINER_OB_EMPTY : String = "OUTLINER_OB_EMPTY";
	var OUTLINER_OB_MESH : String = "OUTLINER_OB_MESH";
	var OUTLINER_OB_CURVE : String = "OUTLINER_OB_CURVE";
	var OUTLINER_OB_LATTICE : String = "OUTLINER_OB_LATTICE";
	var OUTLINER_OB_META : String = "OUTLINER_OB_META";
	var OUTLINER_OB_LIGHT : String = "OUTLINER_OB_LIGHT";
	var OUTLINER_OB_CAMERA : String = "OUTLINER_OB_CAMERA";
	var OUTLINER_OB_ARMATURE : String = "OUTLINER_OB_ARMATURE";
	var OUTLINER_OB_FONT : String = "OUTLINER_OB_FONT";
	var OUTLINER_OB_SURFACE : String = "OUTLINER_OB_SURFACE";
	var OUTLINER_OB_SPEAKER : String = "OUTLINER_OB_SPEAKER";
	var OUTLINER_OB_FORCE_FIELD : String = "OUTLINER_OB_FORCE_FIELD";
	var OUTLINER_OB_GROUP_INSTANCE : String = "OUTLINER_OB_GROUP_INSTANCE";
	var OUTLINER_OB_GREASEPENCIL : String = "OUTLINER_OB_GREASEPENCIL";
	var OUTLINER_OB_LIGHTPROBE : String = "OUTLINER_OB_LIGHTPROBE";
	var OUTLINER_OB_IMAGE : String = "OUTLINER_OB_IMAGE";
	var RESTRICT_COLOR_OFF : String = "RESTRICT_COLOR_OFF";
	var RESTRICT_COLOR_ON : String = "RESTRICT_COLOR_ON";
	var HIDE_ON : String = "HIDE_ON";
	var HIDE_OFF : String = "HIDE_OFF";
	var RESTRICT_SELECT_ON : String = "RESTRICT_SELECT_ON";
	var RESTRICT_SELECT_OFF : String = "RESTRICT_SELECT_OFF";
	var RESTRICT_RENDER_ON : String = "RESTRICT_RENDER_ON";
	var RESTRICT_RENDER_OFF : String = "RESTRICT_RENDER_OFF";
	var OUTLINER_DATA_EMPTY : String = "OUTLINER_DATA_EMPTY";
	var OUTLINER_DATA_MESH : String = "OUTLINER_DATA_MESH";
	var OUTLINER_DATA_CURVE : String = "OUTLINER_DATA_CURVE";
	var OUTLINER_DATA_LATTICE : String = "OUTLINER_DATA_LATTICE";
	var OUTLINER_DATA_META : String = "OUTLINER_DATA_META";
	var OUTLINER_DATA_LIGHT : String = "OUTLINER_DATA_LIGHT";
	var OUTLINER_DATA_CAMERA : String = "OUTLINER_DATA_CAMERA";
	var OUTLINER_DATA_ARMATURE : String = "OUTLINER_DATA_ARMATURE";
	var OUTLINER_DATA_FONT : String = "OUTLINER_DATA_FONT";
	var OUTLINER_DATA_SURFACE : String = "OUTLINER_DATA_SURFACE";
	var OUTLINER_DATA_SPEAKER : String = "OUTLINER_DATA_SPEAKER";
	var OUTLINER_DATA_GREASEPENCIL : String = "OUTLINER_DATA_GREASEPENCIL";
	var GP_SELECT_POINTS : String = "GP_SELECT_POINTS";
	var GP_SELECT_STROKES : String = "GP_SELECT_STROKES";
	var GP_MULTIFRAME_EDITING : String = "GP_MULTIFRAME_EDITING";
	var GP_ONLY_SELECTED : String = "GP_ONLY_SELECTED";
	var MODIFIER_OFF : String = "MODIFIER_OFF";
	var MODIFIER_ON : String = "MODIFIER_ON";
	var ONIONSKIN_OFF : String = "ONIONSKIN_OFF";
	var ONIONSKIN_ON : String = "ONIONSKIN_ON";
	var RESTRICT_VIEW_ON : String = "RESTRICT_VIEW_ON";
	var RESTRICT_VIEW_OFF : String = "RESTRICT_VIEW_OFF";
	var MESH_PLANE : String = "MESH_PLANE";
	var MESH_CUBE : String = "MESH_CUBE";
	var MESH_CIRCLE : String = "MESH_CIRCLE";
	var MESH_UVSPHERE : String = "MESH_UVSPHERE";
	var MESH_ICOSPHERE : String = "MESH_ICOSPHERE";
	var MESH_GRID : String = "MESH_GRID";
	var MESH_MONKEY : String = "MESH_MONKEY";
	var MESH_CYLINDER : String = "MESH_CYLINDER";
	var MESH_TORUS : String = "MESH_TORUS";
	var MESH_CONE : String = "MESH_CONE";
	var MESH_CAPSULE : String = "MESH_CAPSULE";
	var EMPTY_SINGLE_ARROW : String = "EMPTY_SINGLE_ARROW";
	var LIGHT_POINT : String = "LIGHT_POINT";
	var LIGHT_SUN : String = "LIGHT_SUN";
	var LIGHT_SPOT : String = "LIGHT_SPOT";
	var LIGHT_HEMI : String = "LIGHT_HEMI";
	var LIGHT_AREA : String = "LIGHT_AREA";
	var CUBE : String = "CUBE";
	var SPHERE : String = "SPHERE";
	var CONE : String = "CONE";
	var META_PLANE : String = "META_PLANE";
	var META_CUBE : String = "META_CUBE";
	var META_BALL : String = "META_BALL";
	var META_ELLIPSOID : String = "META_ELLIPSOID";
	var META_CAPSULE : String = "META_CAPSULE";
	var SURFACE_NCURVE : String = "SURFACE_NCURVE";
	var SURFACE_NCIRCLE : String = "SURFACE_NCIRCLE";
	var SURFACE_NSURFACE : String = "SURFACE_NSURFACE";
	var SURFACE_NCYLINDER : String = "SURFACE_NCYLINDER";
	var SURFACE_NSPHERE : String = "SURFACE_NSPHERE";
	var SURFACE_NTORUS : String = "SURFACE_NTORUS";
	var EMPTY_AXIS : String = "EMPTY_AXIS";
	var STROKE : String = "STROKE";
	var EMPTY_ARROWS : String = "EMPTY_ARROWS";
	var CURVE_BEZCURVE : String = "CURVE_BEZCURVE";
	var CURVE_BEZCIRCLE : String = "CURVE_BEZCIRCLE";
	var CURVE_NCURVE : String = "CURVE_NCURVE";
	var CURVE_NCIRCLE : String = "CURVE_NCIRCLE";
	var CURVE_PATH : String = "CURVE_PATH";
	var LIGHTPROBE_CUBEMAP : String = "LIGHTPROBE_CUBEMAP";
	var LIGHTPROBE_PLANAR : String = "LIGHTPROBE_PLANAR";
	var LIGHTPROBE_GRID : String = "LIGHTPROBE_GRID";
	var COLOR_RED : String = "COLOR_RED";
	var COLOR_GREEN : String = "COLOR_GREEN";
	var COLOR_BLUE : String = "COLOR_BLUE";
	var TRIA_RIGHT_BAR : String = "TRIA_RIGHT_BAR";
	var TRIA_DOWN_BAR : String = "TRIA_DOWN_BAR";
	var TRIA_LEFT_BAR : String = "TRIA_LEFT_BAR";
	var TRIA_UP_BAR : String = "TRIA_UP_BAR";
	var FORCE_FORCE : String = "FORCE_FORCE";
	var FORCE_WIND : String = "FORCE_WIND";
	var FORCE_VORTEX : String = "FORCE_VORTEX";
	var FORCE_MAGNETIC : String = "FORCE_MAGNETIC";
	var FORCE_HARMONIC : String = "FORCE_HARMONIC";
	var FORCE_CHARGE : String = "FORCE_CHARGE";
	var FORCE_LENNARDJONES : String = "FORCE_LENNARDJONES";
	var FORCE_TEXTURE : String = "FORCE_TEXTURE";
	var FORCE_CURVE : String = "FORCE_CURVE";
	var FORCE_BOID : String = "FORCE_BOID";
	var FORCE_TURBULENCE : String = "FORCE_TURBULENCE";
	var FORCE_DRAG : String = "FORCE_DRAG";
	var FORCE_SMOKEFLOW : String = "FORCE_SMOKEFLOW";
	var IMAGE_PLANE : String = "IMAGE_PLANE";
	var IMAGE_BACKGROUND : String = "IMAGE_BACKGROUND";
	var IMAGE_REFERENCE : String = "IMAGE_REFERENCE";
	var NODE_INSERT_ON : String = "NODE_INSERT_ON";
	var NODE_INSERT_OFF : String = "NODE_INSERT_OFF";
	var NODE_TOP : String = "NODE_TOP";
	var NODE_SIDE : String = "NODE_SIDE";
	var NODE_CORNER : String = "NODE_CORNER";
	var ALIGN_LEFT : String = "ALIGN_LEFT";
	var ALIGN_CENTER : String = "ALIGN_CENTER";
	var ALIGN_RIGHT : String = "ALIGN_RIGHT";
	var ALIGN_JUSTIFY : String = "ALIGN_JUSTIFY";
	var ALIGN_FLUSH : String = "ALIGN_FLUSH";
	var ALIGN_TOP : String = "ALIGN_TOP";
	var ALIGN_MIDDLE : String = "ALIGN_MIDDLE";
	var ALIGN_BOTTOM : String = "ALIGN_BOTTOM";
	var BOLD : String = "BOLD";
	var ITALIC : String = "ITALIC";
	var UNDERLINE : String = "UNDERLINE";
	var SMALL_CAPS : String = "SMALL_CAPS";
	var MODIFIER : String = "MODIFIER";
	var MOD_WAVE : String = "MOD_WAVE";
	var MOD_BUILD : String = "MOD_BUILD";
	var MOD_DECIM : String = "MOD_DECIM";
	var MOD_MIRROR : String = "MOD_MIRROR";
	var MOD_SOFT : String = "MOD_SOFT";
	var MOD_SUBSURF : String = "MOD_SUBSURF";
	var HOOK : String = "HOOK";
	var MOD_PHYSICS : String = "MOD_PHYSICS";
	var MOD_PARTICLES : String = "MOD_PARTICLES";
	var MOD_BOOLEAN : String = "MOD_BOOLEAN";
	var MOD_EDGESPLIT : String = "MOD_EDGESPLIT";
	var MOD_ARRAY : String = "MOD_ARRAY";
	var MOD_UVPROJECT : String = "MOD_UVPROJECT";
	var MOD_DISPLACE : String = "MOD_DISPLACE";
	var MOD_CURVE : String = "MOD_CURVE";
	var MOD_LATTICE : String = "MOD_LATTICE";
	var MOD_TINT : String = "MOD_TINT";
	var MOD_ARMATURE : String = "MOD_ARMATURE";
	var MOD_SHRINKWRAP : String = "MOD_SHRINKWRAP";
	var MOD_CAST : String = "MOD_CAST";
	var MOD_MESHDEFORM : String = "MOD_MESHDEFORM";
	var MOD_BEVEL : String = "MOD_BEVEL";
	var MOD_SMOOTH : String = "MOD_SMOOTH";
	var MOD_SIMPLEDEFORM : String = "MOD_SIMPLEDEFORM";
	var MOD_MASK : String = "MOD_MASK";
	var MOD_CLOTH : String = "MOD_CLOTH";
	var MOD_EXPLODE : String = "MOD_EXPLODE";
	var MOD_FLUIDSIM : String = "MOD_FLUIDSIM";
	var MOD_MULTIRES : String = "MOD_MULTIRES";
	var MOD_SMOKE : String = "MOD_SMOKE";
	var MOD_SOLIDIFY : String = "MOD_SOLIDIFY";
	var MOD_SCREW : String = "MOD_SCREW";
	var MOD_VERTEX_WEIGHT : String = "MOD_VERTEX_WEIGHT";
	var MOD_DYNAMICPAINT : String = "MOD_DYNAMICPAINT";
	var MOD_REMESH : String = "MOD_REMESH";
	var MOD_OCEAN : String = "MOD_OCEAN";
	var MOD_WARP : String = "MOD_WARP";
	var MOD_SKIN : String = "MOD_SKIN";
	var MOD_TRIANGULATE : String = "MOD_TRIANGULATE";
	var MOD_WIREFRAME : String = "MOD_WIREFRAME";
	var MOD_DATA_TRANSFER : String = "MOD_DATA_TRANSFER";
	var MOD_NORMALEDIT : String = "MOD_NORMALEDIT";
	var MOD_PARTICLE_INSTANCE : String = "MOD_PARTICLE_INSTANCE";
	var MOD_HUE_SATURATION : String = "MOD_HUE_SATURATION";
	var MOD_NOISE : String = "MOD_NOISE";
	var MOD_OFFSET : String = "MOD_OFFSET";
	var MOD_SIMPLIFY : String = "MOD_SIMPLIFY";
	var MOD_THICKNESS : String = "MOD_THICKNESS";
	var MOD_INSTANCE : String = "MOD_INSTANCE";
	var MOD_TIME : String = "MOD_TIME";
	var MOD_OPACITY : String = "MOD_OPACITY";
	var REC : String = "REC";
	var PLAY : String = "PLAY";
	var FF : String = "FF";
	var REW : String = "REW";
	var PAUSE : String = "PAUSE";
	var PREV_KEYFRAME : String = "PREV_KEYFRAME";
	var NEXT_KEYFRAME : String = "NEXT_KEYFRAME";
	var PLAY_REVERSE : String = "PLAY_REVERSE";
	var PREVIEW_RANGE : String = "PREVIEW_RANGE";
	var ACTION_TWEAK : String = "ACTION_TWEAK";
	var PMARKER_ACT : String = "PMARKER_ACT";
	var PMARKER_SEL : String = "PMARKER_SEL";
	var PMARKER : String = "PMARKER";
	var MARKER_HLT : String = "MARKER_HLT";
	var MARKER : String = "MARKER";
	var KEYFRAME_HLT : String = "KEYFRAME_HLT";
	var KEYFRAME : String = "KEYFRAME";
	var KEYINGSET : String = "KEYINGSET";
	var KEY_DEHLT : String = "KEY_DEHLT";
	var KEY_HLT : String = "KEY_HLT";
	var MUTE_IPO_OFF : String = "MUTE_IPO_OFF";
	var MUTE_IPO_ON : String = "MUTE_IPO_ON";
	var VISIBLE_IPO_OFF : String = "VISIBLE_IPO_OFF";
	var VISIBLE_IPO_ON : String = "VISIBLE_IPO_ON";
	var DRIVER : String = "DRIVER";
	var SOLO_OFF : String = "SOLO_OFF";
	var SOLO_ON : String = "SOLO_ON";
	var FRAME_PREV : String = "FRAME_PREV";
	var FRAME_NEXT : String = "FRAME_NEXT";
	var NLA_PUSHDOWN : String = "NLA_PUSHDOWN";
	var IPO_CONSTANT : String = "IPO_CONSTANT";
	var IPO_LINEAR : String = "IPO_LINEAR";
	var IPO_BEZIER : String = "IPO_BEZIER";
	var IPO_SINE : String = "IPO_SINE";
	var IPO_QUAD : String = "IPO_QUAD";
	var IPO_CUBIC : String = "IPO_CUBIC";
	var IPO_QUART : String = "IPO_QUART";
	var IPO_QUINT : String = "IPO_QUINT";
	var IPO_EXPO : String = "IPO_EXPO";
	var IPO_CIRC : String = "IPO_CIRC";
	var IPO_BOUNCE : String = "IPO_BOUNCE";
	var IPO_ELASTIC : String = "IPO_ELASTIC";
	var IPO_BACK : String = "IPO_BACK";
	var IPO_EASE_IN : String = "IPO_EASE_IN";
	var IPO_EASE_OUT : String = "IPO_EASE_OUT";
	var IPO_EASE_IN_OUT : String = "IPO_EASE_IN_OUT";
	var NORMALIZE_FCURVES : String = "NORMALIZE_FCURVES";
	var VERTEXSEL : String = "VERTEXSEL";
	var EDGESEL : String = "EDGESEL";
	var FACESEL : String = "FACESEL";
	var PIVOT_BOUNDBOX : String = "PIVOT_BOUNDBOX";
	var PIVOT_CURSOR : String = "PIVOT_CURSOR";
	var PIVOT_INDIVIDUAL : String = "PIVOT_INDIVIDUAL";
	var PIVOT_MEDIAN : String = "PIVOT_MEDIAN";
	var PIVOT_ACTIVE : String = "PIVOT_ACTIVE";
	var CENTER_ONLY : String = "CENTER_ONLY";
	var SMOOTHCURVE : String = "SMOOTHCURVE";
	var SPHERECURVE : String = "SPHERECURVE";
	var ROOTCURVE : String = "ROOTCURVE";
	var SHARPCURVE : String = "SHARPCURVE";
	var LINCURVE : String = "LINCURVE";
	var NOCURVE : String = "NOCURVE";
	var RNDCURVE : String = "RNDCURVE";
	var PROP_OFF : String = "PROP_OFF";
	var PROP_ON : String = "PROP_ON";
	var PROP_CON : String = "PROP_CON";
	var SCULPT_DYNTOPO : String = "SCULPT_DYNTOPO";
	var PARTICLE_POINT : String = "PARTICLE_POINT";
	var PARTICLE_TIP : String = "PARTICLE_TIP";
	var PARTICLE_PATH : String = "PARTICLE_PATH";
	var SNAP_OFF : String = "SNAP_OFF";
	var SNAP_ON : String = "SNAP_ON";
	var SNAP_NORMAL : String = "SNAP_NORMAL";
	var SNAP_GRID : String = "SNAP_GRID";
	var SNAP_VERTEX : String = "SNAP_VERTEX";
	var SNAP_EDGE : String = "SNAP_EDGE";
	var SNAP_FACE : String = "SNAP_FACE";
	var SNAP_VOLUME : String = "SNAP_VOLUME";
	var SNAP_INCREMENT : String = "SNAP_INCREMENT";
	var STICKY_UVS_LOC : String = "STICKY_UVS_LOC";
	var STICKY_UVS_DISABLE : String = "STICKY_UVS_DISABLE";
	var STICKY_UVS_VERT : String = "STICKY_UVS_VERT";
	var CLIPUV_DEHLT : String = "CLIPUV_DEHLT";
	var CLIPUV_HLT : String = "CLIPUV_HLT";
	var SNAP_PEEL_OBJECT : String = "SNAP_PEEL_OBJECT";
	var GRID : String = "GRID";
	var OBJECT_ORIGIN : String = "OBJECT_ORIGIN";
	var ORIENTATION_GLOBAL : String = "ORIENTATION_GLOBAL";
	var ORIENTATION_GIMBAL : String = "ORIENTATION_GIMBAL";
	var ORIENTATION_LOCAL : String = "ORIENTATION_LOCAL";
	var ORIENTATION_NORMAL : String = "ORIENTATION_NORMAL";
	var ORIENTATION_VIEW : String = "ORIENTATION_VIEW";
	var COPYDOWN : String = "COPYDOWN";
	var PASTEDOWN : String = "PASTEDOWN";
	var PASTEFLIPUP : String = "PASTEFLIPUP";
	var PASTEFLIPDOWN : String = "PASTEFLIPDOWN";
	var VIS_SEL_11 : String = "VIS_SEL_11";
	var VIS_SEL_10 : String = "VIS_SEL_10";
	var VIS_SEL_01 : String = "VIS_SEL_01";
	var VIS_SEL_00 : String = "VIS_SEL_00";
	var AUTOMERGE_ON : String = "AUTOMERGE_ON";
	var AUTOMERGE_OFF : String = "AUTOMERGE_OFF";
	var UV_VERTEXSEL : String = "UV_VERTEXSEL";
	var UV_EDGESEL : String = "UV_EDGESEL";
	var UV_FACESEL : String = "UV_FACESEL";
	var UV_ISLANDSEL : String = "UV_ISLANDSEL";
	var UV_SYNC_SELECT : String = "UV_SYNC_SELECT";
	var NORMALS_VERTEX : String = "NORMALS_VERTEX";
	var NORMALS_FACE : String = "NORMALS_FACE";
	var NORMALS_VERTEX_FACE : String = "NORMALS_VERTEX_FACE";
	var SHADING_BBOX : String = "SHADING_BBOX";
	var SHADING_WIRE : String = "SHADING_WIRE";
	var SHADING_SOLID : String = "SHADING_SOLID";
	var SHADING_RENDERED : String = "SHADING_RENDERED";
	var SHADING_TEXTURE : String = "SHADING_TEXTURE";
	var OVERLAY : String = "OVERLAY";
	var XRAY : String = "XRAY";
	var LOCKVIEW_OFF : String = "LOCKVIEW_OFF";
	var LOCKVIEW_ON : String = "LOCKVIEW_ON";
	var AXIS_SIDE : String = "AXIS_SIDE";
	var AXIS_FRONT : String = "AXIS_FRONT";
	var AXIS_TOP : String = "AXIS_TOP";
	var NDOF_DOM : String = "NDOF_DOM";
	var NDOF_TURN : String = "NDOF_TURN";
	var NDOF_FLY : String = "NDOF_FLY";
	var NDOF_TRANS : String = "NDOF_TRANS";
	var LAYER_USED : String = "LAYER_USED";
	var LAYER_ACTIVE : String = "LAYER_ACTIVE";
	var SORTALPHA : String = "SORTALPHA";
	var SORTBYEXT : String = "SORTBYEXT";
	var SORTTIME : String = "SORTTIME";
	var SORTSIZE : String = "SORTSIZE";
	var SHORTDISPLAY : String = "SHORTDISPLAY";
	var LONGDISPLAY : String = "LONGDISPLAY";
	var IMGDISPLAY : String = "IMGDISPLAY";
	var BOOKMARKS : String = "BOOKMARKS";
	var FONTPREVIEW : String = "FONTPREVIEW";
	var FILTER : String = "FILTER";
	var NEWFOLDER : String = "NEWFOLDER";
	var FILE_PARENT : String = "FILE_PARENT";
	var FILE_REFRESH : String = "FILE_REFRESH";
	var FILE_FOLDER : String = "FILE_FOLDER";
	var FILE_BLANK : String = "FILE_BLANK";
	var FILE_BLEND : String = "FILE_BLEND";
	var FILE_IMAGE : String = "FILE_IMAGE";
	var FILE_MOVIE : String = "FILE_MOVIE";
	var FILE_SCRIPT : String = "FILE_SCRIPT";
	var FILE_SOUND : String = "FILE_SOUND";
	var FILE_FONT : String = "FILE_FONT";
	var FILE_TEXT : String = "FILE_TEXT";
	var SORT_DESC : String = "SORT_DESC";
	var SORT_ASC : String = "SORT_ASC";
	var LINK_BLEND : String = "LINK_BLEND";
	var APPEND_BLEND : String = "APPEND_BLEND";
	var IMPORT : String = "IMPORT";
	var EXPORT : String = "EXPORT";
	var LOOP_BACK : String = "LOOP_BACK";
	var LOOP_FORWARDS : String = "LOOP_FORWARDS";
	var BACK : String = "BACK";
	var FORWARD : String = "FORWARD";
	var FILE_VOLUME : String = "FILE_VOLUME";
	var ALEMBIC : String = "ALEMBIC";
	var VOLUME : String = "VOLUME";
	var FILE_HIDDEN : String = "FILE_HIDDEN";
	var FILE_BACKUP : String = "FILE_BACKUP";
	var DISK_DRIVE : String = "DISK_DRIVE";
	var MATPLANE : String = "MATPLANE";
	var MATSPHERE : String = "MATSPHERE";
	var MATCUBE : String = "MATCUBE";
	var MONKEY : String = "MONKEY";
	var HAIR : String = "HAIR";
	var ALIASED : String = "ALIASED";
	var ANTIALIASED : String = "ANTIALIASED";
	var MAT_SPHERE_SKY : String = "MAT_SPHERE_SKY";
	var MATSHADERBALL : String = "MATSHADERBALL";
	var MATCLOTH : String = "MATCLOTH";
	var MATFLUID : String = "MATFLUID";
	var WORDWRAP_OFF : String = "WORDWRAP_OFF";
	var WORDWRAP_ON : String = "WORDWRAP_ON";
	var SYNTAX_OFF : String = "SYNTAX_OFF";
	var SYNTAX_ON : String = "SYNTAX_ON";
	var LINENUMBERS_OFF : String = "LINENUMBERS_OFF";
	var LINENUMBERS_ON : String = "LINENUMBERS_ON";
	var SCRIPTPLUGINS : String = "SCRIPTPLUGINS";
	var SEQ_SEQUENCER : String = "SEQ_SEQUENCER";
	var SEQ_PREVIEW : String = "SEQ_PREVIEW";
	var SEQ_LUMA_WAVEFORM : String = "SEQ_LUMA_WAVEFORM";
	var SEQ_CHROMA_SCOPE : String = "SEQ_CHROMA_SCOPE";
	var SEQ_HISTOGRAM : String = "SEQ_HISTOGRAM";
	var SEQ_SPLITVIEW : String = "SEQ_SPLITVIEW";
	var IMAGE_RGB : String = "IMAGE_RGB";
	var IMAGE_RGB_ALPHA : String = "IMAGE_RGB_ALPHA";
	var IMAGE_ALPHA : String = "IMAGE_ALPHA";
	var IMAGE_ZDEPTH : String = "IMAGE_ZDEPTH";
	var VIEW_PERSPECTIVE : String = "VIEW_PERSPECTIVE";
	var VIEW_ORTHO : String = "VIEW_ORTHO";
	var VIEW_CAMERA : String = "VIEW_CAMERA";
	var VIEW_PAN : String = "VIEW_PAN";
	var VIEW_ZOOM : String = "VIEW_ZOOM";
	var BRUSH_ADD : String = "BRUSH_ADD";
	var BRUSH_BLOB : String = "BRUSH_BLOB";
	var BRUSH_BLUR : String = "BRUSH_BLUR";
	var BRUSH_CLAY : String = "BRUSH_CLAY";
	var BRUSH_CLAY_STRIPS : String = "BRUSH_CLAY_STRIPS";
	var BRUSH_CLONE : String = "BRUSH_CLONE";
	var BRUSH_CREASE : String = "BRUSH_CREASE";
	var BRUSH_DARKEN : String = "BRUSH_DARKEN";
	var BRUSH_FILL : String = "BRUSH_FILL";
	var BRUSH_FLATTEN : String = "BRUSH_FLATTEN";
	var BRUSH_GRAB : String = "BRUSH_GRAB";
	var BRUSH_INFLATE : String = "BRUSH_INFLATE";
	var BRUSH_LAYER : String = "BRUSH_LAYER";
	var BRUSH_LIGHTEN : String = "BRUSH_LIGHTEN";
	var BRUSH_MASK : String = "BRUSH_MASK";
	var BRUSH_MIX : String = "BRUSH_MIX";
	var BRUSH_MULTIPLY : String = "BRUSH_MULTIPLY";
	var BRUSH_NUDGE : String = "BRUSH_NUDGE";
	var BRUSH_PINCH : String = "BRUSH_PINCH";
	var BRUSH_SCRAPE : String = "BRUSH_SCRAPE";
	var BRUSH_SCULPT_DRAW : String = "BRUSH_SCULPT_DRAW";
	var BRUSH_SMEAR : String = "BRUSH_SMEAR";
	var BRUSH_SMOOTH : String = "BRUSH_SMOOTH";
	var BRUSH_SNAKE_HOOK : String = "BRUSH_SNAKE_HOOK";
	var BRUSH_SOFTEN : String = "BRUSH_SOFTEN";
	var BRUSH_SUBTRACT : String = "BRUSH_SUBTRACT";
	var BRUSH_TEXDRAW : String = "BRUSH_TEXDRAW";
	var BRUSH_TEXFILL : String = "BRUSH_TEXFILL";
	var BRUSH_TEXMASK : String = "BRUSH_TEXMASK";
	var BRUSH_THUMB : String = "BRUSH_THUMB";
	var BRUSH_ROTATE : String = "BRUSH_ROTATE";
	var BRUSH_VERTEXDRAW : String = "BRUSH_VERTEXDRAW";
	var MATCAP_01 : String = "MATCAP_01";
	var MATCAP_02 : String = "MATCAP_02";
	var MATCAP_03 : String = "MATCAP_03";
	var MATCAP_04 : String = "MATCAP_04";
	var MATCAP_05 : String = "MATCAP_05";
	var MATCAP_06 : String = "MATCAP_06";
	var MATCAP_07 : String = "MATCAP_07";
	var MATCAP_08 : String = "MATCAP_08";
	var MATCAP_09 : String = "MATCAP_09";
	var MATCAP_10 : String = "MATCAP_10";
	var MATCAP_11 : String = "MATCAP_11";
	var MATCAP_12 : String = "MATCAP_12";
	var MATCAP_13 : String = "MATCAP_13";
	var MATCAP_14 : String = "MATCAP_14";
	var MATCAP_15 : String = "MATCAP_15";
	var MATCAP_16 : String = "MATCAP_16";
	var MATCAP_17 : String = "MATCAP_17";
	var MATCAP_18 : String = "MATCAP_18";
	var MATCAP_19 : String = "MATCAP_19";
	var MATCAP_20 : String = "MATCAP_20";
	var MATCAP_21 : String = "MATCAP_21";
	var MATCAP_22 : String = "MATCAP_22";
	var MATCAP_23 : String = "MATCAP_23";
	var MATCAP_24 : String = "MATCAP_24";
	var GPBRUSH_SMOOTH : String = "GPBRUSH_SMOOTH";
	var GPBRUSH_THICKNESS : String = "GPBRUSH_THICKNESS";
	var GPBRUSH_STRENGTH : String = "GPBRUSH_STRENGTH";
	var GPBRUSH_GRAB : String = "GPBRUSH_GRAB";
	var GPBRUSH_PUSH : String = "GPBRUSH_PUSH";
	var GPBRUSH_TWIST : String = "GPBRUSH_TWIST";
	var GPBRUSH_PINCH : String = "GPBRUSH_PINCH";
	var GPBRUSH_RANDOMIZE : String = "GPBRUSH_RANDOMIZE";
	var GPBRUSH_CLONE : String = "GPBRUSH_CLONE";
	var GPBRUSH_WEIGHT : String = "GPBRUSH_WEIGHT";
	var GPBRUSH_PENCIL : String = "GPBRUSH_PENCIL";
	var GPBRUSH_PEN : String = "GPBRUSH_PEN";
	var GPBRUSH_INK : String = "GPBRUSH_INK";
	var GPBRUSH_INKNOISE : String = "GPBRUSH_INKNOISE";
	var GPBRUSH_BLOCK : String = "GPBRUSH_BLOCK";
	var GPBRUSH_MARKER : String = "GPBRUSH_MARKER";
	var GPBRUSH_CUSTOM : String = "GPBRUSH_CUSTOM";
	var GPBRUSH_FILL : String = "GPBRUSH_FILL";
	var GPBRUSH_ERASE_SOFT : String = "GPBRUSH_ERASE_SOFT";
	var GPBRUSH_ERASE_HARD : String = "GPBRUSH_ERASE_HARD";
	var GPBRUSH_ERASE_STROKE : String = "GPBRUSH_ERASE_STROKE";
	var SMALL_TRI_RIGHT_VEC : String = "SMALL_TRI_RIGHT_VEC";
	var KEYTYPE_KEYFRAME_VEC : String = "KEYTYPE_KEYFRAME_VEC";
	var KEYTYPE_BREAKDOWN_VEC : String = "KEYTYPE_BREAKDOWN_VEC";
	var KEYTYPE_EXTREME_VEC : String = "KEYTYPE_EXTREME_VEC";
	var KEYTYPE_JITTER_VEC : String = "KEYTYPE_JITTER_VEC";
	var KEYTYPE_MOVING_HOLD_VEC : String = "KEYTYPE_MOVING_HOLD_VEC";
	var HANDLETYPE_FREE_VEC : String = "HANDLETYPE_FREE_VEC";
	var HANDLETYPE_ALIGNED_VEC : String = "HANDLETYPE_ALIGNED_VEC";
	var HANDLETYPE_VECTOR_VEC : String = "HANDLETYPE_VECTOR_VEC";
	var HANDLETYPE_AUTO_VEC : String = "HANDLETYPE_AUTO_VEC";
	var HANDLETYPE_AUTO_CLAMP_VEC : String = "HANDLETYPE_AUTO_CLAMP_VEC";
	var COLORSET_01_VEC : String = "COLORSET_01_VEC";
	var COLORSET_02_VEC : String = "COLORSET_02_VEC";
	var COLORSET_03_VEC : String = "COLORSET_03_VEC";
	var COLORSET_04_VEC : String = "COLORSET_04_VEC";
	var COLORSET_05_VEC : String = "COLORSET_05_VEC";
	var COLORSET_06_VEC : String = "COLORSET_06_VEC";
	var COLORSET_07_VEC : String = "COLORSET_07_VEC";
	var COLORSET_08_VEC : String = "COLORSET_08_VEC";
	var COLORSET_09_VEC : String = "COLORSET_09_VEC";
	var COLORSET_10_VEC : String = "COLORSET_10_VEC";
	var COLORSET_11_VEC : String = "COLORSET_11_VEC";
	var COLORSET_12_VEC : String = "COLORSET_12_VEC";
	var COLORSET_13_VEC : String = "COLORSET_13_VEC";
	var COLORSET_14_VEC : String = "COLORSET_14_VEC";
	var COLORSET_15_VEC : String = "COLORSET_15_VEC";
	var COLORSET_16_VEC : String = "COLORSET_16_VEC";
	var COLORSET_17_VEC : String = "COLORSET_17_VEC";
	var COLORSET_18_VEC : String = "COLORSET_18_VEC";
	var COLORSET_19_VEC : String = "COLORSET_19_VEC";
	var COLORSET_20_VEC : String = "COLORSET_20_VEC";
	var EVENT_A : String = "EVENT_A";
	var EVENT_B : String = "EVENT_B";
	var EVENT_C : String = "EVENT_C";
	var EVENT_D : String = "EVENT_D";
	var EVENT_E : String = "EVENT_E";
	var EVENT_F : String = "EVENT_F";
	var EVENT_G : String = "EVENT_G";
	var EVENT_H : String = "EVENT_H";
	var EVENT_I : String = "EVENT_I";
	var EVENT_J : String = "EVENT_J";
	var EVENT_K : String = "EVENT_K";
	var EVENT_L : String = "EVENT_L";
	var EVENT_M : String = "EVENT_M";
	var EVENT_N : String = "EVENT_N";
	var EVENT_O : String = "EVENT_O";
	var EVENT_P : String = "EVENT_P";
	var EVENT_Q : String = "EVENT_Q";
	var EVENT_R : String = "EVENT_R";
	var EVENT_S : String = "EVENT_S";
	var EVENT_T : String = "EVENT_T";
	var EVENT_U : String = "EVENT_U";
	var EVENT_V : String = "EVENT_V";
	var EVENT_W : String = "EVENT_W";
	var EVENT_X : String = "EVENT_X";
	var EVENT_Y : String = "EVENT_Y";
	var EVENT_Z : String = "EVENT_Z";
	var EVENT_SHIFT : String = "EVENT_SHIFT";
	var EVENT_CTRL : String = "EVENT_CTRL";
	var EVENT_ALT : String = "EVENT_ALT";
	var EVENT_OS : String = "EVENT_OS";
	var EVENT_F1 : String = "EVENT_F1";
	var EVENT_F2 : String = "EVENT_F2";
	var EVENT_F3 : String = "EVENT_F3";
	var EVENT_F4 : String = "EVENT_F4";
	var EVENT_F5 : String = "EVENT_F5";
	var EVENT_F6 : String = "EVENT_F6";
	var EVENT_F7 : String = "EVENT_F7";
	var EVENT_F8 : String = "EVENT_F8";
	var EVENT_F9 : String = "EVENT_F9";
	var EVENT_F10 : String = "EVENT_F10";
	var EVENT_F11 : String = "EVENT_F11";
	var EVENT_F12 : String = "EVENT_F12";
	var EVENT_ESC : String = "EVENT_ESC";
	var EVENT_TAB : String = "EVENT_TAB";
	var EVENT_PAGEUP : String = "EVENT_PAGEUP";
	var EVENT_PAGEDOWN : String = "EVENT_PAGEDOWN";
	var EVENT_HOME : String = "EVENT_HOME";
	var EVENT_END : String = "EVENT_END";
	var EVENT_RETURN : String = "EVENT_RETURN";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var QUESTION : String = "QUESTION";
	var ERROR : String = "ERROR";
	var CANCEL : String = "CANCEL";
	var TRIA_RIGHT : String = "TRIA_RIGHT";
	var TRIA_DOWN : String = "TRIA_DOWN";
	var TRIA_LEFT : String = "TRIA_LEFT";
	var TRIA_UP : String = "TRIA_UP";
	var ARROW_LEFTRIGHT : String = "ARROW_LEFTRIGHT";
	var PLUS : String = "PLUS";
	var DISCLOSURE_TRI_RIGHT : String = "DISCLOSURE_TRI_RIGHT";
	var DISCLOSURE_TRI_DOWN : String = "DISCLOSURE_TRI_DOWN";
	var RADIOBUT_OFF : String = "RADIOBUT_OFF";
	var RADIOBUT_ON : String = "RADIOBUT_ON";
	var MENU_PANEL : String = "MENU_PANEL";
	var BLENDER : String = "BLENDER";
	var GRIP : String = "GRIP";
	var DOT : String = "DOT";
	var COLLAPSEMENU : String = "COLLAPSEMENU";
	var X : String = "X";
	var DUPLICATE : String = "DUPLICATE";
	var NODE : String = "NODE";
	var NODE_SEL : String = "NODE_SEL";
	var WINDOW : String = "WINDOW";
	var WORKSPACE : String = "WORKSPACE";
	var RIGHTARROW_THIN : String = "RIGHTARROW_THIN";
	var BORDERMOVE : String = "BORDERMOVE";
	var VIEWZOOM : String = "VIEWZOOM";
	var ADD : String = "ADD";
	var REMOVE : String = "REMOVE";
	var PANEL_CLOSE : String = "PANEL_CLOSE";
	var COPY_ID : String = "COPY_ID";
	var EYEDROPPER : String = "EYEDROPPER";
	var AUTO : String = "AUTO";
	var CHECKBOX_DEHLT : String = "CHECKBOX_DEHLT";
	var CHECKBOX_HLT : String = "CHECKBOX_HLT";
	var UNLOCKED : String = "UNLOCKED";
	var LOCKED : String = "LOCKED";
	var UNPINNED : String = "UNPINNED";
	var PINNED : String = "PINNED";
	var SCREEN_BACK : String = "SCREEN_BACK";
	var RIGHTARROW : String = "RIGHTARROW";
	var DOWNARROW_HLT : String = "DOWNARROW_HLT";
	var PLUGIN : String = "PLUGIN";
	var HELP : String = "HELP";
	var GHOST_ENABLED : String = "GHOST_ENABLED";
	var COLOR : String = "COLOR";
	var UNLINKED : String = "UNLINKED";
	var LINKED : String = "LINKED";
	var HAND : String = "HAND";
	var ZOOM_ALL : String = "ZOOM_ALL";
	var ZOOM_SELECTED : String = "ZOOM_SELECTED";
	var ZOOM_PREVIOUS : String = "ZOOM_PREVIOUS";
	var ZOOM_IN : String = "ZOOM_IN";
	var ZOOM_OUT : String = "ZOOM_OUT";
	var DRIVER_DISTANCE : String = "DRIVER_DISTANCE";
	var DRIVER_ROTATIONAL_DIFFERENCE : String = "DRIVER_ROTATIONAL_DIFFERENCE";
	var DRIVER_TRANSFORM : String = "DRIVER_TRANSFORM";
	var FREEZE : String = "FREEZE";
	var STYLUS_PRESSURE : String = "STYLUS_PRESSURE";
	var GHOST_DISABLED : String = "GHOST_DISABLED";
	var FILE_NEW : String = "FILE_NEW";
	var FILE_TICK : String = "FILE_TICK";
	var QUIT : String = "QUIT";
	var URL : String = "URL";
	var RECOVER_LAST : String = "RECOVER_LAST";
	var THREE_DOTS : String = "THREE_DOTS";
	var FULLSCREEN_ENTER : String = "FULLSCREEN_ENTER";
	var FULLSCREEN_EXIT : String = "FULLSCREEN_EXIT";
	var LIGHT : String = "LIGHT";
	var MATERIAL : String = "MATERIAL";
	var TEXTURE : String = "TEXTURE";
	var ANIM : String = "ANIM";
	var WORLD : String = "WORLD";
	var SCENE : String = "SCENE";
	var OUTPUT : String = "OUTPUT";
	var SCRIPT : String = "SCRIPT";
	var PARTICLES : String = "PARTICLES";
	var PHYSICS : String = "PHYSICS";
	var SPEAKER : String = "SPEAKER";
	var TOOL_SETTINGS : String = "TOOL_SETTINGS";
	var SHADERFX : String = "SHADERFX";
	var BLANK1 : String = "BLANK1";
	var FAKE_USER_OFF : String = "FAKE_USER_OFF";
	var FAKE_USER_ON : String = "FAKE_USER_ON";
	var VIEW3D : String = "VIEW3D";
	var GRAPH : String = "GRAPH";
	var OUTLINER : String = "OUTLINER";
	var PROPERTIES : String = "PROPERTIES";
	var FILEBROWSER : String = "FILEBROWSER";
	var IMAGE : String = "IMAGE";
	var INFO : String = "INFO";
	var SEQUENCE : String = "SEQUENCE";
	var TEXT : String = "TEXT";
	var SOUND : String = "SOUND";
	var ACTION : String = "ACTION";
	var NLA : String = "NLA";
	var PREFERENCES : String = "PREFERENCES";
	var TIME : String = "TIME";
	var NODETREE : String = "NODETREE";
	var CONSOLE : String = "CONSOLE";
	var CLIP : String = "CLIP";
	var ASSET_MANAGER : String = "ASSET_MANAGER";
	var NODE_COMPOSITING : String = "NODE_COMPOSITING";
	var NODE_TEXTURE : String = "NODE_TEXTURE";
	var NODE_MATERIAL : String = "NODE_MATERIAL";
	var OBJECT_DATAMODE : String = "OBJECT_DATAMODE";
	var EDITMODE_HLT : String = "EDITMODE_HLT";
	var UV : String = "UV";
	var VPAINT_HLT : String = "VPAINT_HLT";
	var TPAINT_HLT : String = "TPAINT_HLT";
	var WPAINT_HLT : String = "WPAINT_HLT";
	var SCULPTMODE_HLT : String = "SCULPTMODE_HLT";
	var POSE_HLT : String = "POSE_HLT";
	var PARTICLEMODE : String = "PARTICLEMODE";
	var TRACKING : String = "TRACKING";
	var TRACKING_BACKWARDS : String = "TRACKING_BACKWARDS";
	var TRACKING_FORWARDS : String = "TRACKING_FORWARDS";
	var TRACKING_BACKWARDS_SINGLE : String = "TRACKING_BACKWARDS_SINGLE";
	var TRACKING_FORWARDS_SINGLE : String = "TRACKING_FORWARDS_SINGLE";
	var TRACKING_CLEAR_BACKWARDS : String = "TRACKING_CLEAR_BACKWARDS";
	var TRACKING_CLEAR_FORWARDS : String = "TRACKING_CLEAR_FORWARDS";
	var TRACKING_REFINE_BACKWARDS : String = "TRACKING_REFINE_BACKWARDS";
	var TRACKING_REFINE_FORWARDS : String = "TRACKING_REFINE_FORWARDS";
	var SCENE_DATA : String = "SCENE_DATA";
	var RENDERLAYERS : String = "RENDERLAYERS";
	var WORLD_DATA : String = "WORLD_DATA";
	var OBJECT_DATA : String = "OBJECT_DATA";
	var MESH_DATA : String = "MESH_DATA";
	var CURVE_DATA : String = "CURVE_DATA";
	var META_DATA : String = "META_DATA";
	var LATTICE_DATA : String = "LATTICE_DATA";
	var LIGHT_DATA : String = "LIGHT_DATA";
	var MATERIAL_DATA : String = "MATERIAL_DATA";
	var TEXTURE_DATA : String = "TEXTURE_DATA";
	var ANIM_DATA : String = "ANIM_DATA";
	var CAMERA_DATA : String = "CAMERA_DATA";
	var PARTICLE_DATA : String = "PARTICLE_DATA";
	var LIBRARY_DATA_DIRECT : String = "LIBRARY_DATA_DIRECT";
	var GROUP : String = "GROUP";
	var ARMATURE_DATA : String = "ARMATURE_DATA";
	var COMMUNITY : String = "COMMUNITY";
	var BONE_DATA : String = "BONE_DATA";
	var CONSTRAINT : String = "CONSTRAINT";
	var SHAPEKEY_DATA : String = "SHAPEKEY_DATA";
	var CONSTRAINT_BONE : String = "CONSTRAINT_BONE";
	var CAMERA_STEREO : String = "CAMERA_STEREO";
	var PACKAGE : String = "PACKAGE";
	var UGLYPACKAGE : String = "UGLYPACKAGE";
	var EXPERIMENTAL : String = "EXPERIMENTAL";
	var BRUSH_DATA : String = "BRUSH_DATA";
	var IMAGE_DATA : String = "IMAGE_DATA";
	var FILE : String = "FILE";
	var FCURVE : String = "FCURVE";
	var FONT_DATA : String = "FONT_DATA";
	var RENDER_RESULT : String = "RENDER_RESULT";
	var SURFACE_DATA : String = "SURFACE_DATA";
	var EMPTY_DATA : String = "EMPTY_DATA";
	var PRESET : String = "PRESET";
	var RENDER_ANIMATION : String = "RENDER_ANIMATION";
	var RENDER_STILL : String = "RENDER_STILL";
	var LIBRARY_DATA_BROKEN : String = "LIBRARY_DATA_BROKEN";
	var BOIDS : String = "BOIDS";
	var STRANDS : String = "STRANDS";
	var LIBRARY_DATA_INDIRECT : String = "LIBRARY_DATA_INDIRECT";
	var GREASEPENCIL : String = "GREASEPENCIL";
	var LINE_DATA : String = "LINE_DATA";
	var LIBRARY_DATA_OVERRIDE : String = "LIBRARY_DATA_OVERRIDE";
	var GROUP_BONE : String = "GROUP_BONE";
	var GROUP_VERTEX : String = "GROUP_VERTEX";
	var GROUP_VCOL : String = "GROUP_VCOL";
	var GROUP_UVS : String = "GROUP_UVS";
	var FACE_MAPS : String = "FACE_MAPS";
	var RNA : String = "RNA";
	var RNA_ADD : String = "RNA_ADD";
	var MOUSE_LMB : String = "MOUSE_LMB";
	var MOUSE_MMB : String = "MOUSE_MMB";
	var MOUSE_RMB : String = "MOUSE_RMB";
	var MOUSE_MOVE : String = "MOUSE_MOVE";
	var MOUSE_LMB_DRAG : String = "MOUSE_LMB_DRAG";
	var MOUSE_MMB_DRAG : String = "MOUSE_MMB_DRAG";
	var MOUSE_RMB_DRAG : String = "MOUSE_RMB_DRAG";
	var PRESET_NEW : String = "PRESET_NEW";
	var DECORATE : String = "DECORATE";
	var DECORATE_KEYFRAME : String = "DECORATE_KEYFRAME";
	var DECORATE_ANIMATE : String = "DECORATE_ANIMATE";
	var DECORATE_DRIVER : String = "DECORATE_DRIVER";
	var DECORATE_LINKED : String = "DECORATE_LINKED";
	var DECORATE_LIBRARY_OVERRIDE : String = "DECORATE_LIBRARY_OVERRIDE";
	var DECORATE_UNLOCKED : String = "DECORATE_UNLOCKED";
	var DECORATE_LOCKED : String = "DECORATE_LOCKED";
	var DECORATE_OVERRIDE : String = "DECORATE_OVERRIDE";
	var SEALED : String = "SEALED";
	var HEART : String = "HEART";
	var ORPHAN_DATA : String = "ORPHAN_DATA";
	var USER : String = "USER";
	var SYSTEM : String = "SYSTEM";
	var SETTINGS : String = "SETTINGS";
	var OUTLINER_OB_EMPTY : String = "OUTLINER_OB_EMPTY";
	var OUTLINER_OB_MESH : String = "OUTLINER_OB_MESH";
	var OUTLINER_OB_CURVE : String = "OUTLINER_OB_CURVE";
	var OUTLINER_OB_LATTICE : String = "OUTLINER_OB_LATTICE";
	var OUTLINER_OB_META : String = "OUTLINER_OB_META";
	var OUTLINER_OB_LIGHT : String = "OUTLINER_OB_LIGHT";
	var OUTLINER_OB_CAMERA : String = "OUTLINER_OB_CAMERA";
	var OUTLINER_OB_ARMATURE : String = "OUTLINER_OB_ARMATURE";
	var OUTLINER_OB_FONT : String = "OUTLINER_OB_FONT";
	var OUTLINER_OB_SURFACE : String = "OUTLINER_OB_SURFACE";
	var OUTLINER_OB_SPEAKER : String = "OUTLINER_OB_SPEAKER";
	var OUTLINER_OB_FORCE_FIELD : String = "OUTLINER_OB_FORCE_FIELD";
	var OUTLINER_OB_GROUP_INSTANCE : String = "OUTLINER_OB_GROUP_INSTANCE";
	var OUTLINER_OB_GREASEPENCIL : String = "OUTLINER_OB_GREASEPENCIL";
	var OUTLINER_OB_LIGHTPROBE : String = "OUTLINER_OB_LIGHTPROBE";
	var OUTLINER_OB_IMAGE : String = "OUTLINER_OB_IMAGE";
	var RESTRICT_COLOR_OFF : String = "RESTRICT_COLOR_OFF";
	var RESTRICT_COLOR_ON : String = "RESTRICT_COLOR_ON";
	var HIDE_ON : String = "HIDE_ON";
	var HIDE_OFF : String = "HIDE_OFF";
	var RESTRICT_SELECT_ON : String = "RESTRICT_SELECT_ON";
	var RESTRICT_SELECT_OFF : String = "RESTRICT_SELECT_OFF";
	var RESTRICT_RENDER_ON : String = "RESTRICT_RENDER_ON";
	var RESTRICT_RENDER_OFF : String = "RESTRICT_RENDER_OFF";
	var OUTLINER_DATA_EMPTY : String = "OUTLINER_DATA_EMPTY";
	var OUTLINER_DATA_MESH : String = "OUTLINER_DATA_MESH";
	var OUTLINER_DATA_CURVE : String = "OUTLINER_DATA_CURVE";
	var OUTLINER_DATA_LATTICE : String = "OUTLINER_DATA_LATTICE";
	var OUTLINER_DATA_META : String = "OUTLINER_DATA_META";
	var OUTLINER_DATA_LIGHT : String = "OUTLINER_DATA_LIGHT";
	var OUTLINER_DATA_CAMERA : String = "OUTLINER_DATA_CAMERA";
	var OUTLINER_DATA_ARMATURE : String = "OUTLINER_DATA_ARMATURE";
	var OUTLINER_DATA_FONT : String = "OUTLINER_DATA_FONT";
	var OUTLINER_DATA_SURFACE : String = "OUTLINER_DATA_SURFACE";
	var OUTLINER_DATA_SPEAKER : String = "OUTLINER_DATA_SPEAKER";
	var OUTLINER_DATA_GREASEPENCIL : String = "OUTLINER_DATA_GREASEPENCIL";
	var GP_SELECT_POINTS : String = "GP_SELECT_POINTS";
	var GP_SELECT_STROKES : String = "GP_SELECT_STROKES";
	var GP_MULTIFRAME_EDITING : String = "GP_MULTIFRAME_EDITING";
	var GP_ONLY_SELECTED : String = "GP_ONLY_SELECTED";
	var MODIFIER_OFF : String = "MODIFIER_OFF";
	var MODIFIER_ON : String = "MODIFIER_ON";
	var ONIONSKIN_OFF : String = "ONIONSKIN_OFF";
	var ONIONSKIN_ON : String = "ONIONSKIN_ON";
	var RESTRICT_VIEW_ON : String = "RESTRICT_VIEW_ON";
	var RESTRICT_VIEW_OFF : String = "RESTRICT_VIEW_OFF";
	var MESH_PLANE : String = "MESH_PLANE";
	var MESH_CUBE : String = "MESH_CUBE";
	var MESH_CIRCLE : String = "MESH_CIRCLE";
	var MESH_UVSPHERE : String = "MESH_UVSPHERE";
	var MESH_ICOSPHERE : String = "MESH_ICOSPHERE";
	var MESH_GRID : String = "MESH_GRID";
	var MESH_MONKEY : String = "MESH_MONKEY";
	var MESH_CYLINDER : String = "MESH_CYLINDER";
	var MESH_TORUS : String = "MESH_TORUS";
	var MESH_CONE : String = "MESH_CONE";
	var MESH_CAPSULE : String = "MESH_CAPSULE";
	var EMPTY_SINGLE_ARROW : String = "EMPTY_SINGLE_ARROW";
	var LIGHT_POINT : String = "LIGHT_POINT";
	var LIGHT_SUN : String = "LIGHT_SUN";
	var LIGHT_SPOT : String = "LIGHT_SPOT";
	var LIGHT_HEMI : String = "LIGHT_HEMI";
	var LIGHT_AREA : String = "LIGHT_AREA";
	var CUBE : String = "CUBE";
	var SPHERE : String = "SPHERE";
	var CONE : String = "CONE";
	var META_PLANE : String = "META_PLANE";
	var META_CUBE : String = "META_CUBE";
	var META_BALL : String = "META_BALL";
	var META_ELLIPSOID : String = "META_ELLIPSOID";
	var META_CAPSULE : String = "META_CAPSULE";
	var SURFACE_NCURVE : String = "SURFACE_NCURVE";
	var SURFACE_NCIRCLE : String = "SURFACE_NCIRCLE";
	var SURFACE_NSURFACE : String = "SURFACE_NSURFACE";
	var SURFACE_NCYLINDER : String = "SURFACE_NCYLINDER";
	var SURFACE_NSPHERE : String = "SURFACE_NSPHERE";
	var SURFACE_NTORUS : String = "SURFACE_NTORUS";
	var EMPTY_AXIS : String = "EMPTY_AXIS";
	var STROKE : String = "STROKE";
	var EMPTY_ARROWS : String = "EMPTY_ARROWS";
	var CURVE_BEZCURVE : String = "CURVE_BEZCURVE";
	var CURVE_BEZCIRCLE : String = "CURVE_BEZCIRCLE";
	var CURVE_NCURVE : String = "CURVE_NCURVE";
	var CURVE_NCIRCLE : String = "CURVE_NCIRCLE";
	var CURVE_PATH : String = "CURVE_PATH";
	var LIGHTPROBE_CUBEMAP : String = "LIGHTPROBE_CUBEMAP";
	var LIGHTPROBE_PLANAR : String = "LIGHTPROBE_PLANAR";
	var LIGHTPROBE_GRID : String = "LIGHTPROBE_GRID";
	var COLOR_RED : String = "COLOR_RED";
	var COLOR_GREEN : String = "COLOR_GREEN";
	var COLOR_BLUE : String = "COLOR_BLUE";
	var TRIA_RIGHT_BAR : String = "TRIA_RIGHT_BAR";
	var TRIA_DOWN_BAR : String = "TRIA_DOWN_BAR";
	var TRIA_LEFT_BAR : String = "TRIA_LEFT_BAR";
	var TRIA_UP_BAR : String = "TRIA_UP_BAR";
	var FORCE_FORCE : String = "FORCE_FORCE";
	var FORCE_WIND : String = "FORCE_WIND";
	var FORCE_VORTEX : String = "FORCE_VORTEX";
	var FORCE_MAGNETIC : String = "FORCE_MAGNETIC";
	var FORCE_HARMONIC : String = "FORCE_HARMONIC";
	var FORCE_CHARGE : String = "FORCE_CHARGE";
	var FORCE_LENNARDJONES : String = "FORCE_LENNARDJONES";
	var FORCE_TEXTURE : String = "FORCE_TEXTURE";
	var FORCE_CURVE : String = "FORCE_CURVE";
	var FORCE_BOID : String = "FORCE_BOID";
	var FORCE_TURBULENCE : String = "FORCE_TURBULENCE";
	var FORCE_DRAG : String = "FORCE_DRAG";
	var FORCE_SMOKEFLOW : String = "FORCE_SMOKEFLOW";
	var IMAGE_PLANE : String = "IMAGE_PLANE";
	var IMAGE_BACKGROUND : String = "IMAGE_BACKGROUND";
	var IMAGE_REFERENCE : String = "IMAGE_REFERENCE";
	var NODE_INSERT_ON : String = "NODE_INSERT_ON";
	var NODE_INSERT_OFF : String = "NODE_INSERT_OFF";
	var NODE_TOP : String = "NODE_TOP";
	var NODE_SIDE : String = "NODE_SIDE";
	var NODE_CORNER : String = "NODE_CORNER";
	var ALIGN_LEFT : String = "ALIGN_LEFT";
	var ALIGN_CENTER : String = "ALIGN_CENTER";
	var ALIGN_RIGHT : String = "ALIGN_RIGHT";
	var ALIGN_JUSTIFY : String = "ALIGN_JUSTIFY";
	var ALIGN_FLUSH : String = "ALIGN_FLUSH";
	var ALIGN_TOP : String = "ALIGN_TOP";
	var ALIGN_MIDDLE : String = "ALIGN_MIDDLE";
	var ALIGN_BOTTOM : String = "ALIGN_BOTTOM";
	var BOLD : String = "BOLD";
	var ITALIC : String = "ITALIC";
	var UNDERLINE : String = "UNDERLINE";
	var SMALL_CAPS : String = "SMALL_CAPS";
	var MODIFIER : String = "MODIFIER";
	var MOD_WAVE : String = "MOD_WAVE";
	var MOD_BUILD : String = "MOD_BUILD";
	var MOD_DECIM : String = "MOD_DECIM";
	var MOD_MIRROR : String = "MOD_MIRROR";
	var MOD_SOFT : String = "MOD_SOFT";
	var MOD_SUBSURF : String = "MOD_SUBSURF";
	var HOOK : String = "HOOK";
	var MOD_PHYSICS : String = "MOD_PHYSICS";
	var MOD_PARTICLES : String = "MOD_PARTICLES";
	var MOD_BOOLEAN : String = "MOD_BOOLEAN";
	var MOD_EDGESPLIT : String = "MOD_EDGESPLIT";
	var MOD_ARRAY : String = "MOD_ARRAY";
	var MOD_UVPROJECT : String = "MOD_UVPROJECT";
	var MOD_DISPLACE : String = "MOD_DISPLACE";
	var MOD_CURVE : String = "MOD_CURVE";
	var MOD_LATTICE : String = "MOD_LATTICE";
	var MOD_TINT : String = "MOD_TINT";
	var MOD_ARMATURE : String = "MOD_ARMATURE";
	var MOD_SHRINKWRAP : String = "MOD_SHRINKWRAP";
	var MOD_CAST : String = "MOD_CAST";
	var MOD_MESHDEFORM : String = "MOD_MESHDEFORM";
	var MOD_BEVEL : String = "MOD_BEVEL";
	var MOD_SMOOTH : String = "MOD_SMOOTH";
	var MOD_SIMPLEDEFORM : String = "MOD_SIMPLEDEFORM";
	var MOD_MASK : String = "MOD_MASK";
	var MOD_CLOTH : String = "MOD_CLOTH";
	var MOD_EXPLODE : String = "MOD_EXPLODE";
	var MOD_FLUIDSIM : String = "MOD_FLUIDSIM";
	var MOD_MULTIRES : String = "MOD_MULTIRES";
	var MOD_SMOKE : String = "MOD_SMOKE";
	var MOD_SOLIDIFY : String = "MOD_SOLIDIFY";
	var MOD_SCREW : String = "MOD_SCREW";
	var MOD_VERTEX_WEIGHT : String = "MOD_VERTEX_WEIGHT";
	var MOD_DYNAMICPAINT : String = "MOD_DYNAMICPAINT";
	var MOD_REMESH : String = "MOD_REMESH";
	var MOD_OCEAN : String = "MOD_OCEAN";
	var MOD_WARP : String = "MOD_WARP";
	var MOD_SKIN : String = "MOD_SKIN";
	var MOD_TRIANGULATE : String = "MOD_TRIANGULATE";
	var MOD_WIREFRAME : String = "MOD_WIREFRAME";
	var MOD_DATA_TRANSFER : String = "MOD_DATA_TRANSFER";
	var MOD_NORMALEDIT : String = "MOD_NORMALEDIT";
	var MOD_PARTICLE_INSTANCE : String = "MOD_PARTICLE_INSTANCE";
	var MOD_HUE_SATURATION : String = "MOD_HUE_SATURATION";
	var MOD_NOISE : String = "MOD_NOISE";
	var MOD_OFFSET : String = "MOD_OFFSET";
	var MOD_SIMPLIFY : String = "MOD_SIMPLIFY";
	var MOD_THICKNESS : String = "MOD_THICKNESS";
	var MOD_INSTANCE : String = "MOD_INSTANCE";
	var MOD_TIME : String = "MOD_TIME";
	var MOD_OPACITY : String = "MOD_OPACITY";
	var REC : String = "REC";
	var PLAY : String = "PLAY";
	var FF : String = "FF";
	var REW : String = "REW";
	var PAUSE : String = "PAUSE";
	var PREV_KEYFRAME : String = "PREV_KEYFRAME";
	var NEXT_KEYFRAME : String = "NEXT_KEYFRAME";
	var PLAY_REVERSE : String = "PLAY_REVERSE";
	var PREVIEW_RANGE : String = "PREVIEW_RANGE";
	var ACTION_TWEAK : String = "ACTION_TWEAK";
	var PMARKER_ACT : String = "PMARKER_ACT";
	var PMARKER_SEL : String = "PMARKER_SEL";
	var PMARKER : String = "PMARKER";
	var MARKER_HLT : String = "MARKER_HLT";
	var MARKER : String = "MARKER";
	var KEYFRAME_HLT : String = "KEYFRAME_HLT";
	var KEYFRAME : String = "KEYFRAME";
	var KEYINGSET : String = "KEYINGSET";
	var KEY_DEHLT : String = "KEY_DEHLT";
	var KEY_HLT : String = "KEY_HLT";
	var MUTE_IPO_OFF : String = "MUTE_IPO_OFF";
	var MUTE_IPO_ON : String = "MUTE_IPO_ON";
	var VISIBLE_IPO_OFF : String = "VISIBLE_IPO_OFF";
	var VISIBLE_IPO_ON : String = "VISIBLE_IPO_ON";
	var DRIVER : String = "DRIVER";
	var SOLO_OFF : String = "SOLO_OFF";
	var SOLO_ON : String = "SOLO_ON";
	var FRAME_PREV : String = "FRAME_PREV";
	var FRAME_NEXT : String = "FRAME_NEXT";
	var NLA_PUSHDOWN : String = "NLA_PUSHDOWN";
	var IPO_CONSTANT : String = "IPO_CONSTANT";
	var IPO_LINEAR : String = "IPO_LINEAR";
	var IPO_BEZIER : String = "IPO_BEZIER";
	var IPO_SINE : String = "IPO_SINE";
	var IPO_QUAD : String = "IPO_QUAD";
	var IPO_CUBIC : String = "IPO_CUBIC";
	var IPO_QUART : String = "IPO_QUART";
	var IPO_QUINT : String = "IPO_QUINT";
	var IPO_EXPO : String = "IPO_EXPO";
	var IPO_CIRC : String = "IPO_CIRC";
	var IPO_BOUNCE : String = "IPO_BOUNCE";
	var IPO_ELASTIC : String = "IPO_ELASTIC";
	var IPO_BACK : String = "IPO_BACK";
	var IPO_EASE_IN : String = "IPO_EASE_IN";
	var IPO_EASE_OUT : String = "IPO_EASE_OUT";
	var IPO_EASE_IN_OUT : String = "IPO_EASE_IN_OUT";
	var NORMALIZE_FCURVES : String = "NORMALIZE_FCURVES";
	var VERTEXSEL : String = "VERTEXSEL";
	var EDGESEL : String = "EDGESEL";
	var FACESEL : String = "FACESEL";
	var PIVOT_BOUNDBOX : String = "PIVOT_BOUNDBOX";
	var PIVOT_CURSOR : String = "PIVOT_CURSOR";
	var PIVOT_INDIVIDUAL : String = "PIVOT_INDIVIDUAL";
	var PIVOT_MEDIAN : String = "PIVOT_MEDIAN";
	var PIVOT_ACTIVE : String = "PIVOT_ACTIVE";
	var CENTER_ONLY : String = "CENTER_ONLY";
	var SMOOTHCURVE : String = "SMOOTHCURVE";
	var SPHERECURVE : String = "SPHERECURVE";
	var ROOTCURVE : String = "ROOTCURVE";
	var SHARPCURVE : String = "SHARPCURVE";
	var LINCURVE : String = "LINCURVE";
	var NOCURVE : String = "NOCURVE";
	var RNDCURVE : String = "RNDCURVE";
	var PROP_OFF : String = "PROP_OFF";
	var PROP_ON : String = "PROP_ON";
	var PROP_CON : String = "PROP_CON";
	var SCULPT_DYNTOPO : String = "SCULPT_DYNTOPO";
	var PARTICLE_POINT : String = "PARTICLE_POINT";
	var PARTICLE_TIP : String = "PARTICLE_TIP";
	var PARTICLE_PATH : String = "PARTICLE_PATH";
	var SNAP_OFF : String = "SNAP_OFF";
	var SNAP_ON : String = "SNAP_ON";
	var SNAP_NORMAL : String = "SNAP_NORMAL";
	var SNAP_GRID : String = "SNAP_GRID";
	var SNAP_VERTEX : String = "SNAP_VERTEX";
	var SNAP_EDGE : String = "SNAP_EDGE";
	var SNAP_FACE : String = "SNAP_FACE";
	var SNAP_VOLUME : String = "SNAP_VOLUME";
	var SNAP_INCREMENT : String = "SNAP_INCREMENT";
	var STICKY_UVS_LOC : String = "STICKY_UVS_LOC";
	var STICKY_UVS_DISABLE : String = "STICKY_UVS_DISABLE";
	var STICKY_UVS_VERT : String = "STICKY_UVS_VERT";
	var CLIPUV_DEHLT : String = "CLIPUV_DEHLT";
	var CLIPUV_HLT : String = "CLIPUV_HLT";
	var SNAP_PEEL_OBJECT : String = "SNAP_PEEL_OBJECT";
	var GRID : String = "GRID";
	var OBJECT_ORIGIN : String = "OBJECT_ORIGIN";
	var ORIENTATION_GLOBAL : String = "ORIENTATION_GLOBAL";
	var ORIENTATION_GIMBAL : String = "ORIENTATION_GIMBAL";
	var ORIENTATION_LOCAL : String = "ORIENTATION_LOCAL";
	var ORIENTATION_NORMAL : String = "ORIENTATION_NORMAL";
	var ORIENTATION_VIEW : String = "ORIENTATION_VIEW";
	var COPYDOWN : String = "COPYDOWN";
	var PASTEDOWN : String = "PASTEDOWN";
	var PASTEFLIPUP : String = "PASTEFLIPUP";
	var PASTEFLIPDOWN : String = "PASTEFLIPDOWN";
	var VIS_SEL_11 : String = "VIS_SEL_11";
	var VIS_SEL_10 : String = "VIS_SEL_10";
	var VIS_SEL_01 : String = "VIS_SEL_01";
	var VIS_SEL_00 : String = "VIS_SEL_00";
	var AUTOMERGE_ON : String = "AUTOMERGE_ON";
	var AUTOMERGE_OFF : String = "AUTOMERGE_OFF";
	var UV_VERTEXSEL : String = "UV_VERTEXSEL";
	var UV_EDGESEL : String = "UV_EDGESEL";
	var UV_FACESEL : String = "UV_FACESEL";
	var UV_ISLANDSEL : String = "UV_ISLANDSEL";
	var UV_SYNC_SELECT : String = "UV_SYNC_SELECT";
	var NORMALS_VERTEX : String = "NORMALS_VERTEX";
	var NORMALS_FACE : String = "NORMALS_FACE";
	var NORMALS_VERTEX_FACE : String = "NORMALS_VERTEX_FACE";
	var SHADING_BBOX : String = "SHADING_BBOX";
	var SHADING_WIRE : String = "SHADING_WIRE";
	var SHADING_SOLID : String = "SHADING_SOLID";
	var SHADING_RENDERED : String = "SHADING_RENDERED";
	var SHADING_TEXTURE : String = "SHADING_TEXTURE";
	var OVERLAY : String = "OVERLAY";
	var XRAY : String = "XRAY";
	var LOCKVIEW_OFF : String = "LOCKVIEW_OFF";
	var LOCKVIEW_ON : String = "LOCKVIEW_ON";
	var AXIS_SIDE : String = "AXIS_SIDE";
	var AXIS_FRONT : String = "AXIS_FRONT";
	var AXIS_TOP : String = "AXIS_TOP";
	var NDOF_DOM : String = "NDOF_DOM";
	var NDOF_TURN : String = "NDOF_TURN";
	var NDOF_FLY : String = "NDOF_FLY";
	var NDOF_TRANS : String = "NDOF_TRANS";
	var LAYER_USED : String = "LAYER_USED";
	var LAYER_ACTIVE : String = "LAYER_ACTIVE";
	var SORTALPHA : String = "SORTALPHA";
	var SORTBYEXT : String = "SORTBYEXT";
	var SORTTIME : String = "SORTTIME";
	var SORTSIZE : String = "SORTSIZE";
	var SHORTDISPLAY : String = "SHORTDISPLAY";
	var LONGDISPLAY : String = "LONGDISPLAY";
	var IMGDISPLAY : String = "IMGDISPLAY";
	var BOOKMARKS : String = "BOOKMARKS";
	var FONTPREVIEW : String = "FONTPREVIEW";
	var FILTER : String = "FILTER";
	var NEWFOLDER : String = "NEWFOLDER";
	var FILE_PARENT : String = "FILE_PARENT";
	var FILE_REFRESH : String = "FILE_REFRESH";
	var FILE_FOLDER : String = "FILE_FOLDER";
	var FILE_BLANK : String = "FILE_BLANK";
	var FILE_BLEND : String = "FILE_BLEND";
	var FILE_IMAGE : String = "FILE_IMAGE";
	var FILE_MOVIE : String = "FILE_MOVIE";
	var FILE_SCRIPT : String = "FILE_SCRIPT";
	var FILE_SOUND : String = "FILE_SOUND";
	var FILE_FONT : String = "FILE_FONT";
	var FILE_TEXT : String = "FILE_TEXT";
	var SORT_DESC : String = "SORT_DESC";
	var SORT_ASC : String = "SORT_ASC";
	var LINK_BLEND : String = "LINK_BLEND";
	var APPEND_BLEND : String = "APPEND_BLEND";
	var IMPORT : String = "IMPORT";
	var EXPORT : String = "EXPORT";
	var LOOP_BACK : String = "LOOP_BACK";
	var LOOP_FORWARDS : String = "LOOP_FORWARDS";
	var BACK : String = "BACK";
	var FORWARD : String = "FORWARD";
	var FILE_VOLUME : String = "FILE_VOLUME";
	var ALEMBIC : String = "ALEMBIC";
	var VOLUME : String = "VOLUME";
	var FILE_HIDDEN : String = "FILE_HIDDEN";
	var FILE_BACKUP : String = "FILE_BACKUP";
	var DISK_DRIVE : String = "DISK_DRIVE";
	var MATPLANE : String = "MATPLANE";
	var MATSPHERE : String = "MATSPHERE";
	var MATCUBE : String = "MATCUBE";
	var MONKEY : String = "MONKEY";
	var HAIR : String = "HAIR";
	var ALIASED : String = "ALIASED";
	var ANTIALIASED : String = "ANTIALIASED";
	var MAT_SPHERE_SKY : String = "MAT_SPHERE_SKY";
	var MATSHADERBALL : String = "MATSHADERBALL";
	var MATCLOTH : String = "MATCLOTH";
	var MATFLUID : String = "MATFLUID";
	var WORDWRAP_OFF : String = "WORDWRAP_OFF";
	var WORDWRAP_ON : String = "WORDWRAP_ON";
	var SYNTAX_OFF : String = "SYNTAX_OFF";
	var SYNTAX_ON : String = "SYNTAX_ON";
	var LINENUMBERS_OFF : String = "LINENUMBERS_OFF";
	var LINENUMBERS_ON : String = "LINENUMBERS_ON";
	var SCRIPTPLUGINS : String = "SCRIPTPLUGINS";
	var SEQ_SEQUENCER : String = "SEQ_SEQUENCER";
	var SEQ_PREVIEW : String = "SEQ_PREVIEW";
	var SEQ_LUMA_WAVEFORM : String = "SEQ_LUMA_WAVEFORM";
	var SEQ_CHROMA_SCOPE : String = "SEQ_CHROMA_SCOPE";
	var SEQ_HISTOGRAM : String = "SEQ_HISTOGRAM";
	var SEQ_SPLITVIEW : String = "SEQ_SPLITVIEW";
	var IMAGE_RGB : String = "IMAGE_RGB";
	var IMAGE_RGB_ALPHA : String = "IMAGE_RGB_ALPHA";
	var IMAGE_ALPHA : String = "IMAGE_ALPHA";
	var IMAGE_ZDEPTH : String = "IMAGE_ZDEPTH";
	var VIEW_PERSPECTIVE : String = "VIEW_PERSPECTIVE";
	var VIEW_ORTHO : String = "VIEW_ORTHO";
	var VIEW_CAMERA : String = "VIEW_CAMERA";
	var VIEW_PAN : String = "VIEW_PAN";
	var VIEW_ZOOM : String = "VIEW_ZOOM";
	var BRUSH_ADD : String = "BRUSH_ADD";
	var BRUSH_BLOB : String = "BRUSH_BLOB";
	var BRUSH_BLUR : String = "BRUSH_BLUR";
	var BRUSH_CLAY : String = "BRUSH_CLAY";
	var BRUSH_CLAY_STRIPS : String = "BRUSH_CLAY_STRIPS";
	var BRUSH_CLONE : String = "BRUSH_CLONE";
	var BRUSH_CREASE : String = "BRUSH_CREASE";
	var BRUSH_DARKEN : String = "BRUSH_DARKEN";
	var BRUSH_FILL : String = "BRUSH_FILL";
	var BRUSH_FLATTEN : String = "BRUSH_FLATTEN";
	var BRUSH_GRAB : String = "BRUSH_GRAB";
	var BRUSH_INFLATE : String = "BRUSH_INFLATE";
	var BRUSH_LAYER : String = "BRUSH_LAYER";
	var BRUSH_LIGHTEN : String = "BRUSH_LIGHTEN";
	var BRUSH_MASK : String = "BRUSH_MASK";
	var BRUSH_MIX : String = "BRUSH_MIX";
	var BRUSH_MULTIPLY : String = "BRUSH_MULTIPLY";
	var BRUSH_NUDGE : String = "BRUSH_NUDGE";
	var BRUSH_PINCH : String = "BRUSH_PINCH";
	var BRUSH_SCRAPE : String = "BRUSH_SCRAPE";
	var BRUSH_SCULPT_DRAW : String = "BRUSH_SCULPT_DRAW";
	var BRUSH_SMEAR : String = "BRUSH_SMEAR";
	var BRUSH_SMOOTH : String = "BRUSH_SMOOTH";
	var BRUSH_SNAKE_HOOK : String = "BRUSH_SNAKE_HOOK";
	var BRUSH_SOFTEN : String = "BRUSH_SOFTEN";
	var BRUSH_SUBTRACT : String = "BRUSH_SUBTRACT";
	var BRUSH_TEXDRAW : String = "BRUSH_TEXDRAW";
	var BRUSH_TEXFILL : String = "BRUSH_TEXFILL";
	var BRUSH_TEXMASK : String = "BRUSH_TEXMASK";
	var BRUSH_THUMB : String = "BRUSH_THUMB";
	var BRUSH_ROTATE : String = "BRUSH_ROTATE";
	var BRUSH_VERTEXDRAW : String = "BRUSH_VERTEXDRAW";
	var MATCAP_01 : String = "MATCAP_01";
	var MATCAP_02 : String = "MATCAP_02";
	var MATCAP_03 : String = "MATCAP_03";
	var MATCAP_04 : String = "MATCAP_04";
	var MATCAP_05 : String = "MATCAP_05";
	var MATCAP_06 : String = "MATCAP_06";
	var MATCAP_07 : String = "MATCAP_07";
	var MATCAP_08 : String = "MATCAP_08";
	var MATCAP_09 : String = "MATCAP_09";
	var MATCAP_10 : String = "MATCAP_10";
	var MATCAP_11 : String = "MATCAP_11";
	var MATCAP_12 : String = "MATCAP_12";
	var MATCAP_13 : String = "MATCAP_13";
	var MATCAP_14 : String = "MATCAP_14";
	var MATCAP_15 : String = "MATCAP_15";
	var MATCAP_16 : String = "MATCAP_16";
	var MATCAP_17 : String = "MATCAP_17";
	var MATCAP_18 : String = "MATCAP_18";
	var MATCAP_19 : String = "MATCAP_19";
	var MATCAP_20 : String = "MATCAP_20";
	var MATCAP_21 : String = "MATCAP_21";
	var MATCAP_22 : String = "MATCAP_22";
	var MATCAP_23 : String = "MATCAP_23";
	var MATCAP_24 : String = "MATCAP_24";
	var GPBRUSH_SMOOTH : String = "GPBRUSH_SMOOTH";
	var GPBRUSH_THICKNESS : String = "GPBRUSH_THICKNESS";
	var GPBRUSH_STRENGTH : String = "GPBRUSH_STRENGTH";
	var GPBRUSH_GRAB : String = "GPBRUSH_GRAB";
	var GPBRUSH_PUSH : String = "GPBRUSH_PUSH";
	var GPBRUSH_TWIST : String = "GPBRUSH_TWIST";
	var GPBRUSH_PINCH : String = "GPBRUSH_PINCH";
	var GPBRUSH_RANDOMIZE : String = "GPBRUSH_RANDOMIZE";
	var GPBRUSH_CLONE : String = "GPBRUSH_CLONE";
	var GPBRUSH_WEIGHT : String = "GPBRUSH_WEIGHT";
	var GPBRUSH_PENCIL : String = "GPBRUSH_PENCIL";
	var GPBRUSH_PEN : String = "GPBRUSH_PEN";
	var GPBRUSH_INK : String = "GPBRUSH_INK";
	var GPBRUSH_INKNOISE : String = "GPBRUSH_INKNOISE";
	var GPBRUSH_BLOCK : String = "GPBRUSH_BLOCK";
	var GPBRUSH_MARKER : String = "GPBRUSH_MARKER";
	var GPBRUSH_CUSTOM : String = "GPBRUSH_CUSTOM";
	var GPBRUSH_FILL : String = "GPBRUSH_FILL";
	var GPBRUSH_ERASE_SOFT : String = "GPBRUSH_ERASE_SOFT";
	var GPBRUSH_ERASE_HARD : String = "GPBRUSH_ERASE_HARD";
	var GPBRUSH_ERASE_STROKE : String = "GPBRUSH_ERASE_STROKE";
	var SMALL_TRI_RIGHT_VEC : String = "SMALL_TRI_RIGHT_VEC";
	var KEYTYPE_KEYFRAME_VEC : String = "KEYTYPE_KEYFRAME_VEC";
	var KEYTYPE_BREAKDOWN_VEC : String = "KEYTYPE_BREAKDOWN_VEC";
	var KEYTYPE_EXTREME_VEC : String = "KEYTYPE_EXTREME_VEC";
	var KEYTYPE_JITTER_VEC : String = "KEYTYPE_JITTER_VEC";
	var KEYTYPE_MOVING_HOLD_VEC : String = "KEYTYPE_MOVING_HOLD_VEC";
	var HANDLETYPE_FREE_VEC : String = "HANDLETYPE_FREE_VEC";
	var HANDLETYPE_ALIGNED_VEC : String = "HANDLETYPE_ALIGNED_VEC";
	var HANDLETYPE_VECTOR_VEC : String = "HANDLETYPE_VECTOR_VEC";
	var HANDLETYPE_AUTO_VEC : String = "HANDLETYPE_AUTO_VEC";
	var HANDLETYPE_AUTO_CLAMP_VEC : String = "HANDLETYPE_AUTO_CLAMP_VEC";
	var COLORSET_01_VEC : String = "COLORSET_01_VEC";
	var COLORSET_02_VEC : String = "COLORSET_02_VEC";
	var COLORSET_03_VEC : String = "COLORSET_03_VEC";
	var COLORSET_04_VEC : String = "COLORSET_04_VEC";
	var COLORSET_05_VEC : String = "COLORSET_05_VEC";
	var COLORSET_06_VEC : String = "COLORSET_06_VEC";
	var COLORSET_07_VEC : String = "COLORSET_07_VEC";
	var COLORSET_08_VEC : String = "COLORSET_08_VEC";
	var COLORSET_09_VEC : String = "COLORSET_09_VEC";
	var COLORSET_10_VEC : String = "COLORSET_10_VEC";
	var COLORSET_11_VEC : String = "COLORSET_11_VEC";
	var COLORSET_12_VEC : String = "COLORSET_12_VEC";
	var COLORSET_13_VEC : String = "COLORSET_13_VEC";
	var COLORSET_14_VEC : String = "COLORSET_14_VEC";
	var COLORSET_15_VEC : String = "COLORSET_15_VEC";
	var COLORSET_16_VEC : String = "COLORSET_16_VEC";
	var COLORSET_17_VEC : String = "COLORSET_17_VEC";
	var COLORSET_18_VEC : String = "COLORSET_18_VEC";
	var COLORSET_19_VEC : String = "COLORSET_19_VEC";
	var COLORSET_20_VEC : String = "COLORSET_20_VEC";
	var EVENT_A : String = "EVENT_A";
	var EVENT_B : String = "EVENT_B";
	var EVENT_C : String = "EVENT_C";
	var EVENT_D : String = "EVENT_D";
	var EVENT_E : String = "EVENT_E";
	var EVENT_F : String = "EVENT_F";
	var EVENT_G : String = "EVENT_G";
	var EVENT_H : String = "EVENT_H";
	var EVENT_I : String = "EVENT_I";
	var EVENT_J : String = "EVENT_J";
	var EVENT_K : String = "EVENT_K";
	var EVENT_L : String = "EVENT_L";
	var EVENT_M : String = "EVENT_M";
	var EVENT_N : String = "EVENT_N";
	var EVENT_O : String = "EVENT_O";
	var EVENT_P : String = "EVENT_P";
	var EVENT_Q : String = "EVENT_Q";
	var EVENT_R : String = "EVENT_R";
	var EVENT_S : String = "EVENT_S";
	var EVENT_T : String = "EVENT_T";
	var EVENT_U : String = "EVENT_U";
	var EVENT_V : String = "EVENT_V";
	var EVENT_W : String = "EVENT_W";
	var EVENT_X : String = "EVENT_X";
	var EVENT_Y : String = "EVENT_Y";
	var EVENT_Z : String = "EVENT_Z";
	var EVENT_SHIFT : String = "EVENT_SHIFT";
	var EVENT_CTRL : String = "EVENT_CTRL";
	var EVENT_ALT : String = "EVENT_ALT";
	var EVENT_OS : String = "EVENT_OS";
	var EVENT_F1 : String = "EVENT_F1";
	var EVENT_F2 : String = "EVENT_F2";
	var EVENT_F3 : String = "EVENT_F3";
	var EVENT_F4 : String = "EVENT_F4";
	var EVENT_F5 : String = "EVENT_F5";
	var EVENT_F6 : String = "EVENT_F6";
	var EVENT_F7 : String = "EVENT_F7";
	var EVENT_F8 : String = "EVENT_F8";
	var EVENT_F9 : String = "EVENT_F9";
	var EVENT_F10 : String = "EVENT_F10";
	var EVENT_F11 : String = "EVENT_F11";
	var EVENT_F12 : String = "EVENT_F12";
	var EVENT_ESC : String = "EVENT_ESC";
	var EVENT_TAB : String = "EVENT_TAB";
	var EVENT_PAGEUP : String = "EVENT_PAGEUP";
	var EVENT_PAGEDOWN : String = "EVENT_PAGEDOWN";
	var EVENT_HOME : String = "EVENT_HOME";
	var EVENT_END : String = "EVENT_END";
	var EVENT_RETURN : String = "EVENT_RETURN";
}/**
	Window manager data-block defining open windows and other user interface data
**/
@:pythonImport("bpy.types.WindowManager") extern class WindowManager {
	/**
		Filter add-ons by category
		
		Type: enum in [], default ‘’
	**/
	var addon_filter : bpy.types.windowmanager.WindowManager.Enum1;
	/**
		Search within the selected filter
		
		Type: string, default “”, (never None)
	**/
	var addon_search : String;
	/**
		Display support level
		
		Type: enum set in {‘OFFICIAL’, ‘COMMUNITY’, ‘TESTING’}, default {‘COMMUNITY’, ‘OFFICIAL’}
	**/
	var addon_support : Dynamic;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var clipboard : String;
	/**
		Registered key configurations
		
		Type: KeyConfigurations bpy_prop_collection of KeyConfig, (readonly)
	**/
	var keyconfigs(default, never) : bpy.types.keyconfigurations.KeyConfigurations;
	/**
		Operator registry
		
		Type: bpy_prop_collection of Operator, (readonly)
	**/
	var operators(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Name for new preset
		
		Type: string, default “New Preset”, (never None)
	**/
	var preset_name : String;
	/**
		Open windows
		
		Type: bpy_prop_collection of Window, (readonly)
	**/
	var windows(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Opens a file selector with an operator. The string properties ‘filepath’, ‘filename’, ‘directory’ and a ‘files’ collection are assigned when present in the operator
		@param operator Operator to call — Operator
	**/
	static function fileselect_add(operator:Dynamic):Void;
	/**
		Add a modal handler to the window manager, for the given modal operator (called by invoke() with self, just before returning {‘RUNNING_MODAL’})
		@param operator Operator to call — Operator
		
		@returns boolean
	**/
	static function modal_handler_add(operator:Dynamic):Dynamic;
	/**
		Add a timer to the given window, to generate periodic ‘TIMER’ events
		@param time_step Time Step, Interval in seconds between timer events — float in [0, inf]
		@param window Window to attach the timer to, or None — Window, (optional)
		
		@returns Timer
	**/
	function event_timer_add(time_step:Float, window:bpy.types.window.Window):bpy.types.timer.Timer;
	/**
		event_timer_remove
	**/
	function event_timer_remove():Void;
	/**
		Activate an existing widget group (when the persistent option isn’t set)
		@param identifier Gizmo group type name — string, (never None)
	**/
	static function gizmo_group_type_add(identifier:String):Void;
	/**
		De-activate a widget group (when the persistent option isn’t set)
		@param identifier Gizmo group type name — string, (never None)
	**/
	static function gizmo_group_type_remove(identifier:String):Void;
	/**
		Start progress report
		@param min min, any value in range [0,9999] — float in [-inf, inf]
		@param max max, any value in range [min+1,9998] — float in [-inf, inf]
	**/
	function progress_begin(min:Float, max:Float):Void;
	/**
		Update the progress feedback
		@param value value, Any value between min and max as set in progress_begin() — float in [-inf, inf]
	**/
	function progress_update(value:Float):Void;
	/**
		Terminate progress report
	**/
	function progress_end():Void;
	/**
		Operator popup invoke (show operator properties and execute it automatically on changes)
		@param operator Operator to call — Operator
		@param event Event — Event
		
		@returns enum set in {‘RUNNING_MODAL’, ‘CANCELLED’, ‘FINISHED’, ‘PASS_THROUGH’, ‘INTERFACE’}
	**/
	static function invoke_props_popup(operator:Dynamic, event:Dynamic):Dynamic;
	/**
		Operator dialog (non-autoexec popup) invoke (show operator properties and only execute it on click on OK button)
		@param operator Operator to call — Operator
		@param width Width of the popup — int in [0, inf], (optional)
		@param height Height of the popup — int in [0, inf], (optional)
		
		@returns enum set in {‘RUNNING_MODAL’, ‘CANCELLED’, ‘FINISHED’, ‘PASS_THROUGH’, ‘INTERFACE’}
	**/
	static function invoke_props_dialog(operator:Dynamic, width:Int, height:Int):Dynamic;
	/**
		Operator search popup invoke which searches values of the operator’s bpy.types.Operator.bl_property (which must be an EnumProperty), executing it on confirmation
		@param operator Operator to call — Operator
	**/
	static function invoke_search_popup(operator:Dynamic):Void;
	/**
		Operator popup invoke (only shows operator’s properties, without executing it)
		@param operator Operator to call — Operator
		@param width Width of the popup — int in [0, inf], (optional)
		@param height Height of the popup — int in [0, inf], (optional)
		
		@returns enum set in {‘RUNNING_MODAL’, ‘CANCELLED’, ‘FINISHED’, ‘PASS_THROUGH’, ‘INTERFACE’}
	**/
	static function invoke_popup(operator:Dynamic, width:Int, height:Int):Dynamic;
	/**
		Operator confirmation popup (only to let user confirm the execution, no operator properties shown)
		@param operator Operator to call — Operator
		@param event Event — Event
		
		@returns enum set in {‘RUNNING_MODAL’, ‘CANCELLED’, ‘FINISHED’, ‘PASS_THROUGH’, ‘INTERFACE’}
	**/
	static function invoke_confirm(operator:Dynamic, event:Dynamic):Dynamic;
	/**
		popmenu_begin__internal
		@param icon icon — enum in ['NONE', 'QUESTION', 'ERROR', 'CANCEL', 'TRIA_RIGHT', 'TRIA_DOWN', 'TRIA_LEFT', 'TRIA_UP', 'ARROW_LEFTRIGHT', 'PLUS', 'DISCLOSURE_TRI_RIGHT', 'DISCLOSURE_TRI_DOWN', 'RADIOBUT_OFF', 'RADIOBUT_ON', 'MENU_PANEL', 'BLENDER', 'GRIP', 'DOT', 'COLLAPSEMENU', 'X', 'DUPLICATE', 'NODE', 'NODE_SEL', 'WINDOW', 'WORKSPACE', 'RIGHTARROW_THIN', 'BORDERMOVE', 'VIEWZOOM', 'ADD', 'REMOVE', 'PANEL_CLOSE', 'COPY_ID', 'EYEDROPPER', 'AUTO', 'CHECKBOX_DEHLT', 'CHECKBOX_HLT', 'UNLOCKED', 'LOCKED', 'UNPINNED', 'PINNED', 'SCREEN_BACK', 'RIGHTARROW', 'DOWNARROW_HLT', 'PLUGIN', 'HELP', 'GHOST_ENABLED', 'COLOR', 'UNLINKED', 'LINKED', 'HAND', 'ZOOM_ALL', 'ZOOM_SELECTED', 'ZOOM_PREVIOUS', 'ZOOM_IN', 'ZOOM_OUT', 'DRIVER_DISTANCE', 'DRIVER_ROTATIONAL_DIFFERENCE', 'DRIVER_TRANSFORM', 'FREEZE', 'STYLUS_PRESSURE', 'GHOST_DISABLED', 'FILE_NEW', 'FILE_TICK', 'QUIT', 'URL', 'RECOVER_LAST', 'THREE_DOTS', 'FULLSCREEN_ENTER', 'FULLSCREEN_EXIT', 'LIGHT', 'MATERIAL', 'TEXTURE', 'ANIM', 'WORLD', 'SCENE', 'OUTPUT', 'SCRIPT', 'PARTICLES', 'PHYSICS', 'SPEAKER', 'TOOL_SETTINGS', 'SHADERFX', 'BLANK1', 'FAKE_USER_OFF', 'FAKE_USER_ON', 'VIEW3D', 'GRAPH', 'OUTLINER', 'PROPERTIES', 'FILEBROWSER', 'IMAGE', 'INFO', 'SEQUENCE', 'TEXT', 'SOUND', 'ACTION', 'NLA', 'PREFERENCES', 'TIME', 'NODETREE', 'CONSOLE', 'CLIP', 'ASSET_MANAGER', 'NODE_COMPOSITING', 'NODE_TEXTURE', 'NODE_MATERIAL', 'OBJECT_DATAMODE', 'EDITMODE_HLT', 'UV', 'VPAINT_HLT', 'TPAINT_HLT', 'WPAINT_HLT', 'SCULPTMODE_HLT', 'POSE_HLT', 'PARTICLEMODE', 'TRACKING', 'TRACKING_BACKWARDS', 'TRACKING_FORWARDS', 'TRACKING_BACKWARDS_SINGLE', 'TRACKING_FORWARDS_SINGLE', 'TRACKING_CLEAR_BACKWARDS', 'TRACKING_CLEAR_FORWARDS', 'TRACKING_REFINE_BACKWARDS', 'TRACKING_REFINE_FORWARDS', 'SCENE_DATA', 'RENDERLAYERS', 'WORLD_DATA', 'OBJECT_DATA', 'MESH_DATA', 'CURVE_DATA', 'META_DATA', 'LATTICE_DATA', 'LIGHT_DATA', 'MATERIAL_DATA', 'TEXTURE_DATA', 'ANIM_DATA', 'CAMERA_DATA', 'PARTICLE_DATA', 'LIBRARY_DATA_DIRECT', 'GROUP', 'ARMATURE_DATA', 'COMMUNITY', 'BONE_DATA', 'CONSTRAINT', 'SHAPEKEY_DATA', 'CONSTRAINT_BONE', 'CAMERA_STEREO', 'PACKAGE', 'UGLYPACKAGE', 'EXPERIMENTAL', 'BRUSH_DATA', 'IMAGE_DATA', 'FILE', 'FCURVE', 'FONT_DATA', 'RENDER_RESULT', 'SURFACE_DATA', 'EMPTY_DATA', 'PRESET', 'RENDER_ANIMATION', 'RENDER_STILL', 'LIBRARY_DATA_BROKEN', 'BOIDS', 'STRANDS', 'LIBRARY_DATA_INDIRECT', 'GREASEPENCIL', 'LINE_DATA', 'LIBRARY_DATA_OVERRIDE', 'GROUP_BONE', 'GROUP_VERTEX', 'GROUP_VCOL', 'GROUP_UVS', 'FACE_MAPS', 'RNA', 'RNA_ADD', 'MOUSE_LMB', 'MOUSE_MMB', 'MOUSE_RMB', 'MOUSE_MOVE', 'MOUSE_LMB_DRAG', 'MOUSE_MMB_DRAG', 'MOUSE_RMB_DRAG', 'PRESET_NEW', 'DECORATE', 'DECORATE_KEYFRAME', 'DECORATE_ANIMATE', 'DECORATE_DRIVER', 'DECORATE_LINKED', 'DECORATE_LIBRARY_OVERRIDE', 'DECORATE_UNLOCKED', 'DECORATE_LOCKED', 'DECORATE_OVERRIDE', 'SEALED', 'HEART', 'ORPHAN_DATA', 'USER', 'SYSTEM', 'SETTINGS', 'OUTLINER_OB_EMPTY', 'OUTLINER_OB_MESH', 'OUTLINER_OB_CURVE', 'OUTLINER_OB_LATTICE', 'OUTLINER_OB_META', 'OUTLINER_OB_LIGHT', 'OUTLINER_OB_CAMERA', 'OUTLINER_OB_ARMATURE', 'OUTLINER_OB_FONT', 'OUTLINER_OB_SURFACE', 'OUTLINER_OB_SPEAKER', 'OUTLINER_OB_FORCE_FIELD', 'OUTLINER_OB_GROUP_INSTANCE', 'OUTLINER_OB_GREASEPENCIL', 'OUTLINER_OB_LIGHTPROBE', 'OUTLINER_OB_IMAGE', 'RESTRICT_COLOR_OFF', 'RESTRICT_COLOR_ON', 'HIDE_ON', 'HIDE_OFF', 'RESTRICT_SELECT_ON', 'RESTRICT_SELECT_OFF', 'RESTRICT_RENDER_ON', 'RESTRICT_RENDER_OFF', 'OUTLINER_DATA_EMPTY', 'OUTLINER_DATA_MESH', 'OUTLINER_DATA_CURVE', 'OUTLINER_DATA_LATTICE', 'OUTLINER_DATA_META', 'OUTLINER_DATA_LIGHT', 'OUTLINER_DATA_CAMERA', 'OUTLINER_DATA_ARMATURE', 'OUTLINER_DATA_FONT', 'OUTLINER_DATA_SURFACE', 'OUTLINER_DATA_SPEAKER', 'OUTLINER_DATA_GREASEPENCIL', 'GP_SELECT_POINTS', 'GP_SELECT_STROKES', 'GP_MULTIFRAME_EDITING', 'GP_ONLY_SELECTED', 'MODIFIER_OFF', 'MODIFIER_ON', 'ONIONSKIN_OFF', 'ONIONSKIN_ON', 'RESTRICT_VIEW_ON', 'RESTRICT_VIEW_OFF', 'MESH_PLANE', 'MESH_CUBE', 'MESH_CIRCLE', 'MESH_UVSPHERE', 'MESH_ICOSPHERE', 'MESH_GRID', 'MESH_MONKEY', 'MESH_CYLINDER', 'MESH_TORUS', 'MESH_CONE', 'MESH_CAPSULE', 'EMPTY_SINGLE_ARROW', 'LIGHT_POINT', 'LIGHT_SUN', 'LIGHT_SPOT', 'LIGHT_HEMI', 'LIGHT_AREA', 'CUBE', 'SPHERE', 'CONE', 'META_PLANE', 'META_CUBE', 'META_BALL', 'META_ELLIPSOID', 'META_CAPSULE', 'SURFACE_NCURVE', 'SURFACE_NCIRCLE', 'SURFACE_NSURFACE', 'SURFACE_NCYLINDER', 'SURFACE_NSPHERE', 'SURFACE_NTORUS', 'EMPTY_AXIS', 'STROKE', 'EMPTY_ARROWS', 'CURVE_BEZCURVE', 'CURVE_BEZCIRCLE', 'CURVE_NCURVE', 'CURVE_NCIRCLE', 'CURVE_PATH', 'LIGHTPROBE_CUBEMAP', 'LIGHTPROBE_PLANAR', 'LIGHTPROBE_GRID', 'COLOR_RED', 'COLOR_GREEN', 'COLOR_BLUE', 'TRIA_RIGHT_BAR', 'TRIA_DOWN_BAR', 'TRIA_LEFT_BAR', 'TRIA_UP_BAR', 'FORCE_FORCE', 'FORCE_WIND', 'FORCE_VORTEX', 'FORCE_MAGNETIC', 'FORCE_HARMONIC', 'FORCE_CHARGE', 'FORCE_LENNARDJONES', 'FORCE_TEXTURE', 'FORCE_CURVE', 'FORCE_BOID', 'FORCE_TURBULENCE', 'FORCE_DRAG', 'FORCE_SMOKEFLOW', 'IMAGE_PLANE', 'IMAGE_BACKGROUND', 'IMAGE_REFERENCE', 'NODE_INSERT_ON', 'NODE_INSERT_OFF', 'NODE_TOP', 'NODE_SIDE', 'NODE_CORNER', 'ALIGN_LEFT', 'ALIGN_CENTER', 'ALIGN_RIGHT', 'ALIGN_JUSTIFY', 'ALIGN_FLUSH', 'ALIGN_TOP', 'ALIGN_MIDDLE', 'ALIGN_BOTTOM', 'BOLD', 'ITALIC', 'UNDERLINE', 'SMALL_CAPS', 'MODIFIER', 'MOD_WAVE', 'MOD_BUILD', 'MOD_DECIM', 'MOD_MIRROR', 'MOD_SOFT', 'MOD_SUBSURF', 'HOOK', 'MOD_PHYSICS', 'MOD_PARTICLES', 'MOD_BOOLEAN', 'MOD_EDGESPLIT', 'MOD_ARRAY', 'MOD_UVPROJECT', 'MOD_DISPLACE', 'MOD_CURVE', 'MOD_LATTICE', 'MOD_TINT', 'MOD_ARMATURE', 'MOD_SHRINKWRAP', 'MOD_CAST', 'MOD_MESHDEFORM', 'MOD_BEVEL', 'MOD_SMOOTH', 'MOD_SIMPLEDEFORM', 'MOD_MASK', 'MOD_CLOTH', 'MOD_EXPLODE', 'MOD_FLUIDSIM', 'MOD_MULTIRES', 'MOD_SMOKE', 'MOD_SOLIDIFY', 'MOD_SCREW', 'MOD_VERTEX_WEIGHT', 'MOD_DYNAMICPAINT', 'MOD_REMESH', 'MOD_OCEAN', 'MOD_WARP', 'MOD_SKIN', 'MOD_TRIANGULATE', 'MOD_WIREFRAME', 'MOD_DATA_TRANSFER', 'MOD_NORMALEDIT', 'MOD_PARTICLE_INSTANCE', 'MOD_HUE_SATURATION', 'MOD_NOISE', 'MOD_OFFSET', 'MOD_SIMPLIFY', 'MOD_THICKNESS', 'MOD_INSTANCE', 'MOD_TIME', 'MOD_OPACITY', 'REC', 'PLAY', 'FF', 'REW', 'PAUSE', 'PREV_KEYFRAME', 'NEXT_KEYFRAME', 'PLAY_REVERSE', 'PREVIEW_RANGE', 'ACTION_TWEAK', 'PMARKER_ACT', 'PMARKER_SEL', 'PMARKER', 'MARKER_HLT', 'MARKER', 'KEYFRAME_HLT', 'KEYFRAME', 'KEYINGSET', 'KEY_DEHLT', 'KEY_HLT', 'MUTE_IPO_OFF', 'MUTE_IPO_ON', 'VISIBLE_IPO_OFF', 'VISIBLE_IPO_ON', 'DRIVER', 'SOLO_OFF', 'SOLO_ON', 'FRAME_PREV', 'FRAME_NEXT', 'NLA_PUSHDOWN', 'IPO_CONSTANT', 'IPO_LINEAR', 'IPO_BEZIER', 'IPO_SINE', 'IPO_QUAD', 'IPO_CUBIC', 'IPO_QUART', 'IPO_QUINT', 'IPO_EXPO', 'IPO_CIRC', 'IPO_BOUNCE', 'IPO_ELASTIC', 'IPO_BACK', 'IPO_EASE_IN', 'IPO_EASE_OUT', 'IPO_EASE_IN_OUT', 'NORMALIZE_FCURVES', 'VERTEXSEL', 'EDGESEL', 'FACESEL', 'PIVOT_BOUNDBOX', 'PIVOT_CURSOR', 'PIVOT_INDIVIDUAL', 'PIVOT_MEDIAN', 'PIVOT_ACTIVE', 'CENTER_ONLY', 'SMOOTHCURVE', 'SPHERECURVE', 'ROOTCURVE', 'SHARPCURVE', 'LINCURVE', 'NOCURVE', 'RNDCURVE', 'PROP_OFF', 'PROP_ON', 'PROP_CON', 'SCULPT_DYNTOPO', 'PARTICLE_POINT', 'PARTICLE_TIP', 'PARTICLE_PATH', 'SNAP_OFF', 'SNAP_ON', 'SNAP_NORMAL', 'SNAP_GRID', 'SNAP_VERTEX', 'SNAP_EDGE', 'SNAP_FACE', 'SNAP_VOLUME', 'SNAP_INCREMENT', 'STICKY_UVS_LOC', 'STICKY_UVS_DISABLE', 'STICKY_UVS_VERT', 'CLIPUV_DEHLT', 'CLIPUV_HLT', 'SNAP_PEEL_OBJECT', 'GRID', 'OBJECT_ORIGIN', 'ORIENTATION_GLOBAL', 'ORIENTATION_GIMBAL', 'ORIENTATION_LOCAL', 'ORIENTATION_NORMAL', 'ORIENTATION_VIEW', 'COPYDOWN', 'PASTEDOWN', 'PASTEFLIPUP', 'PASTEFLIPDOWN', 'VIS_SEL_11', 'VIS_SEL_10', 'VIS_SEL_01', 'VIS_SEL_00', 'AUTOMERGE_ON', 'AUTOMERGE_OFF', 'UV_VERTEXSEL', 'UV_EDGESEL', 'UV_FACESEL', 'UV_ISLANDSEL', 'UV_SYNC_SELECT', 'NORMALS_VERTEX', 'NORMALS_FACE', 'NORMALS_VERTEX_FACE', 'SHADING_BBOX', 'SHADING_WIRE', 'SHADING_SOLID', 'SHADING_RENDERED', 'SHADING_TEXTURE', 'OVERLAY', 'XRAY', 'LOCKVIEW_OFF', 'LOCKVIEW_ON', 'AXIS_SIDE', 'AXIS_FRONT', 'AXIS_TOP', 'NDOF_DOM', 'NDOF_TURN', 'NDOF_FLY', 'NDOF_TRANS', 'LAYER_USED', 'LAYER_ACTIVE', 'SORTALPHA', 'SORTBYEXT', 'SORTTIME', 'SORTSIZE', 'SHORTDISPLAY', 'LONGDISPLAY', 'IMGDISPLAY', 'BOOKMARKS', 'FONTPREVIEW', 'FILTER', 'NEWFOLDER', 'FILE_PARENT', 'FILE_REFRESH', 'FILE_FOLDER', 'FILE_BLANK', 'FILE_BLEND', 'FILE_IMAGE', 'FILE_MOVIE', 'FILE_SCRIPT', 'FILE_SOUND', 'FILE_FONT', 'FILE_TEXT', 'SORT_DESC', 'SORT_ASC', 'LINK_BLEND', 'APPEND_BLEND', 'IMPORT', 'EXPORT', 'LOOP_BACK', 'LOOP_FORWARDS', 'BACK', 'FORWARD', 'FILE_VOLUME', 'ALEMBIC', 'VOLUME', 'FILE_HIDDEN', 'FILE_BACKUP', 'DISK_DRIVE', 'MATPLANE', 'MATSPHERE', 'MATCUBE', 'MONKEY', 'HAIR', 'ALIASED', 'ANTIALIASED', 'MAT_SPHERE_SKY', 'MATSHADERBALL', 'MATCLOTH', 'MATFLUID', 'WORDWRAP_OFF', 'WORDWRAP_ON', 'SYNTAX_OFF', 'SYNTAX_ON', 'LINENUMBERS_OFF', 'LINENUMBERS_ON', 'SCRIPTPLUGINS', 'SEQ_SEQUENCER', 'SEQ_PREVIEW', 'SEQ_LUMA_WAVEFORM', 'SEQ_CHROMA_SCOPE', 'SEQ_HISTOGRAM', 'SEQ_SPLITVIEW', 'IMAGE_RGB', 'IMAGE_RGB_ALPHA', 'IMAGE_ALPHA', 'IMAGE_ZDEPTH', 'VIEW_PERSPECTIVE', 'VIEW_ORTHO', 'VIEW_CAMERA', 'VIEW_PAN', 'VIEW_ZOOM', 'BRUSH_ADD', 'BRUSH_BLOB', 'BRUSH_BLUR', 'BRUSH_CLAY', 'BRUSH_CLAY_STRIPS', 'BRUSH_CLONE', 'BRUSH_CREASE', 'BRUSH_DARKEN', 'BRUSH_FILL', 'BRUSH_FLATTEN', 'BRUSH_GRAB', 'BRUSH_INFLATE', 'BRUSH_LAYER', 'BRUSH_LIGHTEN', 'BRUSH_MASK', 'BRUSH_MIX', 'BRUSH_MULTIPLY', 'BRUSH_NUDGE', 'BRUSH_PINCH', 'BRUSH_SCRAPE', 'BRUSH_SCULPT_DRAW', 'BRUSH_SMEAR', 'BRUSH_SMOOTH', 'BRUSH_SNAKE_HOOK', 'BRUSH_SOFTEN', 'BRUSH_SUBTRACT', 'BRUSH_TEXDRAW', 'BRUSH_TEXFILL', 'BRUSH_TEXMASK', 'BRUSH_THUMB', 'BRUSH_ROTATE', 'BRUSH_VERTEXDRAW', 'MATCAP_01', 'MATCAP_02', 'MATCAP_03', 'MATCAP_04', 'MATCAP_05', 'MATCAP_06', 'MATCAP_07', 'MATCAP_08', 'MATCAP_09', 'MATCAP_10', 'MATCAP_11', 'MATCAP_12', 'MATCAP_13', 'MATCAP_14', 'MATCAP_15', 'MATCAP_16', 'MATCAP_17', 'MATCAP_18', 'MATCAP_19', 'MATCAP_20', 'MATCAP_21', 'MATCAP_22', 'MATCAP_23', 'MATCAP_24', 'GPBRUSH_SMOOTH', 'GPBRUSH_THICKNESS', 'GPBRUSH_STRENGTH', 'GPBRUSH_GRAB', 'GPBRUSH_PUSH', 'GPBRUSH_TWIST', 'GPBRUSH_PINCH', 'GPBRUSH_RANDOMIZE', 'GPBRUSH_CLONE', 'GPBRUSH_WEIGHT', 'GPBRUSH_PENCIL', 'GPBRUSH_PEN', 'GPBRUSH_INK', 'GPBRUSH_INKNOISE', 'GPBRUSH_BLOCK', 'GPBRUSH_MARKER', 'GPBRUSH_CUSTOM', 'GPBRUSH_FILL', 'GPBRUSH_ERASE_SOFT', 'GPBRUSH_ERASE_HARD', 'GPBRUSH_ERASE_STROKE', 'SMALL_TRI_RIGHT_VEC', 'KEYTYPE_KEYFRAME_VEC', 'KEYTYPE_BREAKDOWN_VEC', 'KEYTYPE_EXTREME_VEC', 'KEYTYPE_JITTER_VEC', 'KEYTYPE_MOVING_HOLD_VEC', 'HANDLETYPE_FREE_VEC', 'HANDLETYPE_ALIGNED_VEC', 'HANDLETYPE_VECTOR_VEC', 'HANDLETYPE_AUTO_VEC', 'HANDLETYPE_AUTO_CLAMP_VEC', 'COLORSET_01_VEC', 'COLORSET_02_VEC', 'COLORSET_03_VEC', 'COLORSET_04_VEC', 'COLORSET_05_VEC', 'COLORSET_06_VEC', 'COLORSET_07_VEC', 'COLORSET_08_VEC', 'COLORSET_09_VEC', 'COLORSET_10_VEC', 'COLORSET_11_VEC', 'COLORSET_12_VEC', 'COLORSET_13_VEC', 'COLORSET_14_VEC', 'COLORSET_15_VEC', 'COLORSET_16_VEC', 'COLORSET_17_VEC', 'COLORSET_18_VEC', 'COLORSET_19_VEC', 'COLORSET_20_VEC', 'EVENT_A', 'EVENT_B', 'EVENT_C', 'EVENT_D', 'EVENT_E', 'EVENT_F', 'EVENT_G', 'EVENT_H', 'EVENT_I', 'EVENT_J', 'EVENT_K', 'EVENT_L', 'EVENT_M', 'EVENT_N', 'EVENT_O', 'EVENT_P', 'EVENT_Q', 'EVENT_R', 'EVENT_S', 'EVENT_T', 'EVENT_U', 'EVENT_V', 'EVENT_W', 'EVENT_X', 'EVENT_Y', 'EVENT_Z', 'EVENT_SHIFT', 'EVENT_CTRL', 'EVENT_ALT', 'EVENT_OS', 'EVENT_F1', 'EVENT_F2', 'EVENT_F3', 'EVENT_F4', 'EVENT_F5', 'EVENT_F6', 'EVENT_F7', 'EVENT_F8', 'EVENT_F9', 'EVENT_F10', 'EVENT_F11', 'EVENT_F12', 'EVENT_ESC', 'EVENT_TAB', 'EVENT_PAGEUP', 'EVENT_PAGEDOWN', 'EVENT_HOME', 'EVENT_END', 'EVENT_RETURN'], (optional)
		
		@returns UIPopupMenu, (never None)
	**/
	static function popmenu_begin__internal(icon:bpy.types.windowmanager.WindowManager.Enum2):bpy.types.uipopupmenu.UIPopupMenu;
	/**
		popmenu_end__internal
	**/
	static function popmenu_end__internal():Void;
	/**
		popover_begin__internal
		@param ui_units_x ui_units_x — int in [0, inf], (optional)
		
		@returns UIPopover, (never None)
	**/
	static function popover_begin__internal(ui_units_x:Int):bpy.types.uipopover.UIPopover;
	/**
		popover_end__internal
		@param keymap Key Map, Active key map — KeyMap, (optional)
	**/
	static function popover_end__internal(keymap:bpy.types.keymap.KeyMap):Void;
	/**
		piemenu_begin__internal
		@param icon icon — enum in ['NONE', 'QUESTION', 'ERROR', 'CANCEL', 'TRIA_RIGHT', 'TRIA_DOWN', 'TRIA_LEFT', 'TRIA_UP', 'ARROW_LEFTRIGHT', 'PLUS', 'DISCLOSURE_TRI_RIGHT', 'DISCLOSURE_TRI_DOWN', 'RADIOBUT_OFF', 'RADIOBUT_ON', 'MENU_PANEL', 'BLENDER', 'GRIP', 'DOT', 'COLLAPSEMENU', 'X', 'DUPLICATE', 'NODE', 'NODE_SEL', 'WINDOW', 'WORKSPACE', 'RIGHTARROW_THIN', 'BORDERMOVE', 'VIEWZOOM', 'ADD', 'REMOVE', 'PANEL_CLOSE', 'COPY_ID', 'EYEDROPPER', 'AUTO', 'CHECKBOX_DEHLT', 'CHECKBOX_HLT', 'UNLOCKED', 'LOCKED', 'UNPINNED', 'PINNED', 'SCREEN_BACK', 'RIGHTARROW', 'DOWNARROW_HLT', 'PLUGIN', 'HELP', 'GHOST_ENABLED', 'COLOR', 'UNLINKED', 'LINKED', 'HAND', 'ZOOM_ALL', 'ZOOM_SELECTED', 'ZOOM_PREVIOUS', 'ZOOM_IN', 'ZOOM_OUT', 'DRIVER_DISTANCE', 'DRIVER_ROTATIONAL_DIFFERENCE', 'DRIVER_TRANSFORM', 'FREEZE', 'STYLUS_PRESSURE', 'GHOST_DISABLED', 'FILE_NEW', 'FILE_TICK', 'QUIT', 'URL', 'RECOVER_LAST', 'THREE_DOTS', 'FULLSCREEN_ENTER', 'FULLSCREEN_EXIT', 'LIGHT', 'MATERIAL', 'TEXTURE', 'ANIM', 'WORLD', 'SCENE', 'OUTPUT', 'SCRIPT', 'PARTICLES', 'PHYSICS', 'SPEAKER', 'TOOL_SETTINGS', 'SHADERFX', 'BLANK1', 'FAKE_USER_OFF', 'FAKE_USER_ON', 'VIEW3D', 'GRAPH', 'OUTLINER', 'PROPERTIES', 'FILEBROWSER', 'IMAGE', 'INFO', 'SEQUENCE', 'TEXT', 'SOUND', 'ACTION', 'NLA', 'PREFERENCES', 'TIME', 'NODETREE', 'CONSOLE', 'CLIP', 'ASSET_MANAGER', 'NODE_COMPOSITING', 'NODE_TEXTURE', 'NODE_MATERIAL', 'OBJECT_DATAMODE', 'EDITMODE_HLT', 'UV', 'VPAINT_HLT', 'TPAINT_HLT', 'WPAINT_HLT', 'SCULPTMODE_HLT', 'POSE_HLT', 'PARTICLEMODE', 'TRACKING', 'TRACKING_BACKWARDS', 'TRACKING_FORWARDS', 'TRACKING_BACKWARDS_SINGLE', 'TRACKING_FORWARDS_SINGLE', 'TRACKING_CLEAR_BACKWARDS', 'TRACKING_CLEAR_FORWARDS', 'TRACKING_REFINE_BACKWARDS', 'TRACKING_REFINE_FORWARDS', 'SCENE_DATA', 'RENDERLAYERS', 'WORLD_DATA', 'OBJECT_DATA', 'MESH_DATA', 'CURVE_DATA', 'META_DATA', 'LATTICE_DATA', 'LIGHT_DATA', 'MATERIAL_DATA', 'TEXTURE_DATA', 'ANIM_DATA', 'CAMERA_DATA', 'PARTICLE_DATA', 'LIBRARY_DATA_DIRECT', 'GROUP', 'ARMATURE_DATA', 'COMMUNITY', 'BONE_DATA', 'CONSTRAINT', 'SHAPEKEY_DATA', 'CONSTRAINT_BONE', 'CAMERA_STEREO', 'PACKAGE', 'UGLYPACKAGE', 'EXPERIMENTAL', 'BRUSH_DATA', 'IMAGE_DATA', 'FILE', 'FCURVE', 'FONT_DATA', 'RENDER_RESULT', 'SURFACE_DATA', 'EMPTY_DATA', 'PRESET', 'RENDER_ANIMATION', 'RENDER_STILL', 'LIBRARY_DATA_BROKEN', 'BOIDS', 'STRANDS', 'LIBRARY_DATA_INDIRECT', 'GREASEPENCIL', 'LINE_DATA', 'LIBRARY_DATA_OVERRIDE', 'GROUP_BONE', 'GROUP_VERTEX', 'GROUP_VCOL', 'GROUP_UVS', 'FACE_MAPS', 'RNA', 'RNA_ADD', 'MOUSE_LMB', 'MOUSE_MMB', 'MOUSE_RMB', 'MOUSE_MOVE', 'MOUSE_LMB_DRAG', 'MOUSE_MMB_DRAG', 'MOUSE_RMB_DRAG', 'PRESET_NEW', 'DECORATE', 'DECORATE_KEYFRAME', 'DECORATE_ANIMATE', 'DECORATE_DRIVER', 'DECORATE_LINKED', 'DECORATE_LIBRARY_OVERRIDE', 'DECORATE_UNLOCKED', 'DECORATE_LOCKED', 'DECORATE_OVERRIDE', 'SEALED', 'HEART', 'ORPHAN_DATA', 'USER', 'SYSTEM', 'SETTINGS', 'OUTLINER_OB_EMPTY', 'OUTLINER_OB_MESH', 'OUTLINER_OB_CURVE', 'OUTLINER_OB_LATTICE', 'OUTLINER_OB_META', 'OUTLINER_OB_LIGHT', 'OUTLINER_OB_CAMERA', 'OUTLINER_OB_ARMATURE', 'OUTLINER_OB_FONT', 'OUTLINER_OB_SURFACE', 'OUTLINER_OB_SPEAKER', 'OUTLINER_OB_FORCE_FIELD', 'OUTLINER_OB_GROUP_INSTANCE', 'OUTLINER_OB_GREASEPENCIL', 'OUTLINER_OB_LIGHTPROBE', 'OUTLINER_OB_IMAGE', 'RESTRICT_COLOR_OFF', 'RESTRICT_COLOR_ON', 'HIDE_ON', 'HIDE_OFF', 'RESTRICT_SELECT_ON', 'RESTRICT_SELECT_OFF', 'RESTRICT_RENDER_ON', 'RESTRICT_RENDER_OFF', 'OUTLINER_DATA_EMPTY', 'OUTLINER_DATA_MESH', 'OUTLINER_DATA_CURVE', 'OUTLINER_DATA_LATTICE', 'OUTLINER_DATA_META', 'OUTLINER_DATA_LIGHT', 'OUTLINER_DATA_CAMERA', 'OUTLINER_DATA_ARMATURE', 'OUTLINER_DATA_FONT', 'OUTLINER_DATA_SURFACE', 'OUTLINER_DATA_SPEAKER', 'OUTLINER_DATA_GREASEPENCIL', 'GP_SELECT_POINTS', 'GP_SELECT_STROKES', 'GP_MULTIFRAME_EDITING', 'GP_ONLY_SELECTED', 'MODIFIER_OFF', 'MODIFIER_ON', 'ONIONSKIN_OFF', 'ONIONSKIN_ON', 'RESTRICT_VIEW_ON', 'RESTRICT_VIEW_OFF', 'MESH_PLANE', 'MESH_CUBE', 'MESH_CIRCLE', 'MESH_UVSPHERE', 'MESH_ICOSPHERE', 'MESH_GRID', 'MESH_MONKEY', 'MESH_CYLINDER', 'MESH_TORUS', 'MESH_CONE', 'MESH_CAPSULE', 'EMPTY_SINGLE_ARROW', 'LIGHT_POINT', 'LIGHT_SUN', 'LIGHT_SPOT', 'LIGHT_HEMI', 'LIGHT_AREA', 'CUBE', 'SPHERE', 'CONE', 'META_PLANE', 'META_CUBE', 'META_BALL', 'META_ELLIPSOID', 'META_CAPSULE', 'SURFACE_NCURVE', 'SURFACE_NCIRCLE', 'SURFACE_NSURFACE', 'SURFACE_NCYLINDER', 'SURFACE_NSPHERE', 'SURFACE_NTORUS', 'EMPTY_AXIS', 'STROKE', 'EMPTY_ARROWS', 'CURVE_BEZCURVE', 'CURVE_BEZCIRCLE', 'CURVE_NCURVE', 'CURVE_NCIRCLE', 'CURVE_PATH', 'LIGHTPROBE_CUBEMAP', 'LIGHTPROBE_PLANAR', 'LIGHTPROBE_GRID', 'COLOR_RED', 'COLOR_GREEN', 'COLOR_BLUE', 'TRIA_RIGHT_BAR', 'TRIA_DOWN_BAR', 'TRIA_LEFT_BAR', 'TRIA_UP_BAR', 'FORCE_FORCE', 'FORCE_WIND', 'FORCE_VORTEX', 'FORCE_MAGNETIC', 'FORCE_HARMONIC', 'FORCE_CHARGE', 'FORCE_LENNARDJONES', 'FORCE_TEXTURE', 'FORCE_CURVE', 'FORCE_BOID', 'FORCE_TURBULENCE', 'FORCE_DRAG', 'FORCE_SMOKEFLOW', 'IMAGE_PLANE', 'IMAGE_BACKGROUND', 'IMAGE_REFERENCE', 'NODE_INSERT_ON', 'NODE_INSERT_OFF', 'NODE_TOP', 'NODE_SIDE', 'NODE_CORNER', 'ALIGN_LEFT', 'ALIGN_CENTER', 'ALIGN_RIGHT', 'ALIGN_JUSTIFY', 'ALIGN_FLUSH', 'ALIGN_TOP', 'ALIGN_MIDDLE', 'ALIGN_BOTTOM', 'BOLD', 'ITALIC', 'UNDERLINE', 'SMALL_CAPS', 'MODIFIER', 'MOD_WAVE', 'MOD_BUILD', 'MOD_DECIM', 'MOD_MIRROR', 'MOD_SOFT', 'MOD_SUBSURF', 'HOOK', 'MOD_PHYSICS', 'MOD_PARTICLES', 'MOD_BOOLEAN', 'MOD_EDGESPLIT', 'MOD_ARRAY', 'MOD_UVPROJECT', 'MOD_DISPLACE', 'MOD_CURVE', 'MOD_LATTICE', 'MOD_TINT', 'MOD_ARMATURE', 'MOD_SHRINKWRAP', 'MOD_CAST', 'MOD_MESHDEFORM', 'MOD_BEVEL', 'MOD_SMOOTH', 'MOD_SIMPLEDEFORM', 'MOD_MASK', 'MOD_CLOTH', 'MOD_EXPLODE', 'MOD_FLUIDSIM', 'MOD_MULTIRES', 'MOD_SMOKE', 'MOD_SOLIDIFY', 'MOD_SCREW', 'MOD_VERTEX_WEIGHT', 'MOD_DYNAMICPAINT', 'MOD_REMESH', 'MOD_OCEAN', 'MOD_WARP', 'MOD_SKIN', 'MOD_TRIANGULATE', 'MOD_WIREFRAME', 'MOD_DATA_TRANSFER', 'MOD_NORMALEDIT', 'MOD_PARTICLE_INSTANCE', 'MOD_HUE_SATURATION', 'MOD_NOISE', 'MOD_OFFSET', 'MOD_SIMPLIFY', 'MOD_THICKNESS', 'MOD_INSTANCE', 'MOD_TIME', 'MOD_OPACITY', 'REC', 'PLAY', 'FF', 'REW', 'PAUSE', 'PREV_KEYFRAME', 'NEXT_KEYFRAME', 'PLAY_REVERSE', 'PREVIEW_RANGE', 'ACTION_TWEAK', 'PMARKER_ACT', 'PMARKER_SEL', 'PMARKER', 'MARKER_HLT', 'MARKER', 'KEYFRAME_HLT', 'KEYFRAME', 'KEYINGSET', 'KEY_DEHLT', 'KEY_HLT', 'MUTE_IPO_OFF', 'MUTE_IPO_ON', 'VISIBLE_IPO_OFF', 'VISIBLE_IPO_ON', 'DRIVER', 'SOLO_OFF', 'SOLO_ON', 'FRAME_PREV', 'FRAME_NEXT', 'NLA_PUSHDOWN', 'IPO_CONSTANT', 'IPO_LINEAR', 'IPO_BEZIER', 'IPO_SINE', 'IPO_QUAD', 'IPO_CUBIC', 'IPO_QUART', 'IPO_QUINT', 'IPO_EXPO', 'IPO_CIRC', 'IPO_BOUNCE', 'IPO_ELASTIC', 'IPO_BACK', 'IPO_EASE_IN', 'IPO_EASE_OUT', 'IPO_EASE_IN_OUT', 'NORMALIZE_FCURVES', 'VERTEXSEL', 'EDGESEL', 'FACESEL', 'PIVOT_BOUNDBOX', 'PIVOT_CURSOR', 'PIVOT_INDIVIDUAL', 'PIVOT_MEDIAN', 'PIVOT_ACTIVE', 'CENTER_ONLY', 'SMOOTHCURVE', 'SPHERECURVE', 'ROOTCURVE', 'SHARPCURVE', 'LINCURVE', 'NOCURVE', 'RNDCURVE', 'PROP_OFF', 'PROP_ON', 'PROP_CON', 'SCULPT_DYNTOPO', 'PARTICLE_POINT', 'PARTICLE_TIP', 'PARTICLE_PATH', 'SNAP_OFF', 'SNAP_ON', 'SNAP_NORMAL', 'SNAP_GRID', 'SNAP_VERTEX', 'SNAP_EDGE', 'SNAP_FACE', 'SNAP_VOLUME', 'SNAP_INCREMENT', 'STICKY_UVS_LOC', 'STICKY_UVS_DISABLE', 'STICKY_UVS_VERT', 'CLIPUV_DEHLT', 'CLIPUV_HLT', 'SNAP_PEEL_OBJECT', 'GRID', 'OBJECT_ORIGIN', 'ORIENTATION_GLOBAL', 'ORIENTATION_GIMBAL', 'ORIENTATION_LOCAL', 'ORIENTATION_NORMAL', 'ORIENTATION_VIEW', 'COPYDOWN', 'PASTEDOWN', 'PASTEFLIPUP', 'PASTEFLIPDOWN', 'VIS_SEL_11', 'VIS_SEL_10', 'VIS_SEL_01', 'VIS_SEL_00', 'AUTOMERGE_ON', 'AUTOMERGE_OFF', 'UV_VERTEXSEL', 'UV_EDGESEL', 'UV_FACESEL', 'UV_ISLANDSEL', 'UV_SYNC_SELECT', 'NORMALS_VERTEX', 'NORMALS_FACE', 'NORMALS_VERTEX_FACE', 'SHADING_BBOX', 'SHADING_WIRE', 'SHADING_SOLID', 'SHADING_RENDERED', 'SHADING_TEXTURE', 'OVERLAY', 'XRAY', 'LOCKVIEW_OFF', 'LOCKVIEW_ON', 'AXIS_SIDE', 'AXIS_FRONT', 'AXIS_TOP', 'NDOF_DOM', 'NDOF_TURN', 'NDOF_FLY', 'NDOF_TRANS', 'LAYER_USED', 'LAYER_ACTIVE', 'SORTALPHA', 'SORTBYEXT', 'SORTTIME', 'SORTSIZE', 'SHORTDISPLAY', 'LONGDISPLAY', 'IMGDISPLAY', 'BOOKMARKS', 'FONTPREVIEW', 'FILTER', 'NEWFOLDER', 'FILE_PARENT', 'FILE_REFRESH', 'FILE_FOLDER', 'FILE_BLANK', 'FILE_BLEND', 'FILE_IMAGE', 'FILE_MOVIE', 'FILE_SCRIPT', 'FILE_SOUND', 'FILE_FONT', 'FILE_TEXT', 'SORT_DESC', 'SORT_ASC', 'LINK_BLEND', 'APPEND_BLEND', 'IMPORT', 'EXPORT', 'LOOP_BACK', 'LOOP_FORWARDS', 'BACK', 'FORWARD', 'FILE_VOLUME', 'ALEMBIC', 'VOLUME', 'FILE_HIDDEN', 'FILE_BACKUP', 'DISK_DRIVE', 'MATPLANE', 'MATSPHERE', 'MATCUBE', 'MONKEY', 'HAIR', 'ALIASED', 'ANTIALIASED', 'MAT_SPHERE_SKY', 'MATSHADERBALL', 'MATCLOTH', 'MATFLUID', 'WORDWRAP_OFF', 'WORDWRAP_ON', 'SYNTAX_OFF', 'SYNTAX_ON', 'LINENUMBERS_OFF', 'LINENUMBERS_ON', 'SCRIPTPLUGINS', 'SEQ_SEQUENCER', 'SEQ_PREVIEW', 'SEQ_LUMA_WAVEFORM', 'SEQ_CHROMA_SCOPE', 'SEQ_HISTOGRAM', 'SEQ_SPLITVIEW', 'IMAGE_RGB', 'IMAGE_RGB_ALPHA', 'IMAGE_ALPHA', 'IMAGE_ZDEPTH', 'VIEW_PERSPECTIVE', 'VIEW_ORTHO', 'VIEW_CAMERA', 'VIEW_PAN', 'VIEW_ZOOM', 'BRUSH_ADD', 'BRUSH_BLOB', 'BRUSH_BLUR', 'BRUSH_CLAY', 'BRUSH_CLAY_STRIPS', 'BRUSH_CLONE', 'BRUSH_CREASE', 'BRUSH_DARKEN', 'BRUSH_FILL', 'BRUSH_FLATTEN', 'BRUSH_GRAB', 'BRUSH_INFLATE', 'BRUSH_LAYER', 'BRUSH_LIGHTEN', 'BRUSH_MASK', 'BRUSH_MIX', 'BRUSH_MULTIPLY', 'BRUSH_NUDGE', 'BRUSH_PINCH', 'BRUSH_SCRAPE', 'BRUSH_SCULPT_DRAW', 'BRUSH_SMEAR', 'BRUSH_SMOOTH', 'BRUSH_SNAKE_HOOK', 'BRUSH_SOFTEN', 'BRUSH_SUBTRACT', 'BRUSH_TEXDRAW', 'BRUSH_TEXFILL', 'BRUSH_TEXMASK', 'BRUSH_THUMB', 'BRUSH_ROTATE', 'BRUSH_VERTEXDRAW', 'MATCAP_01', 'MATCAP_02', 'MATCAP_03', 'MATCAP_04', 'MATCAP_05', 'MATCAP_06', 'MATCAP_07', 'MATCAP_08', 'MATCAP_09', 'MATCAP_10', 'MATCAP_11', 'MATCAP_12', 'MATCAP_13', 'MATCAP_14', 'MATCAP_15', 'MATCAP_16', 'MATCAP_17', 'MATCAP_18', 'MATCAP_19', 'MATCAP_20', 'MATCAP_21', 'MATCAP_22', 'MATCAP_23', 'MATCAP_24', 'GPBRUSH_SMOOTH', 'GPBRUSH_THICKNESS', 'GPBRUSH_STRENGTH', 'GPBRUSH_GRAB', 'GPBRUSH_PUSH', 'GPBRUSH_TWIST', 'GPBRUSH_PINCH', 'GPBRUSH_RANDOMIZE', 'GPBRUSH_CLONE', 'GPBRUSH_WEIGHT', 'GPBRUSH_PENCIL', 'GPBRUSH_PEN', 'GPBRUSH_INK', 'GPBRUSH_INKNOISE', 'GPBRUSH_BLOCK', 'GPBRUSH_MARKER', 'GPBRUSH_CUSTOM', 'GPBRUSH_FILL', 'GPBRUSH_ERASE_SOFT', 'GPBRUSH_ERASE_HARD', 'GPBRUSH_ERASE_STROKE', 'SMALL_TRI_RIGHT_VEC', 'KEYTYPE_KEYFRAME_VEC', 'KEYTYPE_BREAKDOWN_VEC', 'KEYTYPE_EXTREME_VEC', 'KEYTYPE_JITTER_VEC', 'KEYTYPE_MOVING_HOLD_VEC', 'HANDLETYPE_FREE_VEC', 'HANDLETYPE_ALIGNED_VEC', 'HANDLETYPE_VECTOR_VEC', 'HANDLETYPE_AUTO_VEC', 'HANDLETYPE_AUTO_CLAMP_VEC', 'COLORSET_01_VEC', 'COLORSET_02_VEC', 'COLORSET_03_VEC', 'COLORSET_04_VEC', 'COLORSET_05_VEC', 'COLORSET_06_VEC', 'COLORSET_07_VEC', 'COLORSET_08_VEC', 'COLORSET_09_VEC', 'COLORSET_10_VEC', 'COLORSET_11_VEC', 'COLORSET_12_VEC', 'COLORSET_13_VEC', 'COLORSET_14_VEC', 'COLORSET_15_VEC', 'COLORSET_16_VEC', 'COLORSET_17_VEC', 'COLORSET_18_VEC', 'COLORSET_19_VEC', 'COLORSET_20_VEC', 'EVENT_A', 'EVENT_B', 'EVENT_C', 'EVENT_D', 'EVENT_E', 'EVENT_F', 'EVENT_G', 'EVENT_H', 'EVENT_I', 'EVENT_J', 'EVENT_K', 'EVENT_L', 'EVENT_M', 'EVENT_N', 'EVENT_O', 'EVENT_P', 'EVENT_Q', 'EVENT_R', 'EVENT_S', 'EVENT_T', 'EVENT_U', 'EVENT_V', 'EVENT_W', 'EVENT_X', 'EVENT_Y', 'EVENT_Z', 'EVENT_SHIFT', 'EVENT_CTRL', 'EVENT_ALT', 'EVENT_OS', 'EVENT_F1', 'EVENT_F2', 'EVENT_F3', 'EVENT_F4', 'EVENT_F5', 'EVENT_F6', 'EVENT_F7', 'EVENT_F8', 'EVENT_F9', 'EVENT_F10', 'EVENT_F11', 'EVENT_F12', 'EVENT_ESC', 'EVENT_TAB', 'EVENT_PAGEUP', 'EVENT_PAGEDOWN', 'EVENT_HOME', 'EVENT_END', 'EVENT_RETURN'], (optional)
		
		@returns UIPieMenu, (never None)
	**/
	static function piemenu_begin__internal(icon:bpy.types.windowmanager.WindowManager.Enum3):bpy.types.uipiemenu.UIPieMenu;
	/**
		piemenu_end__internal
	**/
	static function piemenu_end__internal():Void;
	/**
		operator_properties_last
		
		@returns OperatorProperties, (never None)
	**/
	static function operator_properties_last():bpy.types.operatorproperties.OperatorProperties;
	function popover():Void;
	/**
		Popup menus can be useful for creating menus without having to register menu classes.
		
		Note that they will not block the scripts execution, so the caller can’t wait for user input.
	**/
	function popup_menu():Void;
	function popup_menu_pie():Void;
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
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function draw_cursor_add():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function draw_cursor_remove():Void;
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